view: bing_ad_metrics_base {

  dimension: assists {
    type: number
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
