- dashboard: bing_campaign_metrics_click_through_rate
  title: Bing Campaign Metrics - Click Through Rate
  layout: newspaper
  embed_style:
    background_color: "#ffffff"
    show_title: false
    title_color: "#3a4245"
    show_filters_bar: false
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - title: Click Through Rate By Day Of Week
    name: Click Through Rate By Day Of Week
    model: marketing_analytics
    explore: bing_keyword_date_fact
    type: looker_bar
    fields:
    - fact.average_click_rate
    - fact.date_day_of_week
    fill_fields:
    - fact.date_day_of_week
    sorts:
    - fact.average_click_rate desc
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: fact.average_click_rate
        name: Keyword This Period Cost
        axisId: fact.average_click_rate
        __FILE: app-marketing-bing-ads/bi_campaign_metrics_click_through_rate.dashboard.lookml
        __LINE_NUM: 40
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app-marketing-bing-ads/bi_campaign_metrics_click_through_rate.dashboard.lookml
      __LINE_NUM: 37
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
      Campaign: fact.campaign_name
      Account: fact.account_name
    row: 0
    col: 14
    width: 10
    height: 11
  - title: Click Through Rate By Network
    name: Click Through Rate By Network
    model: marketing_analytics
    explore: bing_ads_ad_impressions
    type: looker_bar
    fields:
    - fact.channel
    - fact.average_click_rate
    sorts:
    - fact.average_click_rate desc
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    colors:
    - "#8ac8ca"
    - "#7869df"
    - "#6e98f9"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: fact.average_click_rate
        name: Fact Cost
        axisId: fact.average_click_rate
        __FILE: app-marketing-bing-ads/bi_campaign_metrics_click_through_rate.dashboard.lookml
        __LINE_NUM: 118
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app-marketing-bing-ads/bi_campaign_metrics_click_through_rate.dashboard.lookml
      __LINE_NUM: 115
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
      Campaign: fact.campaign_name
      Account: fact.account_name
    row: 11
    col: 0
    width: 8
    height: 6
  - title: Click Through Rate By Bid Strategy
    name: Click Through Rate By Bid Strategy
    model: marketing_analytics
    explore: bing_keyword_date_fact
    type: looker_bar
    fields:
    - fact.bid_strategy_type
    - fact.average_click_rate
    sorts:
    - fact.average_click_rate desc
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    colors:
    - "#dc9d4f"
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: fact.average_click_rate
        name: Keyword This Period Cost
        axisId: fact.average_click_rate
        __FILE: app-marketing-bing-ads/bi_campaign_metrics_click_through_rate.dashboard.lookml
        __LINE_NUM: 196
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app-marketing-bing-ads/bi_campaign_metrics_click_through_rate.dashboard.lookml
      __LINE_NUM: 193
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
      Campaign: fact.campaign_name
      Account: fact.account_name
    row: 11
    col: 16
    width: 8
    height: 6
  - title: Click Through Rate By Device
    name: Click Through Rate By Device
    model: marketing_analytics
    explore: bing_ads_ad_impressions
    type: looker_bar
    fields:
    - fact.device_type
    - fact.average_click_rate
    sorts:
    - fact.average_click_rate desc
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    colors:
    - "#d06180"
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: fact.average_click_rate
        name: Cost
        axisId: fact.average_click_rate
        __FILE: app-marketing-bing-ads/bi_campaign_metrics_click_through_rate.dashboard.lookml
        __LINE_NUM: 358
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app-marketing-bing-ads/bi_campaign_metrics_click_through_rate.dashboard.lookml
      __LINE_NUM: 355
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
      Campaign: fact.campaign_name
      Account: fact.account_name
    row: 11
    col: 8
    width: 8
    height: 6
  - title: Click Through Rate To Date
    name: Click Through Rate To Date
    model: marketing_analytics
    explore: bing_ad_group_date_fact
    type: looker_line
    fields:
    - fact.total_conversions
    - fact.date_date
    - fact.average_cost_per_conversion
    - fact.average_cost_per_click
    - fact.average_conversion_rate
    - fact.average_click_rate
    fill_fields:
    - fact.date_date
    sorts:
    - fact.date_date desc
    limit: 500
    column_limit: 50
    stacking: ''
    colors:
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    series_types: {}
    limit_displayed_rows: false
    hidden_series:
    - fact.total_conversions
    - fact.average_cost_per_click
    - fact.average_conversion_rate
    - fact.average_cost_per_conversion
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: fact.average_click_rate
        name: Click Through Rate
        axisId: fact.average_click_rate
        __FILE: app-marketing-bing-ads/bi_campaign_metrics_click_through_rate.dashboard.lookml
        __LINE_NUM: 619
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app-marketing-bing-ads/bi_campaign_metrics_click_through_rate.dashboard.lookml
      __LINE_NUM: 616
    - label:
      orientation: right
      series:
      - id: fact.average_click_rate
        name: Click Through Rate
        axisId: fact.average_click_rate
        __FILE: app-marketing-bing-ads/bi_campaign_metrics_click_through_rate.dashboard.lookml
        __LINE_NUM: 631
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app-marketing-bing-ads/bi_campaign_metrics_click_through_rate.dashboard.lookml
      __LINE_NUM: 628
    - label:
      orientation: right
      series:
      - id: fact.average_cost_per_click
        name: Cost per Click
        axisId: fact.average_cost_per_click
        __FILE: app-marketing-bing-ads/bi_campaign_metrics_click_through_rate.dashboard.lookml
        __LINE_NUM: 643
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app-marketing-bing-ads/bi_campaign_metrics_click_through_rate.dashboard.lookml
      __LINE_NUM: 640
    - label:
      orientation: right
      series:
      - id: fact.average_conversion_rate
        name: Conversion Rate
        axisId: fact.average_conversion_rate
        __FILE: app-marketing-bing-ads/bi_campaign_metrics_click_through_rate.dashboard.lookml
        __LINE_NUM: 655
      - id: fact.average_click_rate
        name: Click Through Rate
        axisId: fact.average_click_rate
        __FILE: app-marketing-bing-ads/bi_campaign_metrics_click_through_rate.dashboard.lookml
        __LINE_NUM: 658
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app-marketing-bing-ads/bi_campaign_metrics_click_through_rate.dashboard.lookml
      __LINE_NUM: 652
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
      Campaign: fact.campaign_name
      Account: fact.account_name
    row: 0
    col: 0
    width: 14
    height: 11
  - title: Ad Group Click Through Rate Change
    name: Ad Group Click Through Rate Change
    model: marketing_analytics
    explore: bing_ad_group_date_fact
    type: looker_bar
    fields:
    - fact.average_click_rate
    - fact.total_clicks
    - fact.total_impressions
    - last_fact.average_click_rate
    - last_fact.total_clicks
    - last_fact.total_impressions
    - fact.average_click_rate_period_percent_change
    - last_fact.ad_group_name
    filters:
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
    sorts:
    - fact.average_click_rate_period_percent_change desc
    limit: 50
    column_limit: 50
    stacking: ''
    colors:
    - "#a6b7ff"
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_labels:
      fact.average_click_rate: This Period
      last_fact.average_click_rate: Last Period
    series_types: {}
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_click_rate
        name: Period Fact
        axisId: fact.average_click_rate
        __FILE: 3d4d8a33c661890929b121b4e924d117a835b36c4f1c0ba3452b4a66c6fd1b198025c385/campaign_metrics_ctr.dashboard.lookml
        __LINE_NUM: 958
      - id: last_fact.average_click_rate
        name: Last Period Fact
        axisId: last_fact.average_click_rate
        __FILE: 3d4d8a33c661890929b121b4e924d117a835b36c4f1c0ba3452b4a66c6fd1b198025c385/campaign_metrics_ctr.dashboard.lookml
        __LINE_NUM: 963
      __FILE: 3d4d8a33c661890929b121b4e924d117a835b36c4f1c0ba3452b4a66c6fd1b198025c385/campaign_metrics_ctr.dashboard.lookml
      __LINE_NUM: 946
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
    query_timezone: America/Los_Angeles
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    - campaign.name
    - fact.total_clicks
    - fact.total_impressions
    - last_fact.total_clicks
    - last_fact.total_impressions
    - fact.average_click_rate_period_percent_change
    listen: {}
    row: 17
    col: 0
    width: 12
    height: 9
  - title: Ad Click Through Rate Change
    name: Ad Click Through Rate Change
    model: marketing_analytics
    explore: bing_ad_date_fact
    type: looker_bar
    fields:
    - fact.average_click_rate
    - fact.total_clicks
    - fact.total_impressions
    - last_fact.average_click_rate
    - last_fact.total_clicks
    - last_fact.total_impressions
    - fact.average_click_rate_period_percent_change
    - fact.ad_title
    filters:
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
    sorts:
    - fact.average_click_rate_period_percent_change desc
    limit: 50
    column_limit: 50
    stacking: ''
    colors:
    - "#ea9895"
    - "#d06180"
    - "#a6b7ff"
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea989"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_labels:
      fact.average_click_rate: This Period
      last_fact.average_click_rate: Last Period
    series_types: {}
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_click_rate
        name: Period Fact
        axisId: fact.average_click_rate
        __FILE: 3d4d8a33c661890929b121b4e924d117a835b36c4f1c0ba3452b4a66c6fd1b198025c385/campaign_metrics_ctr.dashboard.lookml
        __LINE_NUM: 845
      - id: last_fact.average_click_rate
        name: Last Period Fact
        axisId: last_fact.average_click_rate
        __FILE: 3d4d8a33c661890929b121b4e924d117a835b36c4f1c0ba3452b4a66c6fd1b198025c385/campaign_metrics_ctr.dashboard.lookml
        __LINE_NUM: 850
      __FILE: 3d4d8a33c661890929b121b4e924d117a835b36c4f1c0ba3452b4a66c6fd1b198025c385/campaign_metrics_ctr.dashboard.lookml
      __LINE_NUM: 833
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
    query_timezone: America/Los_Angeles
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    - ad_group.ad_group_name
    - campaign.name
    - fact.total_clicks
    - fact.total_impressions
    - last_fact.total_clicks
    - last_fact.total_impressions
    - fact.average_click_rate_period_percent_change
    row: 17
    col: 12
    width: 12
    height: 9
  filters:
  - name: Period
    title: Period
    type: field_filter
    default_value: 28 day
    allow_multiple_values: true
    required: false
    model: marketing_analytics
    explore: linkedin_ads_ad_impressions
    listens_to_filters: []
    field: fact.period
  - name: Period Latest
    title: Period Latest
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: true
    required: false
    model: marketing_analytics
    explore: linkedin_ads_ad_impressions
    listens_to_filters: []
    field: fact.date_period_latest
  - name: Campaign
    title: Campaign
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: marketing_analytics
    explore: linkedin_ads_ad_impressions
    listens_to_filters: []
    field: fact.campaign_name
  - name: Account
    title: Account
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: marketing_analytics
    explore: linkedin_ads_ad_impressions
    listens_to_filters: []
    field: fact.account_name
