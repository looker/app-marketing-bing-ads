include: "ad_group_fact.view"
include: "recent_changes.view"

explore: bing_keyword_date_fact {
  persist_with: bing_ads_etl_datagroup
  extends: [ad_group_date_fact]
  from: keyword_date_fact
  view_name: fact
  label: "Keyword This Period"
  view_label: "Keyword This Period"
  join: last_fact {
    from: bing_keyword_date_fact
    view_label: "Keyword Prior Period"
    sql_on: ${fact.account_id} = ${last_fact.account_id} AND
              ${fact.campaign_id} = ${last_fact.campaign_id} AND
              ${fact.ad_group_id} = ${last_fact.ad_group_id} AND
              ${fact.keyword_id} = ${last_fact.keyword_id} AND
              ${fact.date_last_period} = ${last_fact.date_period} AND
              ${fact.date_day_of_period} = ${last_fact.date_day_of_period} ;;
    relationship: one_to_one
  }
  join: parent_fact {
    from: bing_ad_group_date_fact
    view_label: "Ad Group Prior Period"
    sql_on: ${fact.account_id} = ${parent_fact.account_id} AND
              ${fact.campaign_id} = ${parent_fact.campaign_id} AND
              ${fact.ad_group_id} = ${parent_fact.ad_group_id} AND
              ${fact.date_date} = ${parent_fact.date_date} ;;
    relationship: one_to_one
  }
  join: keyword {
    from: bing_keyword_adapter
    view_label: "Keyword"
    sql_on: ${fact.account_id} = ${keyword.account_id} AND
              ${fact.campaign_id} = ${keyword.campaign_id} AND
              ${fact.ad_group_id} = ${keyword.ad_group_id} AND
              ${fact.keyword_id} = ${keyword.keyword_id} AND
              ${fact._date} = ${keyword._date} ;;
    relationship: many_to_one
  }
  join: status_changes {
    from: bing_status_changes
    view_label: "Keywords"
    sql_on: ${fact.account_id} = ${status_changes.account_id} AND
              ${fact.campaign_id} = ${status_changes.campaign_id} AND
              ${fact.ad_group_id} = ${status_changes.ad_group_id} AND
              ${fact.keyword_id} = ${status_changes.keyword_id} AND
              ${fact.date_date} = ${status_changes.date_date} ;;
    relationship: one_to_many
  }
}

view: bing_keyword_key_base {
  extends: [bing_ad_group_key_base]
  extension: required

  dimension: ad_key_base {
    hidden: yes
    sql: CONCAT(${ad_group_key_base}, "-", CAST(${keyword_id} as STRING)) ;;
  }
  dimension: key_base {
    sql: ${ad_key_base} ;;
  }
}


view: bing_keyword_date_fact {
  extends: [bing_keyword_key_base, bing_ad_group_date_fact]

  derived_table: {
    datagroup_trigger: bing_ads_etl_datagroup
    explore_source: bing_ad_impressions_keyword {
      column: _date { field: fact.date_date }
      column: account_id { field: fact.account_id }
      column: campaign_id {field: fact.campaign_id}
      column: ad_group_id {field: fact.ad_group_id}
      column: keyword_id {field: fact.keyword_id}
      column: averageposition {field: fact.weighted_average_position}
      column: clicks {field: fact.total_clicks }
      column: conversions {field: fact.total_conversions}
      column: conversionvalue {field: fact.total_conversionvalue}
      column: cost {field: fact.total_cost}
      column: impressions { field: fact.total_impressions}
    }
  }
  dimension: keyword_id {
    hidden: yes
  }
  set: detail {
    fields: [account_id, campaign_id, ad_group_id, keyword_id]
  }
}
