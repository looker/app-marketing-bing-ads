view: bing_ad_metrics_base_template {
  extension: required
  extends: [ad_metrics_base]

  dimension: average_position {
    type: number
    hidden:  yes
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

  measure: weighted_average_position {
    label: "Average Position"
    description: "Average auction position."
    type: number
    sql: SUM(${average_position}*${impressions}) / NULLIF(${total_impressions},0) ;;
    value_format_name: decimal_1
  }
}
