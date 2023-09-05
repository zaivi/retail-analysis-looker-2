view: purchase_order_test {
  sql_table_name: `glife-data-science.novitee_analysis.purchase_order_test` ;;

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
    type: string
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
  measure: count {
    type: count
    drill_fields: [supplier_name, outlet_name, stock_name]
  }
}
