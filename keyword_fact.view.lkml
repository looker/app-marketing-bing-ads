include: "ad_group_fact.view"

explore: bing_keyword_date_fact {
  persist_with: bing_ads_etl_datagroup
  extends: [bing_ad_group_date_fact]
  from: bing_keyword_date_fact
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
      column: keyword {field: fact.keyword}
      column: bid_strategy_type {field: fact.bid_strategy_type}
      column: final_url {field: fact.final_url}
      column: average_position {field: fact.weighted_average_position}
      column: clicks {field: fact.total_clicks }
      column: conversions {field: fact.total_conversions}
      column: revenue {field: fact.total_conversionvalue}
      column: spend {field: fact.total_cost}
      column: impressions { field: fact.total_impressions}
    }
  }
  dimension: keyword_id {
    hidden: yes
  }

  dimension: keyword {
  }

  dimension: final_url {
  }

  dimension: bid_strategy_type {
  }
  set: detail {
    fields: [account_id, campaign_id, ad_group_id, keyword_id]
  }
}
