include: "campaign_fact.view"
include: "recent_changes.view"

explore: bing_ad_group_date_fact {
  persist_with: bing_ads_etl_datagroup
  extends: [bing_campaign_date_fact]
  from: bing_ad_group_date_fact
  view_name: fact
  label: "Ad Group This Period"
  view_label: "Ad Group This Period"
  join: last_fact {
    from: bing_ad_group_date_fact
    view_label: "Ad Group Last Period"
    sql_on: ${fact.account_id} = ${last_fact.account_id} AND
      ${fact.campaign_id} = ${last_fact.campaign_id} AND
      ${fact.ad_group_id} = ${last_fact.ad_group_id} AND
      ${fact.date_last_period} = ${last_fact.date_period} AND
      ${fact.date_day_of_period} = ${last_fact.date_day_of_period} ;;
    relationship: one_to_one
  }
  join: parent_fact {
    from: bing_campaign_date_fact
    view_label: "Campaign This Period"
    sql_on: ${fact.account_id} = ${parent_fact.account_id} AND
      ${fact.campaign_id} = ${parent_fact.campaign_id} AND
      ${fact.date_date} = ${parent_fact.date_date} ;;
    relationship: many_to_one
  }
  join: ad_group {
    from: bing_ad_group_adapter
    view_label: "Ad Group"
    sql_on: ${fact.ad_group_id} = ${ad_group.ad_group_id} AND
      ${fact.campaign_id} = ${ad_group.campaign_id} AND
      ${fact.account_id} = ${ad_group.account_id} AND
      ${fact._date} = ${ad_group._date}  ;;
    relationship: many_to_one
  }
  join: status_changes {
    from: bing_status_changes
    sql_on: ${fact.account_id} = ${status_changes.account_id} AND
      ${fact.campaign_id} = ${status_changes.campaign_id} AND
      ${fact.ad_group_id} = ${status_changes.ad_group_id} AND
      ${fact.date_date} = ${status_changes.date_date} ;;
    relationship: one_to_many
  }
}

view: bing_ad_group_key_base {
  extends: [bing_campaign_key_base]
  extension: required

  dimension: ad_group_key_base {
    hidden: yes
    sql: CONCAT(${campaign_key_base}, "-", CAST(${ad_group_id} as STRING)) ;;
  }
  dimension: key_base {
    hidden: yes
    sql: ${ad_group_key_base} ;;
  }
}

view: bing_ad_group_date_fact {
  extends: [bing_campaign_date_fact, bing_ad_group_key_base]

  derived_table: {
    datagroup_trigger: bing_ads_etl_datagroup
    explore_source: bing_ad_impressions_ad_group {
      column: _date { field: fact.date_date }
      column: account_id { field: fact.account_id }
      column: campaign_id {field: fact.campaign_id}
      column: ad_group_id {field: fact.ad_group_id}
      column: averageposition {field: fact.weighted_average_position}
      column: clicks {field: fact.total_clicks }
      column: conversions {field: fact.total_conversions}
      column: conversionvalue {field: fact.total_conversionvalue}
      column: cost {field: fact.total_cost}
      column: impressions { field: fact.total_impressions}
    }
  }
  dimension: ad_group_id {
    hidden: yes
  }
  set: detail {
    fields: [account_id, campaign_id, ad_group_id]
  }
}
