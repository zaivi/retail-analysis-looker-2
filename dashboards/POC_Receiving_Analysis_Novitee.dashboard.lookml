---
- dashboard: poc__receiving_analysis__novitee
  title: POC - Receiving Analysis - Novitee
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: lwRYxKaI3U1dkpOaLajn6e
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"border-bottom: solid 1px #000;\">\n \n<nav style=\"font-size:\
      \ 18px; padding: 5px 10px 0 10px; height: 60px\" >\n\n\n<a style=\"padding:\
      \ 5px 15px; border-bottom: solid 1px #000;color: #079c98; float: left; line-height:\
      \ 40px; \" href=\"/dashboards/27\" > Spending Analysis </a>\n\n<a style=\"padding:\
      \ 5px 15px; float: left; line-height: 40px; border-radius: 5px 5px 0 0; font-weight:\
      \ bold; color:#fff; background-color: #079c98\" href=\"#\" class=\"test\"> Receiving\
      \ Analysis </a>\n\n<a style=\"padding: 5px 15px; border-bottom: solid 1px #000;color:\
      \ #079c98; float: left; line-height: 40px;\" href=\"/dashboards/30\" > Stock\
      \ Analysis </a>\n\n<a style=\"padding: 5px 15px; border-bottom: solid 1px #000;color:\
      \ #079c98; float: left; line-height: 40px; \" href=\"/dashboards/40\" > Forecasting\
      \ </a>\n\n</nav>\n\n</div>"
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Untitled
    name: Untitled
    model: novitee_analysis_model
    explore: purchase_order
    type: single_value
    fields: [purchase_order.sum_quanity_of_po]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${purchase_order.sum_quanity_of_po}"
      label: Quantity
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: quantity
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
    single_value_title: Ordered Quantity
    defaults_version: 1
    hidden_fields: [purchase_order.sum_quanity_of_po]
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
  - title: Untitled (Copy)
    name: Untitled (Copy)
    model: novitee_analysis_model
    explore: purchase_order
    type: single_value
    fields: [purchase_order.sum_quanity_of_po]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${purchase_order.sum_quanity_of_po} * 0.9"
      label: Quantity
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: quantity
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
    single_value_title: Received Quantity
    defaults_version: 1
    hidden_fields: [purchase_order.sum_quanity_of_po]
    listen:
      Year: purchase_order.order_year
      Month: purchase_order.order_month
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
    row: 2
    col: 4
    width: 4
    height: 2
  - title: Untitled (Copy 2)
    name: Untitled (Copy 2)
    model: novitee_analysis_model
    explore: purchase_order
    type: single_value
    fields: [purchase_order.sum_quanity_of_po]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${purchase_order.sum_quanity_of_po} * 0.1"
      label: Quantity
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: quantity
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
    custom_color: "#E8710A"
    single_value_title: Not Received Quantity
    defaults_version: 1
    hidden_fields: [purchase_order.sum_quanity_of_po]
    listen:
      Year: purchase_order.order_year
      Month: purchase_order.order_month
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
    row: 2
    col: 8
    width: 4
    height: 2
  - title: Untitled (Copy 3)
    name: Untitled (Copy 3)
    model: novitee_analysis_model
    explore: purchase_order
    type: single_value
    fields: [purchase_order.sum_quanity_of_po]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "( ${purchase_order.sum_quanity_of_po} * 0.104) / (${purchase_order.sum_quanity_of_po})"
      label: "% Not Received Qty"
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: not_received_qty
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
    custom_color: "#E8710A"
    single_value_title: "% Not Received Quantity"
    defaults_version: 1
    hidden_fields: [purchase_order.sum_quanity_of_po]
    hidden_pivots: {}
    listen:
      Year: purchase_order.order_year
      Month: purchase_order.order_month
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
    row: 2
    col: 12
    width: 4
    height: 2
  - title: Untitled (Copy 4)
    name: Untitled (Copy 4)
    model: novitee_analysis_model
    explore: purchase_order
    type: single_value
    fields: [of_product]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "( ${purchase_order.sum_quanity_of_po} * 0.104) / (${purchase_order.sum_quanity_of_po})"
      label: "% Not Received Qty"
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: not_received_qty
      _type_hint: number
      is_disabled: true
    - category: measure
      expression:
      label: "# of Product"
      value_format:
      value_format_name:
      based_on: purchase_order.stock_code
      _kind_hint: measure
      measure: of_product
      type: count_distinct
      _type_hint: number
      filters: {}
    - category: table_calculation
      expression: "${of_product} * 0.05"
      label: "# of Products (not received)"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: of_products_not_received
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
    custom_color: "#E8710A"
    single_value_title: "# of Products (Not Fully Received)"
    defaults_version: 1
    hidden_fields: [of_product]
    hidden_pivots: {}
    listen:
      Year: purchase_order.order_year
      Month: purchase_order.order_month
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
    row: 2
    col: 16
    width: 4
    height: 2
  - title: Untitled (Copy 5)
    name: Untitled (Copy 5)
    model: novitee_analysis_model
    explore: purchase_order
    type: single_value
    fields: [of_supplier]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "( ${purchase_order.sum_quanity_of_po} * 0.104) / (${purchase_order.sum_quanity_of_po})"
      label: "% Not Received Qty"
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: not_received_qty
      _type_hint: number
      is_disabled: true
    - category: measure
      expression:
      label: "# of Product"
      value_format:
      value_format_name:
      based_on: purchase_order.stock_code
      _kind_hint: measure
      measure: of_product
      type: count_distinct
      _type_hint: number
      filters: {}
    - category: table_calculation
      expression: "${of_supplier} * 0.1"
      label: "# of Suppliers (not received)"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: of_suppliers_not_received
      _type_hint: number
    - category: measure
      expression:
      label: "# of Supplier"
      value_format:
      value_format_name:
      based_on: purchase_order.supplier_code
      _kind_hint: measure
      measure: of_supplier
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
    custom_color: "#E8710A"
    single_value_title: "# of Suppliers (Not Fully Received)"
    defaults_version: 1
    hidden_fields: [of_supplier]
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
  - title: Received vs Ordered Quantity by Month
    name: Received vs Ordered Quantity by Month
    model: novitee_analysis_model
    explore: purchase_order
    type: looker_column
    fields: [purchase_order.sum_quanity_of_po, purchase_order.order_month]
    filters:
      purchase_order.sum_quanity_of_po: ">0"
    sorts: [purchase_order.order_month desc]
    limit: 7
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${purchase_order.sum_quanity_of_po} * 0.9"
      label: Quantity
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: quantity
      _type_hint: number
    - category: table_calculation
      expression: "${quantity} * 0.1"
      label: Not Received
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: not_received
      _type_hint: number
    - category: table_calculation
      expression: "${not_received} /${quantity} * rand()"
      label: "% Not Received"
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: not_received_1
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
    y_axes: [{label: '', orientation: left, series: [{axisId: quantity, id: quantity,
            name: Quantity}, {axisId: not_received, id: not_received, name: Not Received}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: '', orientation: right, series: [
          {axisId: not_received_1, id: not_received_1, name: "% Not Received"}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      not_received_1: line
    series_colors:
      quantity: "#079c98"
      not_received: "#E8710A"
      not_received_1: "#F9AB00"
    series_labels:
      quantity: Received Quantity
      not_received: Not Received Quantity
      not_received_1: "% Not Received Quantity"
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
    single_value_title: Received Quantity
    defaults_version: 1
    hidden_fields: [purchase_order.sum_quanity_of_po]
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
  - title: Received vs Ordered Detail
    name: Received vs Ordered Detail
    model: novitee_analysis_model
    explore: purchase_order
    type: looker_grid
    fields: [purchase_order.outlet_name, purchase_order.supplier_name, purchase_order.stock_name,
      purchase_order.receiving_uom, purchase_order.sum_quanity_of_po, purchase_order.count_of_po_number]
    sorts: [purchase_order.sum_quanity_of_po desc]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${purchase_order.count_of_po_number} - 1"
      label: "# of Order (Fully Received)"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: of_order_fully_received
      _type_hint: number
    - category: table_calculation
      expression: "${purchase_order.sum_quanity_of_po}"
      label: Ordered Quantity
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: ordered_quantity
      _type_hint: number
    - category: table_calculation
      expression: "${purchase_order.sum_quanity_of_po} * 0.99"
      label: Received Quantity
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: received_quantity
      _type_hint: number
    - category: table_calculation
      expression: "${purchase_order.sum_quanity_of_po} * 0.01"
      label: Not Received Quantity
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: not_received_quantity
      _type_hint: number
    - category: table_calculation
      expression: "${not_received_quantity} /${ordered_quantity} + rand()/10"
      label: "% Not Received"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      table_calculation: not_received
      _type_hint: number
    filter_expression: matches_filter(${purchase_order.order_month}, `10 months`)
      AND matches_filter(${purchase_order.order_month}, `before 2 month ago`)
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
      quantity: Received Quantity
      not_received: "% Not Received Quantity"
      not_received_1: "% Not Received Quantity"
      purchase_order.outlet_name: Outlet
      purchase_order.supplier_name: Supplier
      purchase_order.stock_name: Product
      purchase_order.receiving_uom: UOM
      purchase_order.count_of_po_number: "# of Order"
    series_cell_visualizations:
      purchase_order.count_of_po_number:
        is_active: false
      ordered_quantity:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: quantity, id: quantity,
            name: Quantity}, {axisId: not_received, id: not_received, name: Not Received}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: '', orientation: right, series: [
          {axisId: not_received_1, id: not_received_1, name: "% Not Received"}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      quantity: "#079c98"
      not_received: "#E8710A"
      not_received_1: "#F9AB00"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#079c98"
    single_value_title: Received Quantity
    defaults_version: 1
    hidden_fields: [purchase_order.sum_quanity_of_po]
    hidden_pivots: {}
    listen:
      Year: purchase_order.order_year
      Month: purchase_order.order_month
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
    row: 12
    col: 0
    width: 24
    height: 9
  - title: "# of Fully Received vs not Fully Received Ordered by Month"
    name: "# of Fully Received vs not Fully Received Ordered by Month"
    model: novitee_analysis_model
    explore: purchase_order
    type: looker_column
    fields: [purchase_order.sum_quanity_of_po, purchase_order.order_month, purchase_order.count_of_po_number]
    filters:
      purchase_order.count_of_po_number: ">0"
    sorts: [purchase_order.order_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${purchase_order.count_of_po_number} * 0.9"
      label: Quantity
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: quantity
      _type_hint: number
    - category: table_calculation
      expression: "${purchase_order.count_of_po_number} * 0.1"
      label: Not Received
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: not_received
      _type_hint: number
    - category: table_calculation
      expression: "${not_received} /${quantity} + rand()/10"
      label: "% Not Received"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      table_calculation: not_received_1
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
    y_axes: [{label: '', orientation: left, series: [{axisId: quantity, id: quantity,
            name: Quantity}, {axisId: not_received, id: not_received, name: Not Received}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: '', orientation: right, series: [
          {axisId: not_received_1, id: not_received_1, name: "% Not Received"}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      not_received_1: line
    series_colors:
      quantity: "#079c98"
      not_received: "#E8710A"
      not_received_1: "#F9AB00"
    series_labels:
      not_received: "# of Order (not Fully Received)"
      not_received_1: "% Not Fully Received Order"
      quantity: "# of Order (Fully Received)"
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
    single_value_title: Received Quantity
    defaults_version: 1
    hidden_fields: [purchase_order.sum_quanity_of_po, purchase_order.count_of_po_number]
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
