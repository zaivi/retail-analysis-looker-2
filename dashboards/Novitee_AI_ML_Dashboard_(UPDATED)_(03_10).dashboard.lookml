---
- dashboard: novitee_aiml_dashboard_updated_0310
  title: Novitee AI/ML Dashboard (UPDATED) (03/10)
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: gDZGkLu2i6ufnQEgY71dRz
  elements:
  - name: "[NEW] Inventory Turnover (By Year)"
    title: "[NEW] Inventory Turnover (By Year)"
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: looker_bar
    fields: [inventory_stock_mart.name, average_of_ratio, inventory_stock_mart.trans_start_date_year]
    pivots: [inventory_stock_mart.trans_start_date_year]
    fill_fields: [inventory_stock_mart.trans_start_date_year]
    sorts: [inventory_stock_mart.trans_start_date_year, turn_over desc 3]
    limit: 5000
    column_limit: 10
    dynamic_fields:
    - category: table_calculation
      expression: "${average_of_ratio}*10"
      label: Turn Over
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: turn_over
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Stock Grand In
      value_format: '0'
      value_format_name: __custom
      based_on: inventory_stock_mart.stock_grand_in
      _kind_hint: measure
      measure: sum_of_stock_grand_in
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Stock Grand Out
      value_format: '0'
      value_format_name: __custom
      based_on: inventory_stock_mart.stock_grand_out
      _kind_hint: measure
      measure: sum_of_stock_grand_out
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of Ratio
      value_format: 0.##
      value_format_name: __custom
      based_on: inventory_stock_mart.ratio
      _kind_hint: measure
      measure: average_of_ratio
      type: average
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
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_of_stock_grand_in,
            id: sum_of_stock_grand_in, name: Sale}, {axisId: sum_of_stock_grand_out,
            id: sum_of_stock_grand_out, name: Inventory}], showLabels: true, showValues: true,
        valueFormat: '0', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: average_of_ratio,
            id: average_of_ratio, name: Inventory Ratio}], showLabels: true, showValues: true,
        valueFormat: '0.0', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    label_value_format: '0'
    series_colors:
      sum_of_stock_grand_in: "#F9AB00"
      sum_of_stock_grand_out: "#7CB342"
      average_of_ratio: "#E52592"
      average_of_const_ratio: "#1A73E8"
      turn_over: "#C8660D"
      2020 - turn_over: "#C8660D"
      2021 - turn_over: "#6F849F"
      2022 - turn_over: "#1050A9"
      2023 - turn_over: "#F9AB00"
    series_labels:
      sum_of_stock_grand_in: Sale
      sum_of_stock_grand_out: Inventory
      average_of_const_ratio: Avg. Ratio
      average_of_ratio: Inventory Ratio
    x_axis_datetime_label: ''
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#26AD60",
        line_value: '9', label: Ideal Inventory Turnover, value_format: ''}]
    hidden_pivots:
      '2020':
        measure_names:
        - average_of_ratio
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [average_of_ratio]
    listen: {}
    row: 2
    col: 12
    width: 12
    height: 8
  - name: "[NEW] Inventory Turnover (By Month)"
    title: "[NEW] Inventory Turnover (By Month)"
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: looker_column
    fields: [inventory_stock_mart.trans_start_date_month, average_of_ratio]
    fill_fields: [inventory_stock_mart.trans_start_date_month]
    sorts: [average_of_ratio]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Sum of Stock Grand In
      value_format: '0'
      value_format_name: __custom
      based_on: inventory_stock_mart.stock_grand_in
      _kind_hint: measure
      measure: sum_of_stock_grand_in
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Stock Grand Out
      value_format: '0'
      value_format_name: __custom
      based_on: inventory_stock_mart.stock_grand_out
      _kind_hint: measure
      measure: sum_of_stock_grand_out
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of Ratio
      value_format: 0.##
      value_format_name: __custom
      based_on: inventory_stock_mart.ratio
      _kind_hint: measure
      measure: average_of_ratio
      type: average
      _type_hint: number
    - category: table_calculation
      expression: "${average_of_ratio}*10"
      label: Turn Over
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: turn_over
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_of_stock_grand_in,
            id: sum_of_stock_grand_in, name: Sale}, {axisId: sum_of_stock_grand_out,
            id: sum_of_stock_grand_out, name: Inventory}], showLabels: true, showValues: true,
        valueFormat: '0', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: average_of_ratio,
            id: average_of_ratio, name: Inventory Ratio}], showLabels: true, showValues: true,
        valueFormat: '0.0', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Order Date
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '0'
    series_types:
      average_of_ratio: line
    series_colors:
      sum_of_stock_grand_in: "#F9AB00"
      sum_of_stock_grand_out: "#7CB342"
      average_of_ratio: "#E52592"
      average_of_const_ratio: "#1A73E8"
      turn_over: "#C8660D"
    series_labels:
      sum_of_stock_grand_in: Sale
      sum_of_stock_grand_out: Inventory
      average_of_const_ratio: Avg. Ratio
      average_of_ratio: Inventory Ratio
    x_axis_datetime_label: "%b %Y"
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#26AD60",
        line_value: '5', label: Ideal Inventory Turnover, value_format: ''}]
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [average_of_ratio]
    listen: {}
    row: 2
    col: 0
    width: 12
    height: 8
  - name: "[NEW] Inventory Trend (By Year)"
    title: "[NEW] Inventory Trend (By Year)"
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: looker_bar
    fields: [inventory_stock_mart.name, stock_out, inventory_stock_mart.trans_start_date_year]
    pivots: [inventory_stock_mart.trans_start_date_year]
    fill_fields: [inventory_stock_mart.trans_start_date_year]
    sorts: [inventory_stock_mart.trans_start_date_year, stock_out desc 3, inventory_stock_mart.name
        desc]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Stock Out
      value_format:
      value_format_name: decimal_0
      based_on: inventory_stock_mart.stock_out
      _kind_hint: measure
      measure: stock_out
      type: sum
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
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    label_value_format: ''
    series_colors:
      2020 - stock_out: "#C8660D"
      2021 - stock_out: "#6F849F"
      2022 - stock_out: "#1050A9"
      2023 - stock_out: "#F9AB00"
    advanced_vis_config: |-
      {
        chart: {},
        series: [{
          name: '2020'
        }, {
          name: '2021'
        }, {
          name: '2022'
        }, {
          name: '2023'
        }]
      }
    hidden_pivots: {}
    hidden_fields: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 10
    col: 12
    width: 12
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"border-bottom: solid 1px #4285F4;\">\n\n<nav style=\"\
      font-size: 18px; padding: 5px 10px 0 10px; height: 60px\">\n\n<a style=\"padding:\
      \ 5px 15px; border-top: solid 1px #4285F4; float: left; line-height: 40px; border-left:\
      \ solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px\
      \ 0 0; font-weight: bold; background-color: #0C2F4B;color:white\" href=\"#\"\
      \ class=\"test\"> Overview </a> \n\n<a style=\"padding: 5px 15px; border-bottom:\
      \ solid 1px #4285F4; float: left; line-height: 40px;\" href=\"/dashboards/16\"\
      \ > Stock Analysis </a>\n\n</nav>\n\n</div>"
    row: 0
    col: 0
    width: 24
    height: 2
  - name: "[NEW] Inventory Trend (By Month)"
    title: "[NEW] Inventory Trend (By Month)"
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: looker_bar
    fields: [inventory_stock_mart.name, inventory_stock_mart.trans_start_date_month,
      stock_out]
    pivots: [inventory_stock_mart.trans_start_date_month]
    fill_fields: [inventory_stock_mart.trans_start_date_month]
    filters:
      inventory_stock_mart.trans_start_date_month: '2023'
    sorts: [inventory_stock_mart.trans_start_date_month, stock_out desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Stock Out
      based_on: inventory_stock_mart.stock_out
      _kind_hint: measure
      measure: stock_out
      type: sum
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
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_colors:
      2023-01 - stock_out: "#C8660D"
      2023-02 - stock_out: "#F2994A"
      2023-03 - stock_out: "#FAD3B1"
      2023-04 - stock_out: "#9B51E1"
      2023-05 - stock_out: "#E5D4F7"
      2023-06 - stock_out: "#F5EEFC"
      2023-07 - stock_out: "#1F854A"
      2023-08 - stock_out: "#26AD60"
      2023-09 - stock_out: "#BCF0D2"
      2023-10 - stock_out: "#1050A9"
      2023-11 - stock_out: "#2F80ED"
      2023-12 - stock_out: "#B5D1F9"
    series_labels:
      2023-01 - stock_out: Jan
      2023-02 - stock_out: Feb
      2023-03 - stock_out: Mar
      2023-04 - stock_out: Apr
      2023-05 - stock_out: May
      2023-06 - stock_out: Jun
      2023-07 - stock_out: Jul
      2023-08 - stock_out: Aug
      2023-09 - stock_out: Sep
      2023-10 - stock_out: Oct
      2023-11 - stock_out: Nov
      2023-12 - stock_out: Dec
    x_axis_datetime_label: ''
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 10
    col: 0
    width: 12
    height: 7
  - name: "[NEW] Purchase Order Trend (By Year)"
    title: "[NEW] Purchase Order Trend (By Year)"
    model: novitee_analysis_model
    explore: purchase_order
    type: looker_bar
    fields: [purchase_order.stock_name, purchase_order.order_year, purchase_order.sum_quanity_of_po]
    pivots: [purchase_order.order_year]
    fill_fields: [purchase_order.order_year]
    sorts: [purchase_order.order_year, purchase_order.sum_quanity_of_po desc 0]
    limit: 500
    column_limit: 50
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
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: PO Quantity, orientation: bottom, series: [{axisId: 2020 - purchase_order.sum_quanity_of_po,
            id: 2020 - purchase_order.sum_quanity_of_po, name: '2020'}, {axisId: 2021
              - purchase_order.sum_quanity_of_po, id: 2021 - purchase_order.sum_quanity_of_po,
            name: '2021'}, {axisId: 2022 - purchase_order.sum_quanity_of_po, id: 2022
              - purchase_order.sum_quanity_of_po, name: '2022'}, {axisId: 2023 - purchase_order.sum_quanity_of_po,
            id: 2023 - purchase_order.sum_quanity_of_po, name: '2023'}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_colors:
      2023 - purchase_order.sum_quanity_of_po: "#EAB000"
      2022 - purchase_order.sum_quanity_of_po: "#6F849F"
      2021 - purchase_order.sum_quanity_of_po: "#1F854A"
      2020 - purchase_order.sum_quanity_of_po: "#FF8168"
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 17
    col: 0
    width: 24
    height: 7
  filters:
  - name: Order Date
    title: Order Date
    type: field_filter
    default_value: 2023/05/02 to 2023/06/28
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
  - name: Stock Name
    title: Stock Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: novitee_analysis_model
    explore: purchase_order
    listens_to_filters: []
    field: purchase_order.stock_name_filter
