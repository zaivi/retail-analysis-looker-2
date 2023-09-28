view: inventory {
  sql_table_name: `glife-data-science.novitee_analysis.inventory` ;;

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }
  dimension_group: creation {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.creationDate ;;
  }
  dimension: inventory_uom {
    type: string
    sql: ${TABLE}.inventoryUOM ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
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
  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }
  dimension: stock_in {
    type: number
    sql: ${TABLE}.stockIn ;;
    value_format: "0"
  }
  dimension: stock_out {
    type: number
    sql: ${TABLE}.stockOut ;;
    value_format: "0"
  }
  dimension_group: transaction {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.transactionDate ;;
  }
  dimension: transaction_description {
    type: string
    sql: ${TABLE}.transactionDescription ;;
  }
  dimension: transaction_type {
    type: string
    sql: ${TABLE}.transactionType ;;
  }
  measure: count {
    type: count
    drill_fields: [outlet_name, name]
  }
}
