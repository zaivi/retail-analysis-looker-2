view: purchase_order_amount_forecast {
  sql_table_name: `glife-data-science.novitee_analysis.v_purchase_order_amount_forecast` ;;

  dimension_group: order {
  type: time
  timeframes: [raw, date, week, month, quarter, year]
  convert_tz: no
  datatype: date
  sql: ${TABLE}.creationDate ;;
 }
  measure: purchase_order_amount{
    type: sum
    sql: ${TABLE}.grandTotal ;;
  }
}
