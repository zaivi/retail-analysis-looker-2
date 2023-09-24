view: po_num_arima_bqml_explain_forecast_new_1 {
  derived_table: {
    sql:
      SELECT
        stockName,
        creationDate as forecast_timestamp,
        COUNT(DISTINCT poNumber) as time_series_data,
        null as forecast_value,
        null as standard_error,
        null as confidence_level,
        CAST(null AS INTEGER) as prediction_interval_lower_bound,
        CAST(null AS INTEGER) as prediction_interval_upper_bound,
        CAST(null AS INTEGER) as confidence_interval_lower_bound,
        CAST(null AS INTEGER) as confidence_interval_upper_bound
      FROM `glife-data-science.novitee_analysis.purchase_order_deduplicate`
      WHERE
      {% condition stock_name_filter%} stockName {% endcondition %}
      AND {% condition order_date_filter%} creationDate {% endcondition %}
      AND creationDate < "2023-06-30"
      GROUP BY 1, 2

      UNION ALL

      SELECT
        stockName,
        CAST(forecast_timestamp AS DATE),
        null as time_series_data,
        forecast_value,
        standard_error,
        confidence_level,
        prediction_interval_lower_bound,
        prediction_interval_upper_bound,
        confidence_interval_lower_bound,
        confidence_interval_upper_bound
      FROM ML.FORECAST(
        MODEL `glife-data-science`.novitee_analysis_model.po_num_arima_bqml_new_1,
        STRUCT(30 AS horizon, 0.95 AS confidence_level)
      )
      WHERE {% condition order_date_filter%} CAST(forecast_timestamp AS DATE) {% endcondition %}
      AND {% condition stock_name_filter%} stockName {% endcondition %}
      ;;
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
    suggest_dimension: time_series_timestamp_date
  }

  dimension: confidence_level {
    type: number
    sql: ${TABLE}.confidence_level ;;
  }
  dimension: holiday_effect {
    type: number
    sql: ${TABLE}.holiday_effect ;;
  }
  dimension: prediction_interval_lower_bound {
    type: number
    sql: ${TABLE}.prediction_interval_lower_bound ;;
  }
  dimension: prediction_interval_upper_bound {
    type: number
    sql: ${TABLE}.prediction_interval_upper_bound ;;
  }
  dimension: seasonal_period_daily {
    type: number
    sql: ${TABLE}.seasonal_period_daily ;;
  }
  dimension: seasonal_period_monthly {
    type: number
    sql: ${TABLE}.seasonal_period_monthly ;;
  }
  dimension: seasonal_period_quarterly {
    type: number
    sql: ${TABLE}.seasonal_period_quarterly ;;
  }
  dimension: seasonal_period_weekly {
    type: number
    sql: ${TABLE}.seasonal_period_weekly ;;
  }
  dimension: seasonal_period_yearly {
    type: number
    sql: ${TABLE}.seasonal_period_yearly ;;
  }
  dimension: spikes_and_dips {
    type: number
    sql: ${TABLE}.spikes_and_dips ;;
  }
  dimension: standard_error {
    type: number
    sql: ${TABLE}.standard_error ;;
  }
  dimension: step_changes {
    type: number
    sql: ${TABLE}.step_changes ;;
  }
  dimension: stock_name {
    type: string
    sql: ${TABLE}.stockName ;;
  }
  dimension: time_series_adjusted_data {
    type: number
    sql: ${TABLE}.forecast_value ;;
  }
  dimension: time_series_data {
    type: number
    sql: ${TABLE}.time_series_data ;;
  }
  dimension: forecast_value {
    type: number
    sql: ${TABLE}.forecast_value ;;
  }
  dimension_group: time_series_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.forecast_timestamp ;;
  }
  dimension: time_series_type {
    type: string
    sql: ${TABLE}.time_series_type ;;
  }
  dimension: trend {
    type: number
    sql: ${TABLE}.trend ;;
  }
  measure: count {
    type: count
    drill_fields: [stock_name]
  }
}

explore: po_num_arima_bqml_explain_forecast_new_1 {}
