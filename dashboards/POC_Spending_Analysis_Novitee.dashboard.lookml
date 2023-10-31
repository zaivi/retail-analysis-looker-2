---
- dashboard: poc__spending_analysis__novitee
  title: POC - Spending Analysis - Novitee
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: RuDLIxnxJ63B7MvyVH1R9i
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"border-bottom: solid 1px #000;\">\n \n<nav style=\"font-size:\
      \ 18px; padding: 5px 10px 0 10px; height: 60px\" >\n\n<a style=\"padding: 5px\
      \ 15px; float: left; line-height: 40px; border-radius: 5px 5px 0 0; font-weight:\
      \ bold; color:#fff; background-color: #079c98\" href=\"#\" class=\"test\"> Spending\
      \ Analysis </a>\n\n<a style=\"padding: 5px 15px; border-bottom: solid 1px #000;color:\
      \ #079c98; float: left; line-height: 40px; \" href=\"/dashboards/28\" >  Receiving\
      \ Analysis </a>\n\n<a style=\"padding: 5px 15px; border-bottom: solid 1px #000;color:\
      \ #079c98; float: left; line-height: 40px;\" href=\"/dashboards/30\" > Stock\
      \ Analysis </a>\n\n<a style=\"padding: 5px 15px; border-bottom: solid 1px #000;color:\
      \ #079c98; float: left; line-height: 40px;\" href=\"/dashboards/40\" > Forecasting\
      \ </a>\n\n</nav>\n\n</div>"
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Untitled (Copy 7)
    name: Untitled (Copy 7)
    model: novitee_analysis_model
    explore: purchase_order
    type: single_value
    fields: [total_spending]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Total Spending
      value_format:
      value_format_name:
      based_on: purchase_order.grand_total
      _kind_hint: measure
      measure: total_spending
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${total_spending} * 1.2"
      label: Total Spending
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: total_spending_1
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
    single_value_title: Total Spending LY
    defaults_version: 1
    hidden_fields: [total_spending]
    listen:
      Year: purchase_order.order_year
      Month: purchase_order.order_month
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
    row: 2
    col: 4
    width: 3
    height: 2
  - title: Untitled
    name: Untitled
    model: novitee_analysis_model
    explore: purchase_order
    type: single_value
    fields: [total_spending]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Total Spending
      value_format:
      value_format_name:
      based_on: purchase_order.grand_total
      _kind_hint: measure
      measure: total_spending
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${total_spending}"
      label: Total Spending
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: total_spending_1
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
    single_value_title: Total Spending
    defaults_version: 1
    hidden_fields: [total_spending]
    listen:
      Year: purchase_order.order_year
      Month: purchase_order.order_month
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
    row: 2
    col: 0
    width: 4
    height: 2
  - title: Untitled (Copy 3)
    name: Untitled (Copy 3)
    model: novitee_analysis_model
    explore: purchase_order
    type: single_value
    fields: [purchase_order.count_of_po_number]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Total Spending
      value_format:
      value_format_name:
      based_on: purchase_order.grand_total
      _kind_hint: measure
      measure: total_spending
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${purchase_order.count_of_po_number} * 0.9"
      label: "# of PO"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: of_po
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
    single_value_title: "# of Orders LY"
    defaults_version: 1
    hidden_fields: [purchase_order.count_of_po_number]
    hidden_pivots: {}
    listen:
      Year: purchase_order.order_year
      Month: purchase_order.order_month
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
    row: 2
    col: 14
    width: 3
    height: 2
  - title: Untitled (Copy)
    name: Untitled (Copy)
    model: novitee_analysis_model
    explore: purchase_order
    type: single_value
    fields: [total_spending]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Total Spending
      value_format:
      value_format_name:
      based_on: purchase_order.grand_total
      _kind_hint: measure
      measure: total_spending
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "(${total_spending} - ${total_spending} * 1.2) / (${total_spending}\
        \ * 1.2)"
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
        font_color: "#EA4335", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: '',
        font_color: "#7CB342", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [total_spending]
    listen:
      Year: purchase_order.order_year
      Month: purchase_order.order_month
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
    row: 2
    col: 7
    width: 3
    height: 2
  - title: Untitled (Copy 4)
    name: Untitled (Copy 4)
    model: novitee_analysis_model
    explore: purchase_order
    type: single_value
    fields: [purchase_order.count_of_po_number]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Total Spending
      value_format:
      value_format_name:
      based_on: purchase_order.grand_total
      _kind_hint: measure
      measure: total_spending
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "(${purchase_order.count_of_po_number} - ${purchase_order.count_of_po_number}\
        \ * 0.9) / (${purchase_order.count_of_po_number} * 0.9)"
      label: "# of PO"
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: of_po
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
    single_value_title: "% vs LY"
    conditional_formatting: [{type: greater than, value: 0, background_color: '',
        font_color: "#7CB342", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: '',
        font_color: "#EA4335", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [purchase_order.count_of_po_number]
    hidden_pivots: {}
    listen:
      Year: purchase_order.order_year
      Month: purchase_order.order_month
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
    row: 2
    col: 17
    width: 3
    height: 2
  - title: Untitled (Copy 2)
    name: Untitled (Copy 2)
    model: novitee_analysis_model
    explore: purchase_order
    type: single_value
    fields: [purchase_order.count_of_po_number]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Total Spending
      value_format:
      value_format_name:
      based_on: purchase_order.grand_total
      _kind_hint: measure
      measure: total_spending
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${purchase_order.count_of_po_number}"
      label: "# of PO"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: of_po
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
    single_value_title: "# of Orders"
    defaults_version: 1
    hidden_fields: [purchase_order.count_of_po_number]
    hidden_pivots: {}
    listen:
      Year: purchase_order.order_year
      Month: purchase_order.order_month
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
    row: 2
    col: 10
    width: 4
    height: 2
  - title: Untitled (Copy 5)
    name: Untitled (Copy 5)
    model: novitee_analysis_model
    explore: purchase_order
    type: single_value
    fields: [purchase_order.count_of_po_number, of_product]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Total Spending
      value_format:
      value_format_name:
      based_on: purchase_order.grand_total
      _kind_hint: measure
      measure: total_spending
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${purchase_order.count_of_po_number}"
      label: "# of PO"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: of_po
      _type_hint: number
      is_disabled: true
    - category: measure
      expression:
      label: "# Of Product "
      value_format:
      value_format_name:
      based_on: purchase_order.stock_code
      _kind_hint: measure
      measure: of_product
      type: count_distinct
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
    single_value_title: "# of Products has Order"
    defaults_version: 1
    hidden_fields: [purchase_order.count_of_po_number]
    hidden_pivots: {}
    listen:
      Year: purchase_order.order_year
      Month: purchase_order.order_month
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
    row: 2
    col: 20
    width: 4
    height: 2
  - title: Spending Trend by Month
    name: Spending Trend by Month
    model: novitee_analysis_model
    explore: purchase_order
    type: looker_column
    fields: [purchase_order.order_month, total_spending]
    fill_fields: [purchase_order.order_month]
    sorts: [purchase_order.order_month]
    limit: 7
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${total_spending}"
      label: Spending
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: spending
      _type_hint: number
    - category: table_calculation
      expression: "(${spending} - ${spending}*0.9)/ (${spending}*0.9) * rand()"
      label: "% vs LY"
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: vs_ly
      _type_hint: number
    - category: measure
      expression:
      label: Total Spending
      value_format:
      value_format_name:
      based_on: purchase_order.grand_total
      _kind_hint: measure
      measure: total_spending
      type: sum
      _type_hint: number
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: spending, id: spending,
            name: Spending}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: vs_ly, id: vs_ly, name: "% vs LY"}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      vs_ly: line
    series_colors:
      spending: "#079c98"
      vs_ly: "#F9AB00"
    column_group_spacing_ratio: 0.5
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
    single_value_title: Total Spending
    defaults_version: 1
    hidden_fields: [total_spending]
    listen:
      Year: purchase_order.order_year
      Month: purchase_order.order_month
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
    row: 4
    col: 0
    width: 12
    height: 8
  - title: Top 10 Products with Highest Spending
    name: Top 10 Products with Highest Spending
    model: novitee_analysis_model
    explore: purchase_order
    type: looker_bar
    fields: [total_spending, purchase_order.stock_name]
    sorts: [total_spending desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${total_spending}"
      label: Spending
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: spending
      _type_hint: number
    - category: table_calculation
      expression: "${spending} * 0 + rand() * 20/100"
      label: "% vs LY"
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: vs_ly
      _type_hint: number
      is_disabled: true
    - category: measure
      expression:
      label: Total Spending
      value_format:
      value_format_name:
      based_on: purchase_order.grand_total
      _kind_hint: measure
      measure: total_spending
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: spending, id: spending,
            name: Spending}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: vs_ly, id: vs_ly, name: "% vs LY"}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      spending: "#079c98"
      vs_ly: "#F9AB00"
    column_group_spacing_ratio: 0.5
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
    single_value_title: Total Spending
    defaults_version: 1
    hidden_fields: [total_spending]
    hidden_pivots: {}
    listen:
      Year: purchase_order.order_year
      Month: purchase_order.order_month
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
    row: 12
    col: 12
    width: 12
    height: 8
  - title: Top 10 Suppliers with Highest Spending
    name: Top 10 Suppliers with Highest Spending
    model: novitee_analysis_model
    explore: purchase_order
    type: looker_bar
    fields: [total_spending, purchase_order.supplier_name]
    sorts: [total_spending desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${total_spending}"
      label: Spending
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: spending
      _type_hint: number
    - category: table_calculation
      expression: "${spending} * 0 + rand() * 20/100"
      label: "% vs LY"
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: vs_ly
      _type_hint: number
      is_disabled: true
    - category: measure
      expression:
      label: Total Spending
      value_format:
      value_format_name:
      based_on: purchase_order.grand_total
      _kind_hint: measure
      measure: total_spending
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: spending, id: spending,
            name: Spending}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: vs_ly, id: vs_ly, name: "% vs LY"}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      spending: "#079c98"
      vs_ly: "#F9AB00"
    column_group_spacing_ratio: 0.5
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
    single_value_title: Total Spending
    defaults_version: 1
    hidden_fields: [total_spending]
    hidden_pivots: {}
    listen:
      Year: purchase_order.order_year
      Month: purchase_order.order_month
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
    row: 12
    col: 0
    width: 12
    height: 8
  - title: Top 10 Outlets with Highest Spending
    name: Top 10 Outlets with Highest Spending
    model: novitee_analysis_model
    explore: purchase_order
    type: looker_bar
    fields: [total_spending, purchase_order.outlet_name]
    sorts: [total_spending desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${total_spending}"
      label: Spending
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: spending
      _type_hint: number
    - category: table_calculation
      expression: "${spending} * 0 + rand() * 20/100"
      label: "% vs LY"
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: vs_ly
      _type_hint: number
      is_disabled: true
    - category: measure
      expression:
      label: Total Spending
      value_format:
      value_format_name:
      based_on: purchase_order.grand_total
      _kind_hint: measure
      measure: total_spending
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: spending, id: spending,
            name: Spending}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: vs_ly, id: vs_ly, name: "% vs LY"}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      spending: "#079c98"
      vs_ly: "#F9AB00"
    column_group_spacing_ratio: 0.5
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
    single_value_title: Total Spending
    defaults_version: 1
    hidden_fields: [total_spending]
    hidden_pivots: {}
    listen:
      Year: purchase_order.order_year
      Month: purchase_order.order_month
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
    row: 4
    col: 12
    width: 12
    height: 8
  - title: Order Detail
    name: Order Detail
    model: novitee_analysis_model
    explore: purchase_order
    type: looker_grid
    fields: [purchase_order.outlet_name, purchase_order.supplier_name, purchase_order.stock_name,
      total_spending]
    sorts: [total_spending desc]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${total_spending}"
      label: Total Spending
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: total_spending_1
      _type_hint: number
    - category: table_calculation
      expression: "${total_spending} * 0.9"
      label: Total Spending LY
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: total_spending_ly
      _type_hint: number
    - category: table_calculation
      expression: "(${total_spending_1} - ${total_spending_1}*0.9)/ (${total_spending_1}*0.9)\
        \ * rand()"
      label: "% vs LY"
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: vs_ly
      _type_hint: number
    - category: measure
      expression:
      label: Total Spending
      value_format:
      value_format_name:
      based_on: purchase_order.grand_total
      _kind_hint: measure
      measure: total_spending
      type: sum
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
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      purchase_order.outlet_name: Outlet
      purchase_order.supplier_name: Supplier
      purchase_order.stock_name: Product
    series_cell_visualizations:
      total_spending_1:
        is_active: true
    conditional_formatting: [{type: greater than, value: 0, background_color: '',
        font_color: "#7CB342", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [vs_ly]}, {type: less than, value: 0, background_color: '',
        font_color: "#EA4335", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [vs_ly]}]
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    stacking: normal
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: spending, id: spending,
            name: Spending}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: vs_ly, id: vs_ly, name: "% vs LY"}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      spending: "#079c98"
      vs_ly: "#F9AB00"
    column_group_spacing_ratio: 0.5
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#079c98"
    single_value_title: Total Spending
    defaults_version: 1
    hidden_fields: [total_spending]
    listen:
      Year: purchase_order.order_year
      Month: purchase_order.order_month
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
    row: 20
    col: 0
    width: 24
    height: 9
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
    explore: purchase_order
    listens_to_filters: []
    field: purchase_order.order_year
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
    explore: purchase_order
    listens_to_filters: []
    field: purchase_order.order_month
  - name: Supplier
    title: Supplier
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
    field: purchase_order.supplier_name
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
    explore: purchase_order
    listens_to_filters: []
    field: purchase_order.outlet_name
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
    explore: purchase_order
    listens_to_filters: []
    field: purchase_order.stock_name
