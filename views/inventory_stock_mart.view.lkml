view: inventory_stock_mart {
  derived_table: {
    sql:
      SELECT * FROM `glife-data-science.novitee_analysis.inventory_stock_mart`
      WHERE {% condition outlet_name_filter%} outletName {% endcondition %}
      AND {% condition stock_name_filter%} name {% endcondition %}
      ;;
  }

  filter: outlet_name_filter {
    type: string
    suggest_explore: purchase_order
    suggest_dimension: outlet_name
  }

  filter: stock_name_filter {
    type: string
    suggest_explore: purchase_order
    suggest_dimension: name
  }

  # sql_table_name: `glife-data-science.novitee_analysis.inventory_stock_mart` ;;

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }
  dimension: outlet_name {
    type: string
    sql: ${TABLE}.outletName ;;
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
  dimension: ratio {
    type: number
    sql: ${TABLE}.ratio ;;
  }
  dimension: avg_stock {
    type: number
    sql: ${TABLE}.avg_stock ;;
  }
  dimension_group: trans_start_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.transStartDate ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }

}
