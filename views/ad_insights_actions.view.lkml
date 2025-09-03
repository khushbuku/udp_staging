view: ad_insights_actions {
  sql_table_name: `PacingDashData.AdInsightsActions` ;;

  dimension_group: __partitiondate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.__Partitiondate ;;
  }
  dimension: action1d_click {
    type: string
    sql: ${TABLE}.Action1dClick ;;
  }
  dimension: action1d_view {
    type: string
    sql: ${TABLE}.Action1dView ;;
  }
  dimension: action28d_click {
    type: string
    sql: ${TABLE}.Action28dClick ;;
  }
  dimension: action28d_view {
    type: string
    sql: ${TABLE}.Action28dView ;;
  }
  dimension: action7d_click {
    type: string
    sql: ${TABLE}.Action7dClick ;;
  }
  dimension: action7d_view {
    type: string
    sql: ${TABLE}.Action7dView ;;
  }
  dimension: action_attribution_windows {
    type: string
    sql: ${TABLE}.ActionAttributionWindows ;;
  }
  dimension: action_collection {
    type: string
    sql: ${TABLE}.ActionCollection ;;
  }
  dimension: action_converted_product_id {
    type: string
    sql: ${TABLE}.ActionConvertedProductId ;;
  }
  dimension: action_dda {
    type: string
    sql: ${TABLE}.ActionDDA ;;
  }
  dimension: action_value {
    type: number
    sql: ${TABLE}.ActionValue ;;
  }
  dimension: ad_account_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.AdAccountId ;;
  }
  dimension: ad_account_name {
    type: string
    sql: ${TABLE}.AdAccountName ;;
  }
  dimension: ad_effective_status {
    type: string
    sql: ${TABLE}.AdEffectiveStatus ;;
  }
  dimension: ad_id {
    type: string
    sql: ${TABLE}.AdId ;;
  }
  dimension: ad_name {
    type: string
    sql: ${TABLE}.AdName ;;
  }
  dimension: ad_set_id {
    type: string
    sql: ${TABLE}.AdSetId ;;
  }
  dimension: ad_set_name {
    type: string
    sql: ${TABLE}.AdSetName ;;
  }
  dimension: campaign_id {
    type: string
    sql: ${TABLE}.CampaignId ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CampaignName ;;
  }
  dimension_group: date_end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DateEnd ;;
  }
  dimension: date_preset {
    type: string
    sql: ${TABLE}.DatePreset ;;
  }
  dimension_group: date_start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DateStart ;;
  }
  dimension: level {
    type: string
    sql: ${TABLE}.Level ;;
  }
  dimension: target {
    type: string
    sql: ${TABLE}.Target ;;
  }
  dimension: time_increment {
    type: string
    sql: ${TABLE}.TimeIncrement ;;
  }
  dimension: use_async {
    type: yesno
    sql: ${TABLE}.UseAsync ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	campaign_name,
	ad_set_name,
	ad_account_name,
	ad_name,
	ad_accounts.created_time,
	ad_accounts.name,
	ad_accounts.id,
	ad_accounts.business_name,
	ad_accounts.timezone_name
	]
  }

}
