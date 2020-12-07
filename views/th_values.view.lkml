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
      year
    ]
    sql: ${TABLE}.timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
