view: campaing_test {
  sql_table_name: `PacingDashData.campaing_test` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }
  dimension: age_group {
    type: string
    sql: ${TABLE}.age_group ;;
  }
  dimension: audience_name {
    type: string
    sql: ${TABLE}.audience_name ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: column_1 {
    type: number
    sql: ${TABLE}.Column_1 ;;
  }
  dimension: column_2 {
    type: number
    sql: ${TABLE}.Column_2 ;;
  }
  dimension: demographic {
    type: string
    sql: ${TABLE}.demographic ;;
  }
  dimension_group: end {
    type: time
    description: "%E4Y-%m-%d"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.end_date ;;
  }
  dimension: geographic {
    type: string
    sql: ${TABLE}.geographic ;;
  }
  dimension: goal_type {
    type: string
    sql: ${TABLE}.goal_type ;;
  }
  dimension: goal_value {
    type: number
    sql: ${TABLE}.goal_value ;;
  }
  dimension: phase {
    type: string
    sql: ${TABLE}.phase ;;
  }
  dimension: plan_name {
    type: string
    sql: ${TABLE}.plan_name ;;
  }
  dimension_group: start {
    type: time
    description: "%E4Y-%m-%d"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_date ;;
  }
  measure: count {
    type: count
    drill_fields: [id, plan_name, campaign_name, audience_name]
  }
}
