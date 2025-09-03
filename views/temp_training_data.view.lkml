view: temp_training_data {
  sql_table_name: `PacingDashData.temp_training_data` ;;

  dimension: ad_source {
    type: string
    sql: ${TABLE}.ad_source ;;
  }
  dimension_group: partition_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.partition_date_date ;;
  }
  dimension: total_revenue {
    type: number
    sql: ${TABLE}.total_revenue ;;
  }
  measure: count {
    type: count
  }
}
