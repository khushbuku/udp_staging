view: campaigns_info {
  sql_table_name: `PacingDashData.campaigns_info` ;;

  dimension: campaigns_info_campaign_name {
    type: string
    sql: ${TABLE}.campaigns_info_campaign_name ;;
  }
  dimension_group: campaigns_info_date_end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.campaigns_info_date_end ;;
  }
  dimension_group: campaigns_info_date_start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.campaigns_info_date_start ;;
  }
  dimension: campaigns_info_goal {
    type: number
    sql: ${TABLE}.campaigns_info_goal ;;
  }
  dimension: campaigns_info_goal_type {
    type: string
    sql: ${TABLE}.campaigns_info_goal_type ;;
  }
  measure: count {
    type: count
    drill_fields: [campaigns_info_campaign_name]
  }
}
