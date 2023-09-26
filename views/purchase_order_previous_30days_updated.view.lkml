view: purchase_order_previous_30days_updated {
  derived_table: {
    sql: SELECT
          stockName,
          creationDate,
          outletName,
          COUNT(DISTINCT poNumber) AS count_of_purchase_order,
          (
            SELECT COUNT(DISTINCT poNumber)
            FROM `glife-data-science.novitee_analysis.purchase_order_deduplicate` b
            WHERE a.stockName = b.stockName
              and b.creationDate = DATE_SUB(a.creationDate, INTERVAL 1 YEAR)
              and a.outletName = b.outletName
          ) count_of_purchase_order_last_year,
          SUM(grandTotal) as sum_of_grand_total,
          (
            SELECT SUM(grandTotal)
            FROM `glife-data-science.novitee_analysis.purchase_order_deduplicate` b
            WHERE a.stockName = b.stockName
              and b.creationDate = DATE_SUB(a.creationDate, INTERVAL 1 YEAR)
              and a.outletName = b.outletName
          ) sum_of_grand_total_last_year
        FROM
          `glife-data-science.novitee_analysis.purchase_order_deduplicate` a
        WHERE creationDate <= DATE_SUB((SELECT MAX(creationDate) FROM `glife-data-science.novitee_analysis.purchase_order_deduplicate`), INTERVAL 30 DAY)
          AND {% condition stock_name_filter%} stockName {% endcondition %}
        GROUP BY
          1,
          2,
          3
      ;;
  }

  filter: stock_name_filter {
    type: string
    suggest_explore: purchase_order
    suggest_dimension: stock_name
  }

  dimension_group: order {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.creationDate ;;
  }
  dimension: grand_total {
    type: number
    sql: ${TABLE}.grandTotal ;;
  }
  # dimension: ordered_qty {
  #   type: number
  #   sql: ${TABLE}.orderedQty ;;
  # }
  # dimension: outlet_code {
  #   type: string
  #   sql: ${TABLE}.outletCode ;;
  # }
  dimension: outlet_name {
    type: string
    sql: ${TABLE}.outletName ;;
  }
  # dimension: packaging_uom {
  #   type: string
  #   sql: ${TABLE}.packagingUOM ;;
  # }
  # dimension: po_number {
  #   type: string
  #   sql: ${TABLE}.poNumber ;;
  # }
  # dimension: purchase_uom {
  #   type: string
  #   sql: ${TABLE}.purchaseUOM ;;
  # }
  # dimension: receiving_qty {
  #   type: string
  #   sql: ${TABLE}.receivingQty ;;
  # }
  # dimension: receiving_uom {
  #   type: string
  #   sql: ${TABLE}.receivingUOM ;;
  # }
  # dimension: stock_code {
  #   type: string
  #   sql: ${TABLE}.stockCode ;;
  # }
  dimension: stock_name {
    type: string
    sql: ${TABLE}.stockName ;;
  }

  dimension: count_of_purchase_order {
    type: number
    sql: ${TABLE}.count_of_purchase_order ;;
  }

  dimension: count_of_purchase_order_last_year {
    type: number
    sql: ${TABLE}.count_of_purchase_order_last_year ;;
  }

  dimension: sum_of_grand_total {
    type: number
    sql: ${TABLE}.sum_of_grand_total ;;
  }

  dimension: sum_of_grand_total_last_year {
    type: number
    sql: ${TABLE}.sum_of_grand_total_last_year ;;
  }

  # dimension: supplier_code {
  #   type: string
  #   sql: ${TABLE}.supplierCode ;;
  # }
  # dimension: supplier_name {
  #   type: string
  #   sql: ${TABLE}.supplierName ;;
  # }
  # dimension: total_tax {
  #   type: number
  #   sql: ${TABLE}.totalTax ;;
  # }
  # dimension: unit_price_after_tax {
  #   type: number
  #   sql: ${TABLE}.unitPriceAfterTax ;;
  # }
  # dimension: unit_price_before_tax {
  #   type: number
  #   sql: ${TABLE}.unitPriceBeforeTax ;;
  # }
  # dimension_group: updated {
  #   type: time
  #   timeframes: [raw, date, week, month, quarter, year]
  #   convert_tz: no
  #   datatype: date
  #   sql: ${TABLE}.updatedDate ;;
  # }

  # measure: count_of_po_number {
  #   type: count_distinct
  #   sql: ${TABLE}.poNumber ;;
  # }

  # measure: sum_quanity_of_po {
  #   type: sum
  #   sql: ${TABLE}.orderedQty ;;
  # }

  # measure: count {
  #   type: count
  #   drill_fields: [supplier_name, outlet_name, stock_name]
  # }
}
