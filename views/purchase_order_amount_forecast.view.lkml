view: purchase_order_amount_forecast {
  sql_table_name: `glife-data-science.novitee_analysis.v_purchase_order_amount_forecast` ;;

  dimension_group: order {
  type: time
  timeframes: [raw, date, week, month, quarter, year]
  convert_tz: no
  datatype: date
  sql: ${TABLE}.creationDate ;;
 }

dimension: forecast_type {
    type: string
    sql: ${TABLE}.time_series_type ;;
  }
  measure: purchase_order_amount{
    type: sum
    sql: ${TABLE}.grandTotal ;;
  }
}
