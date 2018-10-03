view: bing_ad_metrics_base_template {
  extension: required
  extends: [google_ad_metrics_base]

  dimension: average_position {
    type: number
    sql: ${TABLE}.average_position ;;
  }

  dimension: conversionvalue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.spend ;;
  }
}
