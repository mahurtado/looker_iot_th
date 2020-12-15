view: th_values {
  sql_table_name: `sensor_th.th_values`
    ;;

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: humidity {
    type: number
    sql: ${TABLE}.humidity ;;
  }

  dimension: temperature {
    type: number
    sql: ${TABLE}.temperature ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      hour_of_day,
      day_of_week,
      minute5,
      hour
    ]
    sql: ${TABLE}.timestamp ;;
    drill_fields: [timestamp_date, timestamp_hour, timestamp_minute5, timestamp_time]
  }

  measure: avg_temperature {
    type: average
    sql: ${temperature};;
  }

  measure: avg_humidity {
    type: average
    sql: ${humidity};;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
