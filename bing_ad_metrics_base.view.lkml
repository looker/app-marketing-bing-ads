view: bing_ad_metrics_base_template {
  extension: required
  extends: [ad_metrics_base]

  dimension: average_position {
    type: number
    sql: ${TABLE}.average_position ;;
  }

  dimension: conversionvalue {
    type: number
    sql: ${TABLE}.revenue;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.spend ;;
  }

  measure: total_interactions {
    hidden: yes
  }

  measure: average_interaction_rate {
    hidden: yes
  }

  measure: average_cost_per_interaction {
    hidden: yes
  }
}
