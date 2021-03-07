connection: "bq_mh_iot_demo_th_sensor"

# include all the views
include: "/views/**/*.view"

datagroup: mh_iot_sensor_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: mh_iot_sensor_default_datagroup

explore: th_values {}
