---
- dashboard: novitee_aiml_dashboard
  title: Novitee AI/ML Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: IurR1hsXgcrH6JtlzS5DX4
  elements:
  - name: Purchase Order Time Forecast
    title: Purchase Order Time Forecast
    model: novitee_analysis_model
    explore: purchase_order
    type: looker_line
    fields: [count_of_purchase_order, purchase_order.order_date]
    fill_fields: [purchase_order.order_date]
    sorts: [purchase_order.order_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Count of Purchase Order
      value_format:
      value_format_name:
      based_on: purchase_order.po_number
      _kind_hint: measure
      measure: count_of_purchase_order
      type: count_distinct
      _type_hint: number
    analysis_config:
      forecasting:
      - confidence_interval: 0.95
        field_name: count_of_purchase_order
        forecast_n: 30
        forecast_interval: day
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
      options:
        steps: 5
    x_axis_label: Date
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      count_of_po_number: "#F7A526"
      count_of_purchase_order: "#F7A526"
    series_labels:
      count_of_purchase_order: PO Amount
    reference_lines: [{reference_type: margins, line_value: mean, range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: center, color: "#c29872"}]
    trend_lines: [{color: "#9ACA53", label_position: right, order: 3, period: 7, regression_type: average,
        series_index: 1, show_label: true}]
    discontinuous_nulls: true
    defaults_version: 1
    listen:
      Purchase Order Date: purchase_order.order_date
      Suppliers: purchase_order.supplier_name
      Outlets: purchase_order.outlet_name_filter
    row: 26
    col: 0
    width: 12
    height: 7
  - name: Purchase Order Quantity
    title: Purchase Order Quantity
    model: novitee_analysis_model
    explore: purchase_order
    type: looker_column
    fields: [sum_of_ordered_qty, purchase_order.order_date]
    fill_fields: [purchase_order.order_date]
    sorts: [purchase_order.order_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Sum of Ordered Qty
      value_format:
      value_format_name:
      based_on: purchase_order.ordered_qty
      _kind_hint: measure
      measure: sum_of_ordered_qty
      type: sum
      _type_hint: number
    analysis_config:
      forecasting:
      - confidence_interval: 0.95
        field_name: sum_of_ordered_qty
        forecast_n: 30
        forecast_interval: day
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
      options:
        steps: 5
    x_axis_label: Date
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      sum_of_ordered_qty: "#F7A526"
    series_labels:
      sum_of_ordered_qty: Order Quantity
    reference_lines: [{reference_type: margins, line_value: mean, range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: center, color: "#c29872", label: ''}]
    trend_lines: [{color: "#9ACA53", label_position: right, order: 3, period: 7, regression_type: average,
        series_index: 1, show_label: true}]
    show_dropoff: false
    defaults_version: 1
    listen:
      Purchase Order Date: purchase_order.order_date
      Suppliers: purchase_order.supplier_name
      UOM: purchase_order.packaging_uom
      Stock Name: purchase_order.stock_name_filter
    row: 26
    col: 12
    width: 12
    height: 7
  - name: Evaluation Metrics Model
    title: Evaluation Metrics Model
    model: novitee_analysis_model
    explore: eval_model
    type: looker_grid
    fields: [eval_model.model_name, eval_model.rmse, eval_model.mape, eval_model.forecast_bias]
    sorts: [eval_model.model_name]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '16'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [eval_model.model_name, eval_model.aic, eval_model.variance, eval_model.log_likelihood,
      eval_model.rmse, eval_model.mape, eval_model.forecast_bias]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      eval_model.rmse:
        is_active: false
      eval_model.forecast_bias:
        is_active: false
    series_text_format:
      eval_model.model_name:
        align: left
      eval_model.mape:
        align: center
      eval_model.forecast_bias:
        align: center
      eval_model.rmse:
        align: center
    header_background_color: ''
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          custom: {id: 1c635033-06ca-47e1-7efe-20b767c5c2e1, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#F9AB00", offset: 100}]},
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: []}, {type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          custom: {id: d126796b-eff8-0db8-87be-7b1babbc8aa7, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#FFFFFF", offset: 50},
              {color: "#F9AB00", offset: 100}]}, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [eval_model.rmse]}, {type: along a scale...,
        value: !!null '', background_color: "#1A73E8", font_color: !!null '', color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, custom: {id: 16ab39bc-c867-8819-63d3-9f9aa4ccaa91,
            label: Custom, type: continuous, stops: [{color: "#FFFFFF", offset: 0},
              {color: "#F9AB00", offset: 100}]}, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [eval_model.mape]}, {type: along a scale...,
        value: !!null '', background_color: "#1A73E8", font_color: !!null '', color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, custom: {id: 63db4f0c-6cac-ccc9-cd7a-d9ce45609d4c,
            label: Custom, type: continuous, stops: [{color: "#FFFFFF", offset: 0},
              {color: "#F9AB00", offset: 100}]}, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: []}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          custom: {id: d1962d2c-d259-f5af-add7-a745d097d0db, label: Custom, type: continuous,
            stops: [{color: "#FFFFFF", offset: 0}, {color: "#F9AB00", offset: 100}]},
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: []}, {type: along
          a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, custom: {
            id: 22264987-d274-0181-4eb7-d5cabd0ceff8, label: Custom, type: continuous,
            stops: [{color: "#FFFFFF", offset: 0}, {color: "#F9AB00", offset: 100}]},
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: []}, {type: along
          a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, custom: {
            id: af9a5076-3ef8-0955-985a-35317fa50770, label: Custom, type: continuous,
            stops: [{color: "#FFFFFF", offset: 0}, {color: "#F9AB00", offset: 100}]},
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: [eval_model.forecast_bias]}]
    series_value_format:
      eval_model.rmse:
        name: decimal_3
        decimals: '3'
        format_string: "#,##0.000"
        label: Decimals (3)
        label_prefix: Decimals
      eval_model.forecast_bias:
        name: decimal_3
        decimals: '3'
        format_string: "#,##0.000"
        label: Decimals (3)
        label_prefix: Decimals
      eval_model.mape:
        name: decimal_3
        decimals: '3'
        format_string: "#,##0.000"
        label: Decimals (3)
        label_prefix: Decimals
    defaults_version: 1
    listen: {}
    row: 47
    col: 0
    width: 24
    height: 5
  - name: Latest Cost per Order
    title: Latest Cost per Order
    model: novitee_analysis_model
    explore: v_cal_po_total_latest
    type: single_value
    fields: [v_cal_po_total_latest.cost_per_order, v_cal_po_total_latest.month_start_month]
    sorts: [v_cal_po_total_latest.month_start_month desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    single_value_title: Avg. Fulfillment Cost / Order
    defaults_version: 1
    listen: {}
    row: 1
    col: 6
    width: 6
    height: 4
  - name: Latest Fulfillment Cost
    title: Latest Fulfillment Cost
    model: novitee_analysis_model
    explore: v_cal_po_total_latest
    type: single_value
    fields: [v_cal_po_total_latest.sum_grand_total, v_cal_po_total_latest.month_start_month,
      v_cal_po_total_latest.change_per_grand_total]
    sorts: [v_cal_po_total_latest.month_start_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${v_cal_po_total_latest.change_per_grand_total} / 100"
      label: "%"
      value_format:
      value_format_name: percent_0
      _kind_hint: dimension
      table_calculation: calculation
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Fulfillment Cost
    comparison_label: ㅤ
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [v_cal_po_total_latest.month_start_month, v_cal_po_total_latest.change_per_grand_total]
    listen: {}
    row: 1
    col: 0
    width: 6
    height: 4
  - name: Latest Number of Order
    title: Latest Number of Order
    model: novitee_analysis_model
    explore: v_cal_po_total_latest
    type: single_value
    fields: [v_cal_po_total_latest.count_po_number, v_cal_po_total_latest.month_start_month,
      v_cal_po_total_latest.change_per_po_number]
    sorts: [v_cal_po_total_latest.month_start_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${v_cal_po_total_latest.change_per_po_number} / 100"
      label: "%"
      value_format:
      value_format_name: percent_0
      _kind_hint: dimension
      table_calculation: calculation
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Sale Orders
    comparison_label: ㅤ
    defaults_version: 1
    hidden_fields: [v_cal_po_total_latest.change_per_po_number, v_cal_po_total_latest.month_start_month]
    listen: {}
    row: 5
    col: 0
    width: 6
    height: 4
  - name: Latest Sale Order Quantity
    title: Latest Sale Order Quantity
    model: novitee_analysis_model
    explore: v_cal_po_total_latest
    type: single_value
    fields: [v_cal_po_total_latest.sum_order_qty, v_cal_po_total_latest.month_start_month,
      v_cal_po_total_latest.change_per_order_qty]
    sorts: [v_cal_po_total_latest.month_start_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${v_cal_po_total_latest.change_per_order_qty} / 100"
      label: "%"
      value_format:
      value_format_name: percent_0
      _kind_hint: dimension
      table_calculation: calculation
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Sale Order Quantity
    comparison_label: ㅤ
    defaults_version: 1
    hidden_fields: [v_cal_po_total_latest.change_per_order_qty, v_cal_po_total_latest.month_start_month]
    listen: {}
    row: 5
    col: 6
    width: 6
    height: 4
  - name: Purchase Order Value
    title: Purchase Order Value
    merged_queries:
    - model: novitee_analysis_model
      explore: purchase_order
      type: looker_line
      fields: [purchase_order_previous_30days.order_date, grand_total_forecasted]
      fill_fields: [purchase_order_previous_30days.order_date]
      sorts: [purchase_order_previous_30days.order_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: ''
        label: Grand Total Forecasted
        based_on: purchase_order_previous_30days.grand_total
        _kind_hint: measure
        measure: grand_total_forecasted
        type: sum
        _type_hint: number
      analysis_config:
        forecasting:
        - confidence_interval: 0.95
          field_name: grand_total_forecasted
          forecast_n: 30
          forecast_interval: day
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      defaults_version: 1
    - model: novitee_analysis_model
      explore: purchase_order
      type: looker_line
      fields: [purchase_order.order_date, grand_total_actual]
      fill_fields: [purchase_order.order_date]
      sorts: [purchase_order.order_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: ''
        label: Grand Total Actual
        based_on: purchase_order.grand_total
        _kind_hint: measure
        measure: grand_total_actual
        type: sum
        _type_hint: number
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      defaults_version: 1
      join_fields:
      - field_name: purchase_order.order_date
        source_field_name: purchase_order_previous_30days.order_date
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: grand_total_forecasted,
            id: grand_total_forecasted, name: Grand Total Forecasted}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: ''
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    size_by_field: grand_total_forecasted
    plot_size_by_field: true
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hide_legend: true
    legend_position: center
    series_types: {}
    point_style: circle
    series_colors:
      grand_total_forecasted: "#F7A526"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: [{reference_type: margins, line_value: mean, range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: center, color: "#c29872", label: ''}]
    trend_lines: [{color: "#9ACA53", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: true}]
    show_null_points: true
    cluster_points: false
    quadrants_enabled: true
    quadrant_properties:
      '0':
        color: ''
        label: ''
      '1':
        color: ''
        label: ''
      '2':
        color: ''
        label: ''
      '3':
        color: ''
        label: ''
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: grand_total_actual
    custom_y_column: grand_total_forecasted
    custom_value_label_column: ''
    type: looker_scatter
    listen:
    - Purchase Order Date: purchase_order.order_date
      Suppliers: purchase_order.supplier_name
    - Suppliers: purchase_order.supplier_name
    row: 33
    col: 0
    width: 24
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="font-size:12px; color:#667085;text-align:left;"><img height=20px
            src="https://cdn-icons-png.flaticon.com/512/6488/6488674.png"> Use the filters include
            <b>"Date Time"</b>, <b>"Metrics"</b> to customize the timelines and metrics to view</div>
    row: 0
    col: 0
    width: 24
    height: 1
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="font-size:12px; color:#667085;text-align:left;"><img height=20px
            src="https://cdn-icons-png.flaticon.com/512/6488/6488674.png"> Use the filters include
            <b>"Date Time"</b>, <b>"Metrics"</b> to customize the timelines and metrics to view</div>
    row: 25
    col: 0
    width: 24
    height: 1
  - name: Inventory Trends (updated)
    title: Inventory Trends (updated)
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: looker_line
    fields: [inventory_stock_mart.avg_stock, inventory_stock_mart.name, sum_of_avg_stock,
      inventory_stock_mart.trans_start_date_date, inventory_stock_mart.outlet_name]
    sorts: [inventory_stock_mart.trans_start_date_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Ratio
      based_on: inventory_stock_mart.ratio
      _kind_hint: measure
      measure: ratio
      type: sum
      _type_hint: number
    - measure: sum_of_avg_stock
      based_on: inventory_stock_mart.avg_stock
      expression: ''
      label: Sum of Avg Stock
      type: sum
      _kind_hint: measure
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    x_axis_label: Date
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      sum_of_avg_stock: area
    series_colors:
      ratio: "#E52592"
      sum_of_avg_stock: "#F7A526"
    series_labels:
      sum_of_avg_stock: Average Stock Balance
    trend_lines: [{color: "#E52592", label_position: right, order: 3, period: 7, regression_type: average,
        series_index: 1, show_label: true}]
    discontinuous_nulls: true
    defaults_version: 1
    hidden_fields: [inventory_stock_mart.avg_stock, inventory_stock_mart.name, inventory_stock_mart.outlet_name]
    hidden_pivots: {}
    listen:
      Transaction Date: inventory_stock_mart.trans_start_date_date
      Stock Name: inventory_stock_mart.stock_name_filter
      Outlets: inventory_stock_mart.outlet_name_filter
    row: 9
    col: 12
    width: 12
    height: 8
  - name: Inventory Turnover (updated)
    title: Inventory Turnover (updated)
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: looker_line
    fields: [ratio, inventory_stock_mart.trans_start_date_date]
    fill_fields: [inventory_stock_mart.trans_start_date_date]
    sorts: [inventory_stock_mart.trans_start_date_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Ratio
      based_on: inventory_stock_mart.ratio
      _kind_hint: measure
      measure: ratio
      type: sum
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    x_axis_label: Date
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      ratio: "#E52592"
    discontinuous_nulls: false
    defaults_version: 1
    listen:
      Transaction Date: inventory_stock_mart.trans_start_date_date
      Stock Name: inventory_stock_mart.stock_name_filter
      Outlets: inventory_stock_mart.outlet_name_filter
    row: 9
    col: 0
    width: 12
    height: 8
  - name: Stock In/Out (updated)
    title: Stock In/Out (updated)
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: looker_line
    fields: [inventory_stock_mart.stock_in, inventory_stock_mart.stock_out, inventory_stock_mart.name,
      inventory_stock_mart.outlet_name, sum_of_stock_in, sum_of_stock_out, inventory_stock_mart.trans_start_date_date]
    sorts: [inventory_stock_mart.trans_start_date_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_stock_in
      based_on: inventory_stock_mart.stock_in
      expression: ''
      label: Sum of Stock In
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_stock_out
      based_on: inventory_stock_mart.stock_out
      expression: ''
      label: Sum of Stock Out
      type: sum
      _kind_hint: measure
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      sum_of_stock_in: area
      sum_of_stock_out: area
    series_colors:
      sum_of_stock_in: "#F7A526"
    series_labels:
      sum_of_stock_in: Stock In
      sum_of_stock_out: Stock Out
    trend_lines: [{color: "#E52592", label_position: right, order: 3, period: 7, regression_type: average,
        series_index: 1, show_label: true}]
    discontinuous_nulls: true
    defaults_version: 1
    hidden_fields: [inventory_stock_mart.stock_in, inventory_stock_mart.stock_out,
      inventory_stock_mart.name, inventory_stock_mart.outlet_name]
    listen:
      Transaction Date: inventory_stock_mart.trans_start_date_date
      Stock Name: inventory_stock_mart.stock_name_filter
      Outlets: inventory_stock_mart.outlet_name_filter
    row: 1
    col: 12
    width: 12
    height: 8
  - name: Inventory Trends (updated 2)
    title: Inventory Trends (updated 2)
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: looker_line
    fields: [inventory_stock_mart.avg_stock, inventory_stock_mart.name, sum_of_avg_stock,
      inventory_stock_mart.trans_start_date_date, inventory_stock_mart.outlet_name]
    sorts: [inventory_stock_mart.trans_start_date_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Ratio
      based_on: inventory_stock_mart.ratio
      _kind_hint: measure
      measure: ratio
      type: sum
      _type_hint: number
    - measure: sum_of_avg_stock
      based_on: inventory_stock_mart.avg_stock
      expression: ''
      label: Sum of Avg Stock
      type: sum
      _kind_hint: measure
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    x_axis_label: Date
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      sum_of_avg_stock: area
    series_colors:
      ratio: "#E52592"
      sum_of_avg_stock: "#F7A526"
    series_labels:
      sum_of_avg_stock: Average Stock Balance
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#E52592"}]
    trend_lines: []
    discontinuous_nulls: true
    defaults_version: 1
    hidden_fields: [inventory_stock_mart.avg_stock, inventory_stock_mart.name, inventory_stock_mart.outlet_name]
    hidden_pivots: {}
    listen:
      Transaction Date: inventory_stock_mart.trans_start_date_date
      Stock Name: inventory_stock_mart.stock_name_filter
      Outlets: inventory_stock_mart.outlet_name_filter
    row: 17
    col: 12
    width: 12
    height: 8
  - name: New Tile
    title: New Tile
    merged_queries:
    - model: novitee_analysis_model
      explore: purchase_order
      type: looker_line
      fields: [purchase_order_previous_30days.order_date, grand_total_forecasted]
      fill_fields: [purchase_order_previous_30days.order_date]
      sorts: [purchase_order_previous_30days.order_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: ''
        label: Grand Total Forecasted
        based_on: purchase_order_previous_30days.grand_total
        _kind_hint: measure
        measure: grand_total_forecasted
        type: sum
        _type_hint: number
      analysis_config:
        forecasting:
        - confidence_interval: 0.95
          field_name: grand_total_forecasted
          forecast_n: 30
          forecast_interval: day
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      defaults_version: 1
    - model: novitee_analysis_model
      explore: purchase_order
      type: looker_line
      fields: [purchase_order.order_date, grand_total_actual]
      fill_fields: [purchase_order.order_date]
      sorts: [purchase_order.order_date desc]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: ''
        label: Grand Total Actual
        based_on: purchase_order.grand_total
        _kind_hint: measure
        measure: grand_total_actual
        type: sum
        _type_hint: number
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: linear
      defaults_version: 1
      join_fields:
      - field_name: purchase_order.order_date
        source_field_name: purchase_order_previous_30days.order_date
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: grand_total_forecasted,
            id: grand_total_forecasted, name: Grand Total Forecasted}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: ''
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    size_by_field: ''
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hide_legend: true
    legend_position: center
    series_types: {}
    point_style: circle
    series_colors:
      grand_total_forecasted: "#C0D918"
      grand_total_actual: "#CE642D"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: [{reference_type: margins, line_value: mean, range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: center, color: "#c29872", label: ''}]
    trend_lines: [{color: "#9ACA53", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: true}]
    show_null_points: true
    cluster_points: false
    quadrants_enabled: true
    quadrant_properties:
      '0':
        color: ''
        label: ''
      '1':
        color: ''
        label: ''
      '2':
        color: ''
        label: ''
      '3':
        color: ''
        label: ''
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    type: looker_scatter
    listen:
    - Purchase Order Date: purchase_order.order_date
      Suppliers: purchase_order.supplier_name
      UOM: purchase_order.receiving_uom
      Outlets: purchase_order.outlet_name_filter
      Stock Name: purchase_order.stock_name_filter
    - Purchase Order Date: purchase_order.order_date
      Suppliers: purchase_order.supplier_name
      UOM: purchase_order.receiving_uom
      Outlets: purchase_order.outlet_name_filter
      Stock Name: purchase_order.stock_name_filter
    row: 40
    col: 0
    width: 24
    height: 7
  filters:
  - name: Transaction Date
    title: Transaction Date
    type: field_filter
    default_value: 2023/07/01 to 2023/07/28
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: novitee_analysis_model
    explore: inventory_stock_mart
    listens_to_filters: []
    field: inventory_stock_mart.trans_start_date_date
  - name: Purchase Order Date
    title: Purchase Order Date
    type: field_filter
    default_value: 3 month ago for 3 month
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: novitee_analysis_model
    explore: purchase_order
    listens_to_filters: []
    field: purchase_order.order_date
  - name: Suppliers
    title: Suppliers
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: novitee_analysis_model
    explore: purchase_order
    listens_to_filters: [Stock Name, Outlets, UOM]
    field: purchase_order.supplier_name
  - name: Outlets
    title: Outlets
    type: field_filter
    default_value: Tongue Tip Lanzhou Beef Noodles (HLM)
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: novitee_analysis_model
    explore: purchase_order
    listens_to_filters: [Stock Name, Suppliers, UOM]
    field: purchase_order.outlet_name_filter
  - name: Stock Name
    title: Stock Name
    type: field_filter
    default_value: 打包盒（小）/Container (S) - 300ml
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: popover
    model: novitee_analysis_model
    explore: purchase_order
    listens_to_filters: [Outlets, Suppliers, UOM]
    field: purchase_order.stock_name_filter
  - name: UOM
    title: UOM
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: novitee_analysis_model
    explore: purchase_order
    listens_to_filters: [Stock Name, Outlets, Suppliers]
    field: purchase_order.receiving_uom
