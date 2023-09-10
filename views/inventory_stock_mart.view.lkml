view: inventory_stock_mart {
  sql_table_name: `glife-data-science.novitee_analysis.inventory_stock_mart` ;;

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }
  dimension: grand_total {
    type: number
    sql: ${TABLE}.grand_total ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: stock_grand_in {
    type: number
    sql: ${TABLE}.stock_grand_in ;;
  }
  dimension: stock_grand_out {
    type: number
    sql: ${TABLE}.stock_grand_out ;;
  }
  dimension: stock_in {
    type: number
    sql: ${TABLE}.stock_in ;;
  }
  dimension: stock_out {
    type: number
    sql: ${TABLE}.stock_out ;;
  }
  dimension_group: trans_start_month {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.transStartMonth ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
