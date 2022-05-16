view: dept_emp_latest_date {
  sql_table_name: employees.dept_emp_latest_date ;;

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
