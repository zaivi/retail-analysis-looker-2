view: purchase_order {
  # sql_table_name: `glife-data-science.novitee_analysis.purchase_order_deduplicate` ;;

  derived_table: {
    sql:
      SELECT * FROM `glife-data-science.novitee_analysis.purchase_order_deduplicate`
      WHERE {% condition outlet_name_filter%} outletName {% endcondition %}
      AND {% condition stock_name_filter%} stockName {% endcondition %}
      AND {% condition order_date_filter%} creationDate {% endcondition %}
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
    suggest_dimension: stock_name
  }

  filter: order_date_filter {
    type: date
    datatype: date
    suggest_explore: purchase_order
    suggest_dimension: order_date
  }

  dimension_group: order {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.creationDate ;;
  }
  dimension_group: delivery {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deliveryDate ;;
  }
  dimension: grand_total {
    type: number
    sql: ${TABLE}.grandTotal ;;
  }
  dimension: order_remarks {
    type: string
    sql: ${TABLE}.orderRemarks ;;
  }
  dimension: ordered_qty {
    type: number
    sql: ${TABLE}.orderedQty ;;
  }
  dimension: outlet_code {
    type: string
    sql: ${TABLE}.outletCode ;;
  }
  dimension: outlet_name {
    type: string
    sql: ${TABLE}.outletName ;;
  }
  dimension: packaging_uom {
    type: string
    sql: ${TABLE}.packagingUOM ;;
  }
  dimension: po_number {
    type: string
    sql: ${TABLE}.poNumber ;;
  }
  dimension: purchase_uom {
    type: string
    sql: ${TABLE}.purchaseUOM ;;
  }
  dimension: receiving_qty {
    type: number
    sql: ${TABLE}.receivingQty ;;
  }
  dimension: receiving_uom {
    type: string
    sql: ${TABLE}.receivingUOM ;;
  }
  dimension: stock_code {
    type: string
    sql: ${TABLE}.stockCode ;;
  }
  dimension: stock_name {
    type: string
    sql: ${TABLE}.stockName ;;
  }
  dimension: supplier_code {
    type: string
    sql: ${TABLE}.supplierCode ;;
  }
  dimension: supplier_name {
    type: string
    sql: ${TABLE}.supplierName ;;
  }
  dimension: total_tax {
    type: number
    sql: ${TABLE}.totalTax ;;
  }
  dimension: unit_price_after_tax {
    type: number
    sql: ${TABLE}.unitPriceAfterTax ;;
  }
  dimension: unit_price_before_tax {
    type: number
    sql: ${TABLE}.unitPriceBeforeTax ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.updatedDate ;;
  }

  measure: count_of_po_number {
    type: count_distinct
    sql: ${TABLE}.poNumber ;;
  }

  measure: sum_quanity_of_po {
    type: sum
    sql: ${TABLE}.orderedQty ;;
  }

  measure: count {
    type: count
    drill_fields: [supplier_name, outlet_name, stock_name]
  }

}
