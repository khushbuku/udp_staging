# connection: "bq-looker-marketplace"

# include all the views
include: "/views/**/*.view.lkml"

include: "//udp_dev/models/udp_dev.model.lkml"

datagroup: udp_staging_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: udp_staging_default_datagroup

explore: campaigns_info {}

explore: campaing_test {}

explore: ad_accounts {}

explore: temp_training_data {}

explore: ad_insights_actions {
  join: ad_accounts {
    type: left_outer
    sql_on: ${ad_insights_actions.ad_account_id} = ${ad_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: campaigns_information {}

explore: ad_insights {
  join: ad_accounts {
    type: left_outer
    sql_on: ${ad_insights.ad_account_id} = ${ad_accounts.id} ;;
    relationship: many_to_one
  }
}

# explore: 5_accounts {}

explore: test_campaigns {}

explore: training_cte {}

# explore: postcodedev {}
