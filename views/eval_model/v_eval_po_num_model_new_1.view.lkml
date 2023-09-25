view: v_eval_po_num_model_new_1 {
  sql_table_name: `glife-data-science.novitee_analysis_model.v_eval_po_num_model_new_1` ;;

  dimension: accuracy {
    type: number
    sql: ${TABLE}.accuracy ;;
  }
  dimension: forecast_bias {
    type: number
    sql: ${TABLE}.forecast_bias ;;
  }
  dimension: mae {
    type: number
    sql: ${TABLE}.mae ;;
  }
  dimension: mape {
    type: number
    sql: ${TABLE}.mape ;;
  }
  dimension: model_name {
    type: string
    sql: ${TABLE}.model_name ;;
  }
  dimension: rmse {
    type: number
    sql: ${TABLE}.rmse ;;
  }
  measure: count {
    type: count
    drill_fields: [model_name]
  }
}

explore: v_eval_po_num_model_new_1 {}
