view: dept_manager {
  sql_table_name: employees.dept_manager ;;

  dimension: dept_no {
    type: string
    sql: ${TABLE}.dept_no ;;
  }

  dimension: emp_no {
    type: number
    sql: ${TABLE}.emp_no ;;
  }

  dimension_group: from {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.from_date ;;
  }

  dimension_group: to {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.to_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
