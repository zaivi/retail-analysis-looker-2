---
- dashboard: poc__stock_analysis__novitee
  title: POC - Stock Analysis - Novitee
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: AUGdWRviP2iHtzqyIoimyr
  elements:
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
      <a style=\"padding: 5px 15px; float: left; line-height: 40px; border-radius:\
      \ 5px 5px 0 0; font-weight: bold; color:#fff; background-color: #079c98\" href=\"\
      #\" class=\"test\"> Stock Analysis </a>\n\n<a style=\"padding: 5px 15px; border-bottom:\
      \ solid 1px #000;color: #079c98; float: left; line-height: 40px;\" href=\"/dashboards/40\"\
      \ > Forecasting </a>\n\n</nav>\n\n</div>"
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Untitled
    name: Untitled
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: single_value
    fields: [stock_out]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Stock Out
      value_format:
      value_format_name:
      based_on: inventory_stock_mart.stock_grand_out
      _kind_hint: measure
      measure: stock_out
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${stock_out}"
      label: Total Spending
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: total_spending
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#079c98"
    single_value_title: Total Stock Out
    defaults_version: 1
    hidden_fields: [spending_analysis, stock_out]
    listen:
      Year: inventory_stock_mart.trans_start_date_year
      Month: inventory_stock_mart.trans_start_date_month
      Outlet: inventory_stock_mart.outlet_name
      Product: inventory_stock_mart.name
    row: 2
    col: 0
    width: 4
    height: 2
  - title: Untitled (Copy)
    name: Untitled (Copy)
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: single_value
    fields: [stock_out]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Stock Out
      value_format:
      value_format_name:
      based_on: inventory_stock_mart.stock_grand_out
      _kind_hint: measure
      measure: stock_out
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${stock_out} * 0.9"
      label: Total Spending
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: total_spending
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#079c98"
    single_value_title: Total Stock Out LY
    defaults_version: 1
    hidden_fields: [spending_analysis, stock_out]
    listen:
      Year: inventory_stock_mart.trans_start_date_year
      Month: inventory_stock_mart.trans_start_date_month
      Outlet: inventory_stock_mart.outlet_name
      Product: inventory_stock_mart.name
    row: 2
    col: 4
    width: 3
    height: 2
  - title: Untitled (Copy 2)
    name: Untitled (Copy 2)
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: single_value
    fields: [stock_out]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Stock Out
      value_format:
      value_format_name:
      based_on: inventory_stock_mart.stock_grand_out
      _kind_hint: measure
      measure: stock_out
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "(${stock_out} - ${stock_out} * 0.9) / (${stock_out} * 0.9)"
      label: "% vs LY"
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: vs_ly
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#079c98"
    single_value_title: "% vs LY"
    conditional_formatting: [{type: greater than, value: 0, background_color: '',
        font_color: "#7CB342", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: '',
        font_color: "#EA4335", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [spending_analysis, stock_out]
    listen:
      Year: inventory_stock_mart.trans_start_date_year
      Month: inventory_stock_mart.trans_start_date_month
      Outlet: inventory_stock_mart.outlet_name
      Product: inventory_stock_mart.name
    row: 2
    col: 7
    width: 3
    height: 2
  - title: Untitled (Copy 5)
    name: Untitled (Copy 5)
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: single_value
    fields: [stock_in]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "(${stock_in} - ${stock_in} * 0.93) / (${stock_in} * 0.93)"
      label: "% vs LY"
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: vs_ly
      _type_hint: number
    - category: measure
      expression:
      label: Stock In
      value_format:
      value_format_name:
      based_on: inventory_stock_mart.stock_grand_in
      _kind_hint: measure
      measure: stock_in
      type: sum
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#079c98"
    single_value_title: "% vs LY"
    conditional_formatting: [{type: greater than, value: 0, background_color: '',
        font_color: "#EA4335", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: '',
        font_color: "#7CB342", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [spending_analysis, stock_in]
    hidden_pivots: {}
    listen:
      Year: inventory_stock_mart.trans_start_date_year
      Month: inventory_stock_mart.trans_start_date_month
      Outlet: inventory_stock_mart.outlet_name
      Product: inventory_stock_mart.name
    row: 2
    col: 17
    width: 3
    height: 2
  - title: Untitled (Copy 6)
    name: Untitled (Copy 6)
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: single_value
    fields: [avg_ratio]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${stock_in}"
      label: Stock In
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: stock_in_1
      _type_hint: number
      is_disabled: true
    - category: measure
      expression:
      label: Stock In
      value_format:
      value_format_name:
      based_on: inventory_stock_mart.stock_in
      _kind_hint: measure
      measure: stock_in
      type: sum
      _type_hint: number
    - category: measure
      expression:
      label: Avg Ratio
      value_format:
      value_format_name:
      based_on: inventory_stock_mart.ratio
      _kind_hint: measure
      measure: avg_ratio
      type: average
      _type_hint: number
    - category: table_calculation
      expression: "${avg_ratio} * 10"
      label: Stock Turn Over
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: stock_turn_over
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#079c98"
    single_value_title: Stock Turnover
    defaults_version: 1
    hidden_fields: [spending_analysis, avg_ratio]
    hidden_pivots: {}
    listen:
      Year: inventory_stock_mart.trans_start_date_year
      Month: inventory_stock_mart.trans_start_date_month
      Outlet: inventory_stock_mart.outlet_name
      Product: inventory_stock_mart.name
    row: 2
    col: 20
    width: 4
    height: 2
  - title: Untitled (Copy 4)
    name: Untitled (Copy 4)
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: single_value
    fields: [stock_in]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${stock_in} * 0.93"
      label: 'Stock In '
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: stock_in_1
      _type_hint: number
    - category: measure
      expression:
      label: Stock In
      value_format:
      value_format_name:
      based_on: inventory_stock_mart.stock_grand_in
      _kind_hint: measure
      measure: stock_in
      type: sum
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#079c98"
    single_value_title: Total Stock In LY
    defaults_version: 1
    hidden_fields: [spending_analysis, stock_in]
    hidden_pivots: {}
    listen:
      Year: inventory_stock_mart.trans_start_date_year
      Month: inventory_stock_mart.trans_start_date_month
      Outlet: inventory_stock_mart.outlet_name
      Product: inventory_stock_mart.name
    row: 2
    col: 14
    width: 3
    height: 2
  - title: Untitled (Copy 3)
    name: Untitled (Copy 3)
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: single_value
    fields: [stock_in]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${stock_in}"
      label: Stock In
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: stock_in_1
      _type_hint: number
    - category: measure
      expression:
      label: Stock In
      value_format:
      value_format_name:
      based_on: inventory_stock_mart.stock_grand_in
      _kind_hint: measure
      measure: stock_in
      type: sum
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#079c98"
    single_value_title: Total Stock In
    defaults_version: 1
    hidden_fields: [spending_analysis, stock_in]
    hidden_pivots: {}
    listen:
      Year: inventory_stock_mart.trans_start_date_year
      Month: inventory_stock_mart.trans_start_date_month
      Outlet: inventory_stock_mart.outlet_name
      Product: inventory_stock_mart.name
    row: 2
    col: 10
    width: 4
    height: 2
  - title: Top 10 Products with Highest Stock Out Quantity
    name: Top 10 Products with Highest Stock Out Quantity
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: looker_bar
    fields: [stock_out, inventory_stock_mart.name]
    sorts: [stock_out desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Stock Out
      value_format:
      value_format_name:
      based_on: inventory_stock_mart.stock_out
      _kind_hint: measure
      measure: stock_out
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${stock_out}"
      label: Stock Out Qty
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: stock_out_qty
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: total_spending, id: total_spending,
            name: Total Spending}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      total_spending: "#079c98"
      stock_out_qty: "#079c98"
    custom_color_enabled: true
    custom_color: "#079c98"
    show_single_value_title: true
    single_value_title: Total Stock Out
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [spending_analysis, stock_out]
    listen:
      Year: inventory_stock_mart.trans_start_date_year
      Month: inventory_stock_mart.trans_start_date_month
      Outlet: inventory_stock_mart.outlet_name
      Product: inventory_stock_mart.name
    row: 4
    col: 0
    width: 12
    height: 7
  - title: Top 10 Products with Highest Stock In Quantity
    name: Top 10 Products with Highest Stock In Quantity
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: looker_bar
    fields: [stock_in, inventory_stock_mart.name]
    sorts: [stock_in desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Stock In
      value_format:
      value_format_name:
      based_on: inventory_stock_mart.stock_in
      _kind_hint: measure
      measure: stock_in
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${stock_in}"
      label: Stock In Qty
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: stock_in_qty
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: total_spending, id: total_spending,
            name: Total Spending}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      total_spending: "#079c98"
      stock_out_qty: "#079c98"
      stock_in_qty: "#12B5CB"
    custom_color_enabled: true
    custom_color: "#079c98"
    show_single_value_title: true
    single_value_title: Total Stock Out
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [spending_analysis, stock_out, stock_in]
    listen:
      Year: inventory_stock_mart.trans_start_date_year
      Month: inventory_stock_mart.trans_start_date_month
      Outlet: inventory_stock_mart.outlet_name
      Product: inventory_stock_mart.name
    row: 4
    col: 12
    width: 12
    height: 7
  - title: Top 10 Products with Highest Stock In Amount
    name: Top 10 Products with Highest Stock In Amount
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: looker_bar
    fields: [stock_in_amount, inventory_stock_mart.name]
    sorts: [stock_in_amount desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Stock In Amount
      value_format:
      value_format_name:
      based_on: inventory_stock_mart.stock_grand_in
      _kind_hint: measure
      measure: stock_in_amount
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${stock_in_amount}"
      label: Total Spending
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: total_spending
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: total_spending, id: total_spending,
            name: Total Spending}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      total_spending: "#12B5CB"
    custom_color_enabled: true
    custom_color: "#079c98"
    show_single_value_title: true
    single_value_title: Total Stock Out
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [spending_analysis, stock_out, stock_in_amount]
    listen:
      Year: inventory_stock_mart.trans_start_date_year
      Month: inventory_stock_mart.trans_start_date_month
      Outlet: inventory_stock_mart.outlet_name
      Product: inventory_stock_mart.name
    row: 11
    col: 12
    width: 12
    height: 7
  - title: Top 10 Outlets with Highest Stock Out Amount
    name: Top 10 Outlets with Highest Stock Out Amount
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: looker_bar
    fields: [stock_out_amount, inventory_stock_mart.outlet_name]
    sorts: [stock_out_amount desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Stock Out Amount
      value_format:
      value_format_name:
      based_on: inventory_stock_mart.stock_grand_out
      _kind_hint: measure
      measure: stock_out_amount
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${stock_out_amount}"
      label: Total Spending
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: total_spending
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: total_spending, id: total_spending,
            name: Total Spending}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      total_spending: "#079c98"
    custom_color_enabled: true
    custom_color: "#079c98"
    show_single_value_title: true
    single_value_title: Total Stock Out
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [spending_analysis, stock_out, stock_in_amount, stock_out_amount]
    listen:
      Year: inventory_stock_mart.trans_start_date_year
      Month: inventory_stock_mart.trans_start_date_month
      Outlet: inventory_stock_mart.outlet_name
      Product: inventory_stock_mart.name
    row: 18
    col: 0
    width: 7
    height: 7
  - title: Top 10 Products with Highest Stock Turnover
    name: Top 10 Products with Highest Stock Turnover
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: looker_bar
    fields: [avg_ratio, inventory_stock_mart.name]
    sorts: [avg_ratio desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${stock_in}"
      label: Stock In
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: stock_in_1
      _type_hint: number
      is_disabled: true
    - category: measure
      expression:
      label: Stock In
      value_format:
      value_format_name:
      based_on: inventory_stock_mart.stock_in
      _kind_hint: measure
      measure: stock_in
      type: sum
      _type_hint: number
    - category: measure
      expression:
      label: Avg Ratio
      value_format:
      value_format_name:
      based_on: inventory_stock_mart.ratio
      _kind_hint: measure
      measure: avg_ratio
      type: average
      _type_hint: number
    - category: table_calculation
      expression: "${avg_ratio} * 10"
      label: Stock Turn Over
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: stock_turn_over
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: stock_turn_over, id: stock_turn_over,
            name: Stock Turn Over}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    series_colors:
      stock_turn_over: "#FF8168"
    custom_color_enabled: true
    custom_color: "#079c98"
    show_single_value_title: true
    single_value_title: Stock Turnover
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [spending_analysis, avg_ratio]
    hidden_pivots: {}
    listen:
      Year: inventory_stock_mart.trans_start_date_year
      Month: inventory_stock_mart.trans_start_date_month
      Outlet: inventory_stock_mart.outlet_name
      Product: inventory_stock_mart.name
    row: 18
    col: 14
    width: 10
    height: 7
  - title: Top 10 Products with Highest Stock Out Amount
    name: Top 10 Products with Highest Stock Out Amount
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: looker_bar
    fields: [stock_out_amount, inventory_stock_mart.name]
    sorts: [stock_out_amount desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Stock Out Amount
      value_format:
      value_format_name:
      based_on: inventory_stock_mart.stock_grand_out
      _kind_hint: measure
      measure: stock_out_amount
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${stock_out_amount}"
      label: Total Spending
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: total_spending
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: total_spending, id: total_spending,
            name: Total Spending}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      total_spending: "#079c98"
    custom_color_enabled: true
    custom_color: "#079c98"
    show_single_value_title: true
    single_value_title: Total Stock Out
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [spending_analysis, stock_out, stock_in_amount, stock_out_amount]
    listen:
      Year: inventory_stock_mart.trans_start_date_year
      Month: inventory_stock_mart.trans_start_date_month
      Outlet: inventory_stock_mart.outlet_name
      Product: inventory_stock_mart.name
    row: 11
    col: 0
    width: 12
    height: 7
  - title: Top 10 Outlets with Highest Stock In Amount
    name: Top 10 Outlets with Highest Stock In Amount
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: looker_bar
    fields: [stock_in_amount, inventory_stock_mart.outlet_name]
    sorts: [stock_in_amount desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Stock In Amount
      value_format:
      value_format_name:
      based_on: inventory_stock_mart.stock_grand_in
      _kind_hint: measure
      measure: stock_in_amount
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${stock_in_amount}"
      label: Total Spending
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: total_spending
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: total_spending, id: total_spending,
            name: Total Spending}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      total_spending: "#12B5CB"
    custom_color_enabled: true
    custom_color: "#079c98"
    show_single_value_title: true
    single_value_title: Total Stock Out
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [spending_analysis, stock_out, stock_in_amount]
    listen:
      Year: inventory_stock_mart.trans_start_date_year
      Month: inventory_stock_mart.trans_start_date_month
      Outlet: inventory_stock_mart.outlet_name
      Product: inventory_stock_mart.name
    row: 18
    col: 7
    width: 7
    height: 7
  - title: Stock Details
    name: Stock Details
    model: novitee_analysis_model
    explore: inventory_stock_mart
    type: looker_grid
    fields: [inventory_stock_mart.outlet_name, stock_out_amount, stock_out_qty, stock_in_amount,
      stock_in_qty, avg_ratio, inventory_stock_mart.name]
    sorts: [stock_out_amount desc]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${stock_out_qty}"
      label: Stock Out Qty
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: stock_out_qty_1
      _type_hint: number
    - category: table_calculation
      expression: "${stock_out_amount}"
      label: Stock Out Amount
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: stock_out_amount_1
      _type_hint: number
    - category: table_calculation
      expression: "${stock_in_qty}"
      label: Stock In Qty
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: stock_in_qty_1
      _type_hint: number
    - category: table_calculation
      expression: "${stock_in_amount}"
      label: Stock In Amount
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: stock_in_amount_1
      _type_hint: number
    - category: measure
      expression:
      label: Stock Out Amount
      value_format:
      value_format_name:
      based_on: inventory_stock_mart.stock_grand_out
      _kind_hint: measure
      measure: stock_out_amount
      type: sum
      _type_hint: number
    - category: measure
      expression:
      label: Stock Out Qty
      value_format:
      value_format_name:
      based_on: inventory_stock_mart.stock_out
      _kind_hint: measure
      measure: stock_out_qty
      type: sum
      _type_hint: number
    - category: measure
      expression:
      label: Stock In Amount
      value_format:
      value_format_name:
      based_on: inventory_stock_mart.stock_grand_in
      _kind_hint: measure
      measure: stock_in_amount
      type: sum
      _type_hint: number
    - category: measure
      expression:
      label: Stock In Qty
      value_format:
      value_format_name:
      based_on: inventory_stock_mart.stock_in
      _kind_hint: measure
      measure: stock_in_qty
      type: sum
      _type_hint: number
    - category: measure
      expression:
      label: Avg Ratio
      value_format:
      value_format_name:
      based_on: inventory_stock_mart.ratio
      _kind_hint: measure
      measure: avg_ratio
      type: average
      _type_hint: number
    - category: table_calculation
      expression: "${avg_ratio} * 10"
      label: Stock Turn Over
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: stock_turn_over
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
    series_labels:
      inventory_stock_mart.outlet_name: Outlet
      inventory_stock_mart.name: Product
    series_cell_visualizations:
      stock_out_amount_1:
        is_active: true
      stock_in_amount_1:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: false
    y_axes: [{label: '', orientation: left, series: [{axisId: total_spending, id: total_spending,
            name: Total Spending}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: normal
    legend_position: center
    point_style: none
    series_colors:
      total_spending: "#12B5CB"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    custom_color: "#079c98"
    show_single_value_title: true
    single_value_title: Total Stock Out
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    hidden_fields: [spending_analysis, stock_out, stock_in_amount, stock_out_amount,
      stock_out_qty, stock_in_qty, avg_ratio]
    hidden_pivots: {}
    listen:
      Year: inventory_stock_mart.trans_start_date_year
      Month: inventory_stock_mart.trans_start_date_month
      Outlet: inventory_stock_mart.outlet_name
      Product: inventory_stock_mart.name
    row: 25
    col: 0
    width: 24
    height: 8
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
    explore: inventory_stock_mart
    listens_to_filters: []
    field: inventory_stock_mart.trans_start_date_year
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
    explore: inventory_stock_mart
    listens_to_filters: []
    field: inventory_stock_mart.trans_start_date_month
  - name: Outlet
    title: Outlet
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: novitee_analysis_model
    explore: inventory_stock_mart
    listens_to_filters: []
    field: inventory_stock_mart.outlet_name
  - name: Product
    title: Product
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: novitee_analysis_model
    explore: inventory_stock_mart
    listens_to_filters: []
    field: inventory_stock_mart.name
