include: "account_fact.view"
include: "recent_changes.view"

explore: bing_campaign_date_fact {
  persist_with: bing_ads_etl_datagroup
  extends: [bing_account_date_fact]
  from: bing_campaign_date_fact
  view_name: fact
  label: "Campaign This Period"
  view_label: "Campaign This Period"
  join: last_fact {
    from: bing_campaign_date_fact
    view_label: "Campaign Prior Period"
    sql_on: ${fact.account_id} = ${last_fact.account_id} AND
      ${fact.campaign_id} = ${last_fact.campaign_id} AND
      ${fact.date_last_period} = ${last_fact.date_period} AND
      ${fact.date_day_of_period} = ${last_fact.date_day_of_period} ;;
  }
  join: parent_fact {
    view_label: "Customer This Period"
    from: bing_account_date_fact
    sql_on: ${fact.account_id} = ${parent_fact.account_id} AND
      ${fact.date_date} = ${parent_fact.date_date};;
    relationship: many_to_one
  }
}

view: bing_campaign_key_base {
  extends: [bing_account_key_base]
  extension: required

  dimension: campaign_key_base {
    hidden: yes
    sql: CONCAT(${account_key_base}, "-", CAST(${campaign_id} as STRING)) ;;
  }
  dimension: key_base {
    hidden: yes
    sql: ${campaign_key_base} ;;
  }
}

view: bing_campaign_date_fact {
  extends: [ad_metrics_parent_comparison_base, bing_account_date_fact, bing_campaign_key_base]

  derived_table: {
    datagroup_trigger: bing_ads_etl_datagroup
    explore_source: bing_ad_impressions_campaign {
      column: _date { field: fact.date_date }
      column: account_id { field: fact.account_id }
      column: campaign_id {field: fact.campaign_id}
      column: average_position {field: fact.weighted_average_position}
      column: clicks {field: fact.total_clicks }
      column: conversions {field: fact.total_conversions}
      column: revenue {field: fact.total_conversionvalue}
      column: spend {field: fact.total_cost}
      column: impressions { field: fact.total_impressions}
    }
  }
  dimension: campaign_id {
    hidden: yes
  }
  set: detail {
    fields: [account_id, campaign_id]
  }
}
