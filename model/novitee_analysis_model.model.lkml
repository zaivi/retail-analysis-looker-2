connection: "@{novitee_analysis_bq_cnn}"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/views/*/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.

explore: inventory {}

explore: purchase_order {
  join: inventory_stock_mart {
    relationship: one_to_many
    type: left_outer
    sql_on: ${inventory_stock_mart.code} = ${purchase_order.stock_code}  AND
            ${inventory_stock_mart.name} = ${purchase_order.stock_name} AND
            ${inventory_stock_mart.trans_start_month_date} = ${purchase_order.order_date};;
  }
  join: purchase_order_previous_30days {
    relationship: one_to_many
    type: full_outer
    sql_on: IFNULL(CAST(${purchase_order.po_number} AS STRING), "") = IFNULL(CAST(${purchase_order_previous_30days.po_number} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.outlet_code} AS STRING), "") = IFNULL(CAST(${purchase_order_previous_30days.outlet_code} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.outlet_name} AS STRING), "") = IFNULL(CAST(${purchase_order_previous_30days.outlet_name} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.order_date} AS STRING), "") = IFNULL(CAST(${purchase_order_previous_30days.order_date} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.updated_date} AS STRING), "") = IFNULL(CAST(${purchase_order_previous_30days.updated_date} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.order_remarks} AS STRING), "") = IFNULL(CAST(${purchase_order_previous_30days.order_remarks} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.stock_code} AS STRING), "") = IFNULL(CAST(${purchase_order_previous_30days.stock_code} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.stock_name} AS STRING), "") = IFNULL(CAST(${purchase_order_previous_30days.stock_name} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.supplier_code} AS STRING), "") = IFNULL(CAST(${purchase_order_previous_30days.supplier_code} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.supplier_name} AS STRING), "") = IFNULL(CAST(${purchase_order_previous_30days.supplier_name} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.packaging_uom} AS STRING), "") = IFNULL(CAST(${purchase_order_previous_30days.packaging_uom} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.delivery_date} AS STRING), "") = IFNULL(CAST(${purchase_order_previous_30days.delivery_date} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.purchase_uom} AS STRING), "") = IFNULL(CAST(${purchase_order_previous_30days.purchase_uom} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.receiving_uom} AS STRING), "") = IFNULL(CAST(${purchase_order_previous_30days.receiving_uom} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.ordered_qty} AS STRING), "") = IFNULL(CAST(${purchase_order_previous_30days.ordered_qty} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.receiving_qty} AS STRING), "") = IFNULL(CAST(${purchase_order_previous_30days.receiving_qty} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.unit_price_before_tax} AS STRING), "") = IFNULL(CAST(${purchase_order_previous_30days.unit_price_before_tax} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.unit_price_after_tax} AS STRING), "") = IFNULL(CAST(${purchase_order_previous_30days.unit_price_after_tax} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.total_tax} AS STRING), "") = IFNULL(CAST(${purchase_order_previous_30days.total_tax} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.grand_total} AS STRING), "") = IFNULL(CAST(${purchase_order_previous_30days.grand_total} AS STRING), "") ;;
  }

  join: purchase_order_train {
    relationship: one_to_many
    type: full_outer
    sql_on: IFNULL(CAST(${purchase_order.po_number} AS STRING), "") = IFNULL(CAST(${purchase_order_train.po_number} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.outlet_code} AS STRING), "") = IFNULL(CAST(${purchase_order_train.outlet_code} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.outlet_name} AS STRING), "") = IFNULL(CAST(${purchase_order_train.outlet_name} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.order_date} AS STRING), "") = IFNULL(CAST(${purchase_order_train.order_date} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.updated_date} AS STRING), "") = IFNULL(CAST(${purchase_order_train.updated_date} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.order_remarks} AS STRING), "") = IFNULL(CAST(${purchase_order_train.order_remarks} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.stock_code} AS STRING), "") = IFNULL(CAST(${purchase_order_train.stock_code} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.stock_name} AS STRING), "") = IFNULL(CAST(${purchase_order_train.stock_name} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.supplier_code} AS STRING), "") = IFNULL(CAST(${purchase_order_train.supplier_code} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.supplier_name} AS STRING), "") = IFNULL(CAST(${purchase_order_train.supplier_name} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.packaging_uom} AS STRING), "") = IFNULL(CAST(${purchase_order_train.packaging_uom} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.delivery_date} AS STRING), "") = IFNULL(CAST(${purchase_order_train.delivery_date} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.purchase_uom} AS STRING), "") = IFNULL(CAST(${purchase_order_train.purchase_uom} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.receiving_uom} AS STRING), "") = IFNULL(CAST(${purchase_order_train.receiving_uom} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.ordered_qty} AS STRING), "") = IFNULL(CAST(${purchase_order_train.ordered_qty} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.receiving_qty} AS STRING), "") = IFNULL(CAST(${purchase_order_train.receiving_qty} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.unit_price_before_tax} AS STRING), "") = IFNULL(CAST(${purchase_order_train.unit_price_before_tax} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.unit_price_after_tax} AS STRING), "") = IFNULL(CAST(${purchase_order_train.unit_price_after_tax} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.total_tax} AS STRING), "") = IFNULL(CAST(${purchase_order_train.total_tax} AS STRING), "") AND
            IFNULL(CAST(${purchase_order.grand_total} AS STRING), "") = IFNULL(CAST(${purchase_order_train.grand_total} AS STRING), "") ;;
  }
}

explore: eval_model {}

explore: v_cal_po_total_latest {}
