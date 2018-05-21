view: pdt {
  derived_table: {
      sql:
        SELECT *
        FROM link ;;
      sql_trigger_value: SELECT COUNT(*) FROM link;;
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: rel {
    type: string
    sql: ${TABLE}.rel ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
