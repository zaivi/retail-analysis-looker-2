---
- dashboard: poc__forecasting__novitee
  title: POC - Forecasting - Novitee
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: FbapTuyHSXXnnJQyN0CiaW
  elements:
  - title: Purchase Order Amount Forecast by Date
    name: Purchase Order Amount Forecast by Date
    model: novitee_analysis_model
    explore: purchase_order_amount_forecast
    type: looker_line
    fields: [purchase_order_amount_forecast.forecast_type, purchase_order_amount_forecast.purchase_order_amount,
      purchase_order_amount_forecast.order_date]
    pivots: [purchase_order_amount_forecast.forecast_type]
    filters:
      purchase_order_amount_forecast.purchase_order_amount: NOT NULL
    sorts: [purchase_order_amount_forecast.forecast_type, purchase_order_amount_forecast.order_date
        desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${purchase_order_amount_forecast.purchase_order_amount}"
      label: PO Amount
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: po_amount
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: Actual - po_amount,
            id: Actual - po_amount, name: Actual}, {axisId: Forecast - po_amount,
            id: Forecast - po_amount, name: Forecast}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Actual - purchase_order_amount_forecast.purchase_order_amount: "#7CB342"
      Forecast - purchase_order_amount_forecast.purchase_order_amount: "#079c98"
      Actual - po_amount: "#7CB342"
      Forecast - po_amount: "#079c98"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#FF8168"}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [purchase_order_amount_forecast.purchase_order_amount]
    listen:
      Year: purchase_order_amount_forecast.order_year
    row: 2
    col: 0
    width: 24
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"border-bottom: solid 1px #000;\">\n \n<nav style=\"font-size:\
      \ 18px; padding: 5px 10px 0 10px; height: 60px\" >\n\n\n\n<a style=\"padding:\
      \ 5px 15px; border-bottom: solid 1px #000;color: #079c98; float: left; line-height:\
      \ 40px; \" href=\"/dashboards/27\" >  Spending Analysis </a>\n\n\n<a style=\"\
      padding: 5px 15px; border-bottom: solid 1px #000; color: #079c98; float: left;\
      \ line-height: 40px;\" href=\"/dashboards/28\" > Receiving Analysis </a>\n\n\
      \n\n<a style=\"padding: 5px 15px; border-bottom: solid 1px #000;color: #079c98;\
      \ float: left; line-height: 40px;\" href=\"/dashboards/30\" > Stock Analysis\
      \ </a>\n\n<a style=\"padding: 5px 15px; float: left; line-height: 40px; border-radius:\
      \ 5px 5px 0 0; font-weight: bold; color:#fff; background-color: #079c98\" href=\"\
      #\" class=\"test\"> Forecasting </a>\n\n</nav>\n\n</div>"
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Purchasing Order Amount Forecast Accuracy
    name: Purchasing Order Amount Forecast Accuracy
    model: novitee_analysis_model
    explore: purchase_order_amount_forecast_l3m
    type: looker_grid
    fields: [purchase_order_amount_forecast_l3m.order_date, purchase_order_amount_forecast_l3m.purchase_order_amount,
      purchase_order_amount_forecast_l3m.Actual_Forecast]
    pivots: [purchase_order_amount_forecast_l3m.Actual_Forecast]
    filters:
      purchase_order_amount_forecast_l3m.order_month: 2023/07/01 to 2023/07/28
    sorts: [purchase_order_amount_forecast_l3m.Actual_Forecast, purchase_order_amount_forecast_l3m.order_date
        desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${purchase_order_amount_forecast_l3m.purchase_order_amount}"
      label: PO Amount
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: po_amount
      _type_hint: number
    - category: table_calculation
      expression: if(${po_amount} = null AND ${purchase_order_amount_forecast_l3m.forecast_type}
        = "Actual", rand() * 3000, ${po_amount} * 0.9)
      label: PO Amount LY
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: po_amount_ly
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: pivot_index(${po_amount}, 1) - pivot_index(${po_amount},2)
      label: Variance
      value_format:
      value_format_name: usd_0
      _kind_hint: supermeasure
      table_calculation: variance
      _type_hint: number
    - category: table_calculation
      expression: pivot_index(${po_amount}, 2) / pivot_index(${po_amount},1)
      label: "% Accuracy"
      value_format:
      value_format_name: percent_0
      _kind_hint: supermeasure
      table_calculation: accuracy
      _type_hint: number
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [purchase_order_amount_forecast_l3m.order_date, Forecast_po_amount,
      Actual_po_amount, variance]
    show_totals: true
    show_row_totals: true
    truncate_header: true
    minimum_column_width: 120
    series_column_widths:
      Forecast_po_amount: 148
      Actual_po_amount: 172
      variance: 125
      accuracy: 153
    conditional_formatting: [{type: between, value: [0.9, 1.1], background_color: "#83b28f",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [accuracy]}]
    defaults_version: 1
    hidden_fields: [purchase_order_amount_forecast_l3m.purchase_order_amount]
    hidden_pivots:
      Forecast:
        measure_names: []
      Actual:
        measure_names:
        - variance
    listen: {}
    row: 10
    col: 16
    width: 8
    height: 13
  - title: Purchase Order Amount Actual vs Forecast
    name: Purchase Order Amount Actual vs Forecast
    model: novitee_analysis_model
    explore: purchase_order_amount_forecast_l3m
    type: looker_line
    fields: [purchase_order_amount_forecast_l3m.order_date, purchase_order_amount_forecast_l3m.purchase_order_amount,
      purchase_order_amount_forecast_l3m.Actual_Forecast]
    pivots: [purchase_order_amount_forecast_l3m.Actual_Forecast]
    filters:
      purchase_order_amount_forecast_l3m.order_month: 2023/05/01 to 2023/06/30
    sorts: [purchase_order_amount_forecast_l3m.Actual_Forecast, purchase_order_amount_forecast_l3m.order_date
        desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${purchase_order_amount_forecast_l3m.purchase_order_amount}"
      label: PO Amount
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: po_amount
      _type_hint: number
    - category: table_calculation
      expression: if(${po_amount} = null AND ${purchase_order_amount_forecast_l3m.forecast_type}
        = "Actual", rand() * 3000, ${po_amount} * 0.9)
      label: PO Amount LY
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: po_amount_ly
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: pivot_index(${po_amount}, 1) - pivot_index(${po_amount},2)
      label: Variance
      value_format:
      value_format_name: usd_0
      _kind_hint: supermeasure
      table_calculation: variance
      _type_hint: number
      is_disabled: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: po_amount, id: Actual
              - po_amount, name: Actual}, {axisId: po_amount, id: Forecast - po_amount,
            name: Forecast}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Actual - po_amount: "#7CB342"
      Forecast - po_amount: "#079c98"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#FF8168"}]
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: true
    minimum_column_width: 75
    defaults_version: 1
    hidden_fields: [purchase_order_amount_forecast_l3m.purchase_order_amount]
    hidden_pivots:
      Forecast:
        measure_names: []
      Actual:
        measure_names: []
    column_order: [purchase_order_amount_forecast_l3m.order_date, Forecast_po_amount,
      Actual_po_amount, variance]
    listen: {}
    row: 10
    col: 0
    width: 16
    height: 13
  filters:
  - name: Year
    title: Year
    type: field_filter
    default_value: '2023'
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: novitee_analysis_model
    explore: purchase_order_amount_forecast
    listens_to_filters: []
    field: purchase_order_amount_forecast.order_year
  - name: Month
    title: Month
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: novitee_analysis_model
    explore: purchase_order_amount_forecast
    listens_to_filters: []
    field: purchase_order_amount_forecast.order_month
