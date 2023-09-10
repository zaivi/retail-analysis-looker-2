view: v_cal_po_total_latest {
  derived_table: {
    sql:
      SELECT
        *,
        ROW_NUMBER() OVER (ORDER BY monthStart DESC) AS row_num
      FROM `glife-data-science.novitee_analysis.v_cal_po_total_latest`
      # QUALIFY row_num = 1
    ;;
  }
  dimension: change_per_grand_total {
    type: number
    sql: ${TABLE}.changePerGrandTotal ;;
  }
  dimension: change_per_order_qty {
    type: number
    sql: ${TABLE}.changePerOrderedQty ;;
  }
  dimension: change_per_po_number {
    type: number
    sql: ${TABLE}.changePerPoNumber ;;
  }
  dimension: abs_change_per_grand_total {
    type: number
    sql: ABS(${TABLE}.changePerGrandTotal) ;;
  }
  dimension: abs_change_per_po_number {
    type: number
    sql: ABS(${TABLE}.changePerPoNumber) ;;
  }
  dimension: abs_change_per_order_qty {
    type: number
    sql: ABS(${TABLE}.changePerOrderedQty) ;;
  }
  dimension: count_po_number {
    type: number
    sql: ${TABLE}.countPoNumber ;;

    html:
    <div class="arrow-container">
    {% if change_per_po_number._value > 0 %}
    <span>{{rendered_value}} </span> <br> <!-- Mũi tên lên -->
    <font style="font-size: 16px;"> Sale Orders </font> <font color="#00FF00" style="font-size: 16px;"><font color="#00FF00"> &#9650;</font> <i>+{{ change_per_po_number._value }}%</i></font>
    {% elsif change_per_po_number._value ==0 %}
    <span>{{rendered_value}}</span> <br>
    <font style="font-size: 16px;"> Sale Orders </font> <font color="#9B4D48" style="font-size: 16px;"><i>{{ change_per_po_number._value }}%</i></font>
    {% elsif change_per_po_number._value < 0%}
    <span>{{rendered_value}} </span> <br> <!-- Mũi tên xuống -->
    <font style="font-size: 16px;"> Sale Orders </font> <font color="#9B4D48" style="font-size: 16px;"><font color="#9B4D48">&#9660;</font> <i>{{ change_per_po_number._value }}%</i></font>
    {% endif %}
    </div>
    <style>
    .arrow-container {
      text-align: center;
    }
    </style>;;
  }
  dimension_group: month_start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.monthStart ;;
  }
  dimension: sum_grand_total {
    type: number
    sql: ${TABLE}.sumGrandTotal ;;

    html:
    <div class="arrow-container">
    {% if change_per_grand_total._value > 0 %}
    <span>$ {{rendered_value}} </span> <br> <!-- Mũi tên lên -->
    <font style="font-size: 16px;"> Fulfillment Cost </font> <font color="#00FF00" style="font-size: 16px;"><font color="#00FF00"> &#9650;</font><i>+{{ change_per_grand_total._value }}%</i></font>
    {% elsif change_per_grand_total._value ==0 %}
    <span>$ {{rendered_value}}</span> <br>
    <font style="font-size: 16px;"> Fulfillment Cost </font> <font color="#9B4D48" style="font-size: 16px;"><i>{{ change_per_grand_total._value }}%</i></font>
    {% elsif change_per_grand_total._value < 0%}
    <span>$ {{rendered_value}}</span> <br> <!-- Mũi tên xuống -->
    <font style="font-size: 16px;"> Fulfillment Cost </font> <font color="#9B4D48" style="font-size: 16px;"><font color="#9B4D48">&#9660;</font><i>{{ change_per_grand_total._value }}%</i></font>
    {% endif %}
    </div>
    <style>
    .arrow-container {
      text-align: center;
    }
    </style>;;
  }
  dimension: cost_per_order {
    type: number
    sql: ${TABLE}.costPerOrder ;;

    html:
    <div class="arrow-container">
    <font color="#54B9EF">$ {{rendered_value}} </font> <br> <!-- Mũi tên lên -->
    <style>
    </div>
    .arrow-container {
      text-align: center;
    }
    </style>;;
  }
  dimension: sum_order_qty {
    type: number
    sql: ${TABLE}.sumOrderedQty ;;

    html:
    <div class="arrow-container">
    {% if change_per_order_qty._value > 0 %}
    <span> {{rendered_value}} </span> <br> <!-- Mũi tên lên -->
    <font style="font-size: 16px;"> Sale Order Quantity </font> <font color="#00FF00" style="font-size: 16px;"><font color="#00FF00"> &#9650;</font><i>+{{ abs_change_per_order_qty._value }}%</i></font>
    {% elsif change_per_order_qty._value ==0 %}
    <span> {{rendered_value}}</span> <br>
    <font style="font-size: 16px;"> Sale Order Quantity </font> <font color="#9B4D48" style="font-size: 16px;"><i>{{ abs_change_per_order_qty._value }}%</i></font>
    {% elsif change_per_order_qty._value < 0%}
    <span> {{rendered_value}}</span> <br> <!-- Mũi tên xuống -->
    <font style="font-size: 16px;"> Sale Order Quantity </font> <font color="#9B4D48" style="font-size: 16px;"><font color="#9B4D48">&#9660;</font><i>{{ abs_change_per_order_qty._value }}%</i></font>
    {% endif %}
    </div>
    <style>
    .arrow-container {
      text-align: center;
    }
    </style>;;
  }
  measure: sum_grand_total_year {
    type: sum
    sql: ${TABLE}.sumGrandTotal ;;
  }
  measure: count {
    type: count
  }
}
