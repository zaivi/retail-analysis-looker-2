---
- dashboard: poc__pricing_analysis__novitee
  title: POC - Pricing Analysis - Novitee
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: wvmFy4JVtc1bvGsfkUPiXY
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"border-bottom: solid 1px #000;\">\n \n<nav style=\"font-size:\
      \ 18px; padding: 5px 10px 0 10px; height: 60px\" >\n\n\n<a style=\"padding:\
      \ 5px 15px; border-bottom: solid 1px #000;color: #079c98; float: left; line-height:\
      \ 40px; \" href=\"/dashboards/27\" >  Spending Analysis </a>\n\n\n<a style=\"\
      padding: 5px 15px; border-bottom: solid 1px #000; color: #079c98; float: left;\
      \ line-height: 40px;\" href=\"/dashboards/28\" > Receiving Analysis </a>\n\n\
      <a style=\"padding: 5px 15px; float: left; line-height: 40px; border-radius:\
      \ 5px 5px 0 0; font-weight: bold; color:#fff; background-color: #079c98\" href=\"\
      #\" class=\"test\"> Pricing Analysis </a>\n\n<a style=\"padding: 5px 15px; border-bottom:\
      \ solid 1px #000;color: #079c98; float: left; line-height: 40px;\" href=\"/dashboards/30\"\
      \ > Stock Analysis </a>\n\n<a style=\"padding: 5px 15px; border-bottom: solid\
      \ 1px #000;color: #079c98; float: left; line-height: 40px;\" href=\"/dashboards/11\"\
      \ > Forecasting </a>\n\n</nav>\n\n</div>"
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Untitled
    name: Untitled
    model: novitee_analysis_model
    explore: purchase_order
    type: single_value
    fields: [total_spending, avg_current_buying_price]
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
      expression: "${avg_current_buying_price}"
      label: Avg Current Price
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: avg_current_price
      _type_hint: number
    - category: measure
      expression:
      label: Avg Current Buying Price
      value_format:
      value_format_name:
      based_on: purchase_order.unit_price_before_tax
      _kind_hint: measure
      measure: avg_current_buying_price
      type: average
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
    single_value_title: Avg Current Buying Price
    defaults_version: 1
    hidden_fields: [total_spending, avg_current_buying_price]
    listen:
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
      Year: purchase_order.order_year
      Month: purchase_order.order_month
    row: 2
    col: 2
    width: 4
    height: 2
  - title: Average Price Trend (Current Buying vs Market)
    name: Average Price Trend (Current Buying vs Market)
    model: novitee_analysis_model
    explore: purchase_order
    type: looker_line
    fields: [total_spending, avg_current_buying_price, purchase_order.order_month,
      avg_market_price]
    fill_fields: [purchase_order.order_month]
    filters:
      avg_current_buying_price: ">0"
    sorts: [purchase_order.order_month desc]
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
      expression: "${avg_current_buying_price}"
      label: Avg Current Price
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: avg_current_price
      _type_hint: number
    - category: measure
      expression:
      label: Avg Current Buying Price
      value_format:
      value_format_name:
      based_on: purchase_order.unit_price_before_tax
      _kind_hint: measure
      measure: avg_current_buying_price
      type: average
      _type_hint: number
    - category: measure
      expression:
      label: Avg Market Price
      value_format:
      value_format_name:
      based_on: purchase_order.unit_price_after_tax
      _kind_hint: measure
      measure: avg_market_price
      type: average
      _type_hint: number
    - category: table_calculation
      expression: "${avg_market_price}"
      label: Avg Market Price
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: avg_market_price_1
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
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: avg_current_price, id: Angliss
              Singapore Pte Ltd - avg_current_price, name: Angliss Singapore Pte Ltd},
          {axisId: avg_current_price, id: Bevolution - avg_current_price, name: Bevolution},
          {axisId: avg_current_price, id: Bukit Timah (China) - avg_current_price,
            name: Bukit Timah (China)}, {axisId: avg_current_price, id: Chee Song
              Foods - avg_current_price, name: Chee Song Foods}, {axisId: avg_current_price,
            id: Coca Cola Singapore Beverages Pte. Ltd. - avg_current_price, name: Coca
              Cola Singapore Beverages Pte. Ltd.}, {axisId: avg_current_price, id: EBUY
              PTE LTD - avg_current_price, name: EBUY PTE LTD}, {axisId: avg_current_price,
            id: GALA FOOD PTE LTD - avg_current_price, name: GALA FOOD PTE LTD}, {
            axisId: avg_current_price, id: GALA FOOD PTE LTD (Consumer) - avg_current_price,
            name: GALA FOOD PTE LTD (Consumer)}, {axisId: avg_current_price, id: GALA
              FOOD PTE LTD (External) - avg_current_price, name: GALA FOOD PTE LTD
              (External)}, {axisId: avg_current_price, id: Gala Food Pte Ltd (OFFICE)
              - avg_current_price, name: Gala Food Pte Ltd (OFFICE)}, {axisId: avg_current_price,
            id: Glife Technologies Pte Ltd - avg_current_price, name: Glife Technologies
              Pte Ltd}, {axisId: avg_current_price, id: GOLD HOG SUPPLY PTE LTD -
              avg_current_price, name: GOLD HOG SUPPLY PTE LTD}, {axisId: avg_current_price,
            id: Hai Di Lao International Food Services Pte Ltd - avg_current_price,
            name: Hai Di Lao International Food Services Pte Ltd}, {axisId: avg_current_price,
            id: Hua Kun Food Industry Pte Ltd - avg_current_price, name: Hua Kun Food
              Industry Pte Ltd}, {axisId: avg_current_price, id: Jit Sheng Provision
              Trading Pte Ltd - avg_current_price, name: Jit Sheng Provision Trading
              Pte Ltd}, {axisId: avg_current_price, id: Lim Thiam Chwee Food Supplier
              Pte Ltd - avg_current_price, name: Lim Thiam Chwee Food Supplier Pte
              Ltd}, {axisId: avg_current_price, id: Our Green Factory - avg_current_price,
            name: Our Green Factory}, {axisId: avg_current_price, id: Premium Egg
              Products Pte Ltd - avg_current_price, name: Premium Egg Products Pte
              Ltd}, {axisId: avg_current_price, id: Seow Khim Polythelene Co Pte Ltd
              - avg_current_price, name: Seow Khim Polythelene Co Pte Ltd}, {axisId: avg_current_price,
            id: SUN KEE (PTE) LTD - avg_current_price, name: SUN KEE (PTE) LTD}, {
            axisId: avg_current_price, id: Trendy Egg Distributor - avg_current_price,
            name: Trendy Egg Distributor}, {axisId: avg_current_price, id: YI QIANG
              (IMPORT & EXPORT) TRADING PTE LTD - avg_current_price, name: YI QIANG
              (IMPORT & EXPORT) TRADING PTE LTD}, {axisId: avg_current_price, id: 兰州舌尖尖
              - avg_current_price, name: 兰州舌尖尖}, {axisId: avg_current_price, id: 山东博克斯
              - avg_current_price, name: 山东博克斯}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels:
      avg_current_price: Avg Current Buying Price
    custom_color_enabled: true
    custom_color: "#079c98"
    show_single_value_title: true
    single_value_title: Avg Current Buying Price
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [total_spending, avg_current_buying_price, avg_market_price]
    hidden_pivots: {}
    listen:
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
      Year: purchase_order.order_year
      Month: purchase_order.order_month
    row: 4
    col: 12
    width: 12
    height: 8
  - title: Untitled (Copy 6)
    name: Untitled (Copy 6)
    model: novitee_analysis_model
    explore: purchase_order
    type: single_value
    fields: [total_spending, avg_market_price]
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
      expression: "${avg_market_price} * 0.9"
      label: Avg Market Price
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: avg_market_price_1
      _type_hint: number
    - category: measure
      expression:
      label: Avg Market Price
      value_format:
      value_format_name:
      based_on: purchase_order.unit_price_after_tax
      _kind_hint: measure
      measure: avg_market_price
      type: average
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
    custom_color: "#FF8168"
    single_value_title: Avg Market Price
    defaults_version: 1
    hidden_fields: [total_spending, avg_current_buying_price, avg_market_price]
    listen:
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
      Year: purchase_order.order_year
      Month: purchase_order.order_month
    row: 2
    col: 14
    width: 4
    height: 2
  - title: Pricing Detail
    name: Pricing Detail
    model: novitee_analysis_model
    explore: purchase_order
    type: looker_grid
    fields: [total_spending, avg_current_buying_price, avg_market_price, purchase_order.supplier_name,
      purchase_order.outlet_name, purchase_order.stock_name]
    filters:
      avg_current_buying_price: ">0"
    sorts: [total_spending desc 0]
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
      expression: "${avg_current_buying_price}"
      label: Avg Current Price
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: avg_current_price
      _type_hint: number
    - category: measure
      expression:
      label: Avg Current Buying Price
      value_format:
      value_format_name:
      based_on: purchase_order.unit_price_before_tax
      _kind_hint: measure
      measure: avg_current_buying_price
      type: average
      _type_hint: number
    - category: measure
      expression:
      label: Avg Market Price
      value_format:
      value_format_name:
      based_on: purchase_order.unit_price_after_tax
      _kind_hint: measure
      measure: avg_market_price
      type: average
      _type_hint: number
    - category: table_calculation
      expression: "${avg_market_price}"
      label: Avg Market Price
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: avg_market_price_1
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
      avg_current_price: Avg Current Buying Price
      purchase_order.supplier_name: Supplier
      purchase_order.outlet_name: Outlet
      purchase_order.stock_name: Product
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
    stacking: ''
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: avg_current_price, id: Angliss
              Singapore Pte Ltd - avg_current_price, name: Angliss Singapore Pte Ltd},
          {axisId: avg_current_price, id: Bevolution - avg_current_price, name: Bevolution},
          {axisId: avg_current_price, id: Bukit Timah (China) - avg_current_price,
            name: Bukit Timah (China)}, {axisId: avg_current_price, id: Chee Song
              Foods - avg_current_price, name: Chee Song Foods}, {axisId: avg_current_price,
            id: Coca Cola Singapore Beverages Pte. Ltd. - avg_current_price, name: Coca
              Cola Singapore Beverages Pte. Ltd.}, {axisId: avg_current_price, id: EBUY
              PTE LTD - avg_current_price, name: EBUY PTE LTD}, {axisId: avg_current_price,
            id: GALA FOOD PTE LTD - avg_current_price, name: GALA FOOD PTE LTD}, {
            axisId: avg_current_price, id: GALA FOOD PTE LTD (Consumer) - avg_current_price,
            name: GALA FOOD PTE LTD (Consumer)}, {axisId: avg_current_price, id: GALA
              FOOD PTE LTD (External) - avg_current_price, name: GALA FOOD PTE LTD
              (External)}, {axisId: avg_current_price, id: Gala Food Pte Ltd (OFFICE)
              - avg_current_price, name: Gala Food Pte Ltd (OFFICE)}, {axisId: avg_current_price,
            id: Glife Technologies Pte Ltd - avg_current_price, name: Glife Technologies
              Pte Ltd}, {axisId: avg_current_price, id: GOLD HOG SUPPLY PTE LTD -
              avg_current_price, name: GOLD HOG SUPPLY PTE LTD}, {axisId: avg_current_price,
            id: Hai Di Lao International Food Services Pte Ltd - avg_current_price,
            name: Hai Di Lao International Food Services Pte Ltd}, {axisId: avg_current_price,
            id: Hua Kun Food Industry Pte Ltd - avg_current_price, name: Hua Kun Food
              Industry Pte Ltd}, {axisId: avg_current_price, id: Jit Sheng Provision
              Trading Pte Ltd - avg_current_price, name: Jit Sheng Provision Trading
              Pte Ltd}, {axisId: avg_current_price, id: Lim Thiam Chwee Food Supplier
              Pte Ltd - avg_current_price, name: Lim Thiam Chwee Food Supplier Pte
              Ltd}, {axisId: avg_current_price, id: Our Green Factory - avg_current_price,
            name: Our Green Factory}, {axisId: avg_current_price, id: Premium Egg
              Products Pte Ltd - avg_current_price, name: Premium Egg Products Pte
              Ltd}, {axisId: avg_current_price, id: Seow Khim Polythelene Co Pte Ltd
              - avg_current_price, name: Seow Khim Polythelene Co Pte Ltd}, {axisId: avg_current_price,
            id: SUN KEE (PTE) LTD - avg_current_price, name: SUN KEE (PTE) LTD}, {
            axisId: avg_current_price, id: Trendy Egg Distributor - avg_current_price,
            name: Trendy Egg Distributor}, {axisId: avg_current_price, id: YI QIANG
              (IMPORT & EXPORT) TRADING PTE LTD - avg_current_price, name: YI QIANG
              (IMPORT & EXPORT) TRADING PTE LTD}, {axisId: avg_current_price, id: 兰州舌尖尖
              - avg_current_price, name: 兰州舌尖尖}, {axisId: avg_current_price, id: 山东博克斯
              - avg_current_price, name: 山东博克斯}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    custom_color: "#079c98"
    show_single_value_title: true
    single_value_title: Avg Current Buying Price
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    hidden_fields: [total_spending, avg_current_buying_price, avg_market_price]
    hidden_pivots: {}
    listen:
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
      Year: purchase_order.order_year
      Month: purchase_order.order_month
    row: 12
    col: 0
    width: 24
    height: 7
  - title: Average Current Pricing by Supplier
    name: Average Current Pricing by Supplier
    model: novitee_analysis_model
    explore: purchase_order
    type: looker_line
    fields: [total_spending, avg_current_buying_price, purchase_order.supplier_name,
      purchase_order.order_month]
    pivots: [purchase_order.supplier_name]
    fill_fields: [purchase_order.order_month]
    sorts: [purchase_order.supplier_name, purchase_order.order_month desc]
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
      expression: "${avg_current_buying_price}"
      label: Avg Current Price
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: avg_current_price
      _type_hint: number
    - category: measure
      expression:
      label: Avg Current Buying Price
      value_format:
      value_format_name:
      based_on: purchase_order.unit_price_before_tax
      _kind_hint: measure
      measure: avg_current_buying_price
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
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: avg_current_price, id: Angliss
              Singapore Pte Ltd - avg_current_price, name: Angliss Singapore Pte Ltd},
          {axisId: avg_current_price, id: Bevolution - avg_current_price, name: Bevolution},
          {axisId: avg_current_price, id: Bukit Timah (China) - avg_current_price,
            name: Bukit Timah (China)}, {axisId: avg_current_price, id: Chee Song
              Foods - avg_current_price, name: Chee Song Foods}, {axisId: avg_current_price,
            id: Coca Cola Singapore Beverages Pte. Ltd. - avg_current_price, name: Coca
              Cola Singapore Beverages Pte. Ltd.}, {axisId: avg_current_price, id: EBUY
              PTE LTD - avg_current_price, name: EBUY PTE LTD}, {axisId: avg_current_price,
            id: GALA FOOD PTE LTD - avg_current_price, name: GALA FOOD PTE LTD}, {
            axisId: avg_current_price, id: GALA FOOD PTE LTD (Consumer) - avg_current_price,
            name: GALA FOOD PTE LTD (Consumer)}, {axisId: avg_current_price, id: GALA
              FOOD PTE LTD (External) - avg_current_price, name: GALA FOOD PTE LTD
              (External)}, {axisId: avg_current_price, id: Gala Food Pte Ltd (OFFICE)
              - avg_current_price, name: Gala Food Pte Ltd (OFFICE)}, {axisId: avg_current_price,
            id: Glife Technologies Pte Ltd - avg_current_price, name: Glife Technologies
              Pte Ltd}, {axisId: avg_current_price, id: GOLD HOG SUPPLY PTE LTD -
              avg_current_price, name: GOLD HOG SUPPLY PTE LTD}, {axisId: avg_current_price,
            id: Hai Di Lao International Food Services Pte Ltd - avg_current_price,
            name: Hai Di Lao International Food Services Pte Ltd}, {axisId: avg_current_price,
            id: Hua Kun Food Industry Pte Ltd - avg_current_price, name: Hua Kun Food
              Industry Pte Ltd}, {axisId: avg_current_price, id: Jit Sheng Provision
              Trading Pte Ltd - avg_current_price, name: Jit Sheng Provision Trading
              Pte Ltd}, {axisId: avg_current_price, id: Lim Thiam Chwee Food Supplier
              Pte Ltd - avg_current_price, name: Lim Thiam Chwee Food Supplier Pte
              Ltd}, {axisId: avg_current_price, id: Our Green Factory - avg_current_price,
            name: Our Green Factory}, {axisId: avg_current_price, id: Premium Egg
              Products Pte Ltd - avg_current_price, name: Premium Egg Products Pte
              Ltd}, {axisId: avg_current_price, id: Seow Khim Polythelene Co Pte Ltd
              - avg_current_price, name: Seow Khim Polythelene Co Pte Ltd}, {axisId: avg_current_price,
            id: SUN KEE (PTE) LTD - avg_current_price, name: SUN KEE (PTE) LTD}, {
            axisId: avg_current_price, id: Trendy Egg Distributor - avg_current_price,
            name: Trendy Egg Distributor}, {axisId: avg_current_price, id: YI QIANG
              (IMPORT & EXPORT) TRADING PTE LTD - avg_current_price, name: YI QIANG
              (IMPORT & EXPORT) TRADING PTE LTD}, {axisId: avg_current_price, id: 兰州舌尖尖
              - avg_current_price, name: 兰州舌尖尖}, {axisId: avg_current_price, id: 山东博克斯
              - avg_current_price, name: 山东博克斯}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    custom_color: "#079c98"
    show_single_value_title: true
    single_value_title: Avg Current Buying Price
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [total_spending, avg_current_buying_price]
    hidden_pivots: {}
    listen:
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
      Year: purchase_order.order_year
      Month: purchase_order.order_month
    row: 4
    col: 0
    width: 12
    height: 8
  - title: Untitled (Copy)
    name: Untitled (Copy)
    model: novitee_analysis_model
    explore: purchase_order
    type: single_value
    fields: [total_spending, avg_current_buying_price]
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
      expression: "${avg_current_buying_price} -1"
      label: Avg Current Price
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: avg_current_price
      _type_hint: number
    - category: measure
      expression:
      label: Avg Current Buying Price
      value_format:
      value_format_name:
      based_on: purchase_order.unit_price_before_tax
      _kind_hint: measure
      measure: avg_current_buying_price
      type: average
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
    single_value_title: Avg LY Buying Price
    defaults_version: 1
    hidden_fields: [total_spending, avg_current_buying_price]
    listen:
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
      Year: purchase_order.order_year
      Month: purchase_order.order_month
    row: 2
    col: 7
    width: 4
    height: 2
  - title: Untitled (Copy 2)
    name: Untitled (Copy 2)
    model: novitee_analysis_model
    explore: purchase_order
    type: single_value
    fields: [total_spending, avg_market_price]
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
      expression: "${avg_market_price} * 0.9"
      label: Avg Market Price
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      table_calculation: avg_market_price_1
      _type_hint: number
    - category: measure
      expression:
      label: Avg Market Price
      value_format:
      value_format_name:
      based_on: purchase_order.unit_price_after_tax
      _kind_hint: measure
      measure: avg_market_price
      type: average
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
    custom_color: "#FF8168"
    single_value_title: Avg LY Market Price
    defaults_version: 1
    hidden_fields: [total_spending, avg_current_buying_price, avg_market_price]
    listen:
      Supplier: purchase_order.supplier_name
      Outlet: purchase_order.outlet_name
      Product: purchase_order.stock_name
      Year: purchase_order.order_year
      Month: purchase_order.order_month
    row: 2
    col: 19
    width: 4
    height: 2
  filters:
  - name: Year
    title: Year
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
      type: dropdown_menu
      display: inline
    model: novitee_analysis_model
    explore: purchase_order
    listens_to_filters: []
    field: purchase_order.stock_name
