- dashboard: bing_campaign_metrics_roas
  title: Bing Ads - ROAS
  extends: bing_ads_base
  elements:
  - title: Return On Ad Spend By Device
    name: Return On Ad Spend By Device
    model: marketing_analytics
    explore: bing_ad_date_fact
    type: looker_bar
    fields: [fact.device_type, fact.average_value_per_cost]
    sorts: [fact.average_value_per_cost desc]
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    colors: ["#d06180", "#7869df", "#6e98f9", "#8ac8ca", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    y_axes: [{label: '', orientation: bottom, series: [{id: fact.average_value_per_cost,
            name: ROAS, axisId: fact.average_value_per_cost, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
            __LINE_NUM: 330}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
        __LINE_NUM: 327}]
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 11
    col: 8
    width: 8
    height: 6
  - title: Return On Ad Spend By Day Of Week
    name: Return On Ad Spend By Day Of Week
    model: marketing_analytics
    explore: bing_keyword_date_fact
    type: looker_bar
    fields: [fact.date_day_of_week, fact.average_value_per_cost]
    fill_fields: [fact.date_day_of_week]
    sorts: [fact.average_value_per_cost desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: true
    y_axes: [{label: '', orientation: bottom, series: [{id: fact.average_value_per_cost,
            name: Keyword This Period ROAS, axisId: fact.average_value_per_cost, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
            __LINE_NUM: 182}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
        __LINE_NUM: 179}]
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
    series_types: {}
    point_style: none
    series_colors:
      fact.average_value_per_cost: "#d06180"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 0
    col: 14
    width: 10
    height: 11
  - title: Return On Ad Spend By Network
    name: Return On Ad Spend By Network
    model: marketing_analytics
    explore: bing_ads_ad_impressions
    type: looker_bar
    fields: [fact.channel, fact.average_value_per_cost]
    sorts: [fact.average_value_per_cost desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: true
    y_axes: [{label: '', orientation: bottom, series: [{id: fact.average_value_per_cost,
            name: Fact ROAS, axisId: fact.average_value_per_cost, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
            __LINE_NUM: 256}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
        __LINE_NUM: 253}]
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
    colors: ["#8ac8ca", "#7869df", "#6e98f9", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    point_style: none
    series_colors:
      fact.average_value_per_cost: "#d06180"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: fact.campaign_name
      Account: fact.account_name
      Ad Group: fact.ad_group_name
    row: 11
    col: 0
    width: 8
    height: 6
  - title: Return On Ad Spend By Bid Strategy
    name: Return On Ad Spend By Bid Strategy
    model: marketing_analytics
    explore: bing_keyword_date_fact
    type: looker_bar
    fields: [keyword.bid_strategy_type, fact.average_value_per_cost]
    sorts: [fact.average_value_per_cost desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: true
    y_axes: [{label: '', orientation: bottom, series: [{id: fact.average_value_per_cost,
            name: Keyword This Period ROAS, axisId: fact.average_value_per_cost, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
            __LINE_NUM: 404}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
        __LINE_NUM: 401}]
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
    colors: ["#dc9d4f", "#7869df", "#6e98f9", "#8ac8ca", "#d06180", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    point_style: none
    series_colors:
      fact.average_value_per_cost: "#d06180"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 11
    col: 16
    width: 8
    height: 6
  - title: Creative Return On Ad Spend Change
    name: Creative Return On Ad Spend Change
    model: marketing_analytics
    explore: bing_ad_date_fact
    type: looker_bar
    fields: [ad.title, ad_group.ad_group_name, campaign.campaign_name, last_fact.average_value_per_cost,
      fact.average_value_per_cost, fact.average_value_per_cost_period_percent_change_abs]
    filters:
      fact.total_conversions_period_delta_abs: ">0"
    sorts: [fact.average_value_per_cost_period_percent_change_abs desc]
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{id: last_fact.average_value_per_cost,
            name: Ad Last Period, axisId: last_fact.average_value_per_cost, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
            __LINE_NUM: 491}, {id: fact.average_value_per_cost, name: Ad This Period,
            axisId: fact.average_value_per_cost, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
            __LINE_NUM: 494}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
        __LINE_NUM: 488}]
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
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hide_legend: false
    legend_position: center
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    series_types: {}
    point_style: none
    series_colors:
      fact.average_value_per_cost: "#d06180"
      last_fact.average_value_per_cost: "#ea9895"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [campaign.name, ad_group.ad_group_name, ad_group.ad_group_name,
      campaign.campaign_name, fact.average_value_per_cost_period_percent_change_abs]
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 17
    col: 0
    width: 12
    height: 6
  - title: Landing Pages Return On Ad Spend Change
    name: Landing Pages Return On Ad Spend Change
    model: marketing_analytics
    explore: bing_keyword_date_fact
    type: looker_bar
    fields: [ad_group.ad_group_name, campaign.campaign_name, keyword.final_url, last_fact.average_value_per_cost,
      fact.average_value_per_cost, fact.average_value_per_cost_period_percent_change_abs]
    filters:
      fact.total_conversions_period_delta_abs: ">0"
    sorts: [fact.average_value_per_cost_period_percent_change_abs desc]
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{id: last_fact.average_value_per_cost,
            name: Keyword Prior Period, axisId: last_fact.average_value_per_cost,
            __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
            __LINE_NUM: 594}, {id: fact.average_value_per_cost, name: Keyword This
              Period, axisId: fact.average_value_per_cost, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
            __LINE_NUM: 597}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
        __LINE_NUM: 591}]
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
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    legend_position: center
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    series_types: {}
    point_style: none
    series_colors:
      last_fact.average_value_per_cost: "#ea9895"
      fact.average_value_per_cost: "#d06180"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [campaign.name, ad_group.ad_group_name, ad_group.ad_group_name,
      campaign.campaign_name, fact.average_value_per_cost_period_percent_change_abs]
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 23
    col: 0
    width: 12
    height: 7
  - title: Ad Group Return On Ad Spend Change
    name: Ad Group Return On Ad Spend Change
    model: marketing_analytics
    explore: bing_ad_group_date_fact
    type: looker_bar
    fields: [campaign.campaign_name, ad_group.ad_group_name, last_fact.average_value_per_cost,
      fact.average_value_per_cost, fact.average_value_per_cost_period_percent_change_abs]
    filters:
      fact.total_conversions_period_delta_abs: ">0"
    sorts: [fact.average_value_per_cost_period_percent_change_abs desc]
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{id: last_fact.average_value_per_cost,
            name: Ad Group Last Period, axisId: last_fact.average_value_per_cost,
            __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
            __LINE_NUM: 696}, {id: fact.average_value_per_cost, name: Ad Group This
              Period, axisId: fact.average_value_per_cost, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
            __LINE_NUM: 699}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
        __LINE_NUM: 693}]
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
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    legend_position: center
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    series_types: {}
    point_style: none
    series_colors:
      last_fact.average_value_per_cost: "#ea9895"
      fact.average_value_per_cost: "#d06180"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [campaign.name, campaign.campaign_name, fact.average_value_per_cost_period_percent_change_abs]
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 17
    col: 12
    width: 12
    height: 13
  - title: Return On Ad Spend To Date
    name: Return On Ad Spend To Date
    model: marketing_analytics
    explore: bing_ad_group_date_fact
    type: looker_line
    fields: [fact.total_conversions, fact.date_date, fact.average_cost_per_conversion,
      fact.average_conversion_rate, fact.average_click_rate, fact.average_cost_per_click,
      fact.average_value_per_cost]
    fill_fields: [fact.date_date]
    sorts: [fact.date_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{id: fact.total_conversions,
            name: Conversions, axisId: fact.total_conversions, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
            __LINE_NUM: 60}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
        __LINE_NUM: 57}, {label: !!null '', orientation: right, series: [{id: fact.average_cost_per_conversion,
            name: Cost per Conversion, axisId: fact.average_cost_per_conversion, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
            __LINE_NUM: 76}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
        __LINE_NUM: 73}, {label: !!null '', orientation: right, series: [{id: fact.average_cost_per_click,
            name: Cost per Click, axisId: fact.average_cost_per_click, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
            __LINE_NUM: 92}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
        __LINE_NUM: 89}, {label: !!null '', orientation: right, series: [{id: fact.average_conversion_rate,
            name: Conversion Rate, axisId: fact.average_conversion_rate, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
            __LINE_NUM: 108}, {id: fact.average_click_rate, name: Click Through Rate,
            axisId: fact.average_click_rate, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
            __LINE_NUM: 113}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: app-marketing-bing-ads/bi_campaign_metrics_roas.dashboard.lookml,
        __LINE_NUM: 105}]
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
    hidden_series: [fact.average_cost_per_conversion, fact.average_cost_per_click,
      fact.average_conversion_rate, fact.average_click_rate, fact.total_conversions]
    legend_position: center
    colors: ["#7869df", "#6e98f9", "#8ac8ca", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    point_style: none
    series_colors:
      fact.average_value_per_cost: "#d06180"
      fact.average_click_rate: "#4bb86a"
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: campaign.campaign_name
      Account: account.account_name
      Ad Group: ad_group.ad_group_name
    row: 0
    col: 0
    width: 14
    height: 11
