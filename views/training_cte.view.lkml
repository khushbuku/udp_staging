view: training_cte {
  sql_table_name: `PacingDashData.training_cte` ;;

  dimension: ad_source {
    type: string
    sql: ${TABLE}.ad_source ;;
  }
  dimension_group: partition_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
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
