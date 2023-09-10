view: eval_model {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql: SELECT
          *
        FROM
          `glife-data-science.novitee_analysis_model.v_eval_po_grand_model`
        UNION ALL
        SELECT
          *
        FROM
          `glife-data-science.novitee_analysis_model.v_eval_po_num_model`
        UNION ALL
        SELECT
          *
        FROM
          `glife-data-science.novitee_analysis_model.v_eval_po_quantity_model`
      ;;
  }

  # Define your dimensions and measures here, like this:
  dimension: model_name {
    label: "Model"
    description: ""
    type: string
    sql: ${TABLE}.model_name ;;
  }

  dimension: aic {
    label: "AIC (Akaike Information Criterion)"
    description: ""
    type: number
    sql: ${TABLE}.aic ;;
  }

  dimension: variance {
    label: "Variance"
    description: ""
    type: number
    sql: ${TABLE}.variance ;;
  }

  dimension: log_likelihood {
    label: "Log Likelihood"
    description: ""
    type: number
    sql: ${TABLE}.log_likelihood ;;
  }

  dimension: rmse {
    label: "Root Mean Squared Error"
    description: ""
    type: number
    sql: ${TABLE}.rmse ;;
  }

  dimension: mape {
    label: "Mean Absolute Percentage Error (%)"
    description: ""
    type: number
    sql: ${TABLE}.mape ;;
  }

  dimension: forecast_bias {
    label: "Forecast Bias"
    description: ""
    type: number
    sql: ${TABLE}.forecast_bias ;;
  }
}
