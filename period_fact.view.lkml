include: "bing_ad_metrics_base.view"
include: "date_fact.view"

explore: bing_period_fact {
  persist_with: bing_ads_etl_datagroup
  hidden: yes
  from: bing_period_fact
  view_name: fact
  label: "Bing Period Comparison"
  view_label: "This Period"

  join: account {
    from: bing_account
    view_label: "Account"
    type: left_outer
    sql_on: ${fact.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: campaign {
    from: bing_campaign
    view_label: "Campaign"
    type: left_outer
    sql_on: ${fact.campaign_id} = ${campaign.campaign_id} ;;
    relationship: many_to_one
  }

  join: ad_group {
    from: bing_ad_group
    view_label: "Ad Group"
    type: left_outer
    sql_on: ${fact.ad_group_id} = ${ad_group.ad_group_id} ;;
    relationship: many_to_one
  }

  join: ad {
    from: bing_ad
    view_label: "Ad"
    type: left_outer
    sql_on: ${fact.ad_id} = ${ad.ad_id} ;;
    relationship: many_to_one
  }

  join: keyword {
    from: bing_keyword
    view_label: "Keyword"
    type: left_outer
    sql_on: ${fact.keyword_id} = ${keyword.keyword_id} ;;
    relationship: many_to_one
  }


  join: last_fact {
    from: bing_period_fact
    view_label: "Prior Period"
    sql_on:
      ${fact.date_last_period} = ${last_fact.date_period}
      AND ${fact.date_day_of_period} = ${last_fact.date_day_of_period}
      {% if (fact.ad_id._in_query) %}
        AND ${fact.ad_id} = ${last_fact.ad_id}
      {% elsif (fact.keyword_id._in_query) %}
        AND ${fact.keyword_id} = ${last_fact.keyword_id}
      {% elsif (fact.ad_group_id._in_query) or (fact.ad_id._in_query) or (fact.keyword_id._in_query) %}
        AND ${fact.ad_group_id} = ${last_fact.ad_group_id}
      {% elsif (fact.campaign_id._in_query) or (fact.ad_group_id._in_query) or (fact.ad_id._in_query) or (fact.keyword_id._in_query) %}
        AND ${fact.campaign_id} = ${last_fact.campaign_id}
      {% endif %}
      AND ${fact.account_id} = ${last_fact.account_id} ;;
    relationship: one_to_one
  }
  join: parent_fact {
    from: bing_period_fact
    view_label: "Parent This Period"
    sql_on:
      ${fact.date_period} = ${parent_fact.date_period}
      AND ${fact.date_day_of_period} = ${last_fact.date_day_of_period}
      {% if (fact.ad_id._in_query) or (fact.keyword_id._in_query) %}
        AND ${fact.ad_group_id} = ${parent_fact.ad_group_id}
      {% endif %}
      {% if (fact.ad_group_id._in_query) or (fact.ad_id._in_query) or (fact.keyword_id._in_query) %}
        AND ${fact.campaign_id} = ${parent_fact.campaign_id}
      {% endif %}
      {% if (fact.campaign_id._in_query) or (fact.ad_group_id._in_query) or (fact.ad_id._in_query) or (fact.keyword_id._in_query) %}
        AND ${fact.account_id} = ${parent_fact.account_id}
      {% endif %} ;;
    relationship: many_to_one
  }
  join: total {
    from: bing_date_fact
    view_label: "Total This Period"
    sql_on: ${fact.date_period} = ${total.date_period} ;;
    relationship: many_to_one
  }
  join: last_total {
    from: bing_date_fact
    view_label: "Total Last Period"
    sql_on: ${fact.date_last_period} = ${total.date_period} ;;
    relationship: many_to_one
  }
}

view: bing_period_fact {
  extends: [date_base, period_base, ad_metrics_period_comparison_base, ad_metrics_weighted_period_comparison_base, ad_metrics_parent_comparison_base, bing_ad_metrics_base]

  dimension: account_id {
    hidden: yes
  }
  dimension: campaign_id {
    hidden: yes
  }
  dimension: ad_group_id {
    hidden: yes
  }
  dimension: ad_id {
    hidden: yes
  }
  dimension: keyword_id {
    hidden: yes
  }
  dimension: _date {
    type: date_raw
  }

  sql_table_name:
  {% if (fact.ad_id._in_query) %}
    ${bing_ad_date_fact.SQL_TABLE_NAME}
  {% elsif (fact.keyword_id._in_query) %}
    ${bing_keyword_date_fact.SQL_TABLE_NAME}
  {% elsif (fact.ad_group_id._in_query) %}
    ${bing_ad_group_date_fact.SQL_TABLE_NAME}
  {% elsif (fact.campaign_id._in_query) %}
    ${bing_campaign_date_fact.SQL_TABLE_NAME}
  {% else %}
    ${bing_account_date_fact.SQL_TABLE_NAME}
  {% endif %} ;;

  dimension: key_base {
    hidden: yes
    sql:
     {% if _dialect._name == 'snowflake' %}
        TO_CHAR(${account_id})
          {% if ( campaign._in_query or fact.campaign_id._in_query or ad_group._in_query or fact.ad_group_id._in_query or ad._in_query or fact.ad_id._in_query or keyword._in_query or fact.keyword_id._in_query %}
            || '-' || TO_CHAR(${campaign_id})
          {% endif %}
          {% if (ad_group._in_query or fact.ad_group_id._in_query or ad._in_query or fact.ad_id._in_query or keyword._in_query or fact.keyword_id._in_query) %}
            || '-' || TO_CHAR(${ad_group_id})
          {% endif %}
          {% if (ad._in_query or fact.ad_id._in_query) %}
            || '-' || TO_CHAR(${ad_id})
          {% elsif (keyword._in_query or fact.keyword_id._in_query) %}
            || '-' || TO_CHAR(${keyword_id})
          {% endif %}
      {% elsif _dialect._name == 'redshift' %}
        CAST(${account_id} AS VARCHAR)
          {% if ( campaign._in_query or fact.campaign_id._in_query or ad_group._in_query or fact.ad_group_id._in_query or ad._in_query or fact.ad_id._in_query or keyword._in_query or fact.keyword_id._in_query) %}
            || '-' || CAST(${campaign_id} AS VARCHAR)
          {% endif %}
          {% if (ad_group._in_query or fact.ad_group_id._in_query or ad._in_query or fact.ad_id._in_query or keyword._in_query or fact.keyword_id._in_query) %}
            || '-' || CAST(${ad_group_id} AS VARCHAR)
          {% endif %}
          {% if (ad._in_query or fact.ad_id._in_query) %}
            '-' || CAST(${ad_id} AS VARCHAR)
          {% elsif (keyword._in_query or fact.keyword_id._in_query) %}
            || '-' || CAST(${keyword_id} AS VARCHAR)
          {% endif %}
      {% else %}
        CONCAT(
        CAST(${account_id} AS STRING)
          {% if (campaign._in_query or fact.campaign_id._in_query or ad_group._in_query or fact.ad_group_id._in_query or ad._in_query or fact.ad_id._in_query or keyword._in_query or fact.keyword_id._in_query) %}
            ,"-", CAST(${campaign_id} AS STRING)
          {% endif %}
          {% if (ad_group._in_query or fact.ad_group_id._in_query or ad._in_query or fact.ad_id._in_query or keyword._in_query or fact.keyword_id._in_query) %}
            ,"-", CAST(${ad_group_id} AS STRING)
          {% endif %}
          {% if (ad._in_query or fact.ad_id._in_query) %}
            ,"-", CAST(${ad_id} AS STRING)
          {% elsif (keyword._in_query or fact.keyword_id._in_query) %}
            ,"-", CAST(${keyword_id} AS STRING)
          {% endif %}
        )
        {% endif %};;
  }
  dimension: primary_key {
    primary_key: yes
    hidden: yes
    sql:
      {% if _dialect._name == 'snowflake' %}
        TO_CHAR(${date_period}) || '-' || TO_CHAR(${date_day_of_period}) || '-' ||  ${key_base}
      {% elsif _dialect._name == 'redshift' %}
        CAST(${date_period} as STRING) || '-' || CAST(${date_day_of_period} as STRING) || '-' ||  ${key_base}
      {% else %}
        concat(CAST(${date_period} as STRING), CAST(${date_day_of_period} as STRING), ${key_base})
      {% endif %} ;;
  }
}
