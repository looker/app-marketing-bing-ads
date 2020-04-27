include: "bing_ad_metrics_base.view"

view: bing_ad_impressions_base {
  extends: [date_base, period_base, bing_ad_metrics_base]
}

explore: bing_ad_impressions_template {
  persist_with: bing_ads_etl_datagroup
  extends: [bing_ad_impressions_adapter]
  from: bing_ad_impressions
  view_name: fact
  extension: required
  group_label: "Bing Ads"
  label: "Bing Ads Impressions"
  view_label: "Impressions"
}

view: bing_ad_impressions_template {
  extends: [bing_ad_impressions_base, bing_ad_impressions_adapter]
}

explore: bing_ad_impressions_campaign_template {
  persist_with: bing_ads_etl_datagroup
  extends: [bing_ad_impressions_campaign_adapter]
  from: bing_ad_impressions_campaign
  view_name: fact
  group_label: "Bing Ads"
  extension: required
  label: "Bing Ads Impressions by Campaign"
  view_label: "Impressions by Campaign"
}

view: bing_ad_impressions_campaign_template {
  extends: [bing_ad_impressions_base, bing_ad_impressions_campaign_adapter]
}

explore: bing_ad_impressions_ad_group_template {
  persist_with: bing_ads_etl_datagroup
  extends: [bing_ad_impressions_ad_group_adapter]
  from: bing_ad_impressions_ad_group
  view_name: fact
  extension: required
  group_label: "Bing Ads"
  label: "Bing Ads Impressions by Ad Group"
  view_label: "Impressions by Ad Group"
}

view: bing_ad_impressions_ad_group_template {
  extends: [bing_ad_impressions_base, bing_ad_impressions_ad_group_adapter]
}

explore: bing_ad_impressions_keyword_template {
  persist_with: bing_ads_etl_datagroup
  extends: [bing_ad_impressions_keyword_adapter]
  from: bing_ad_impressions_keyword
  view_name: fact
  extension: required
  group_label: "Bing Ads"
  label: "Bing Ads Impressions by Keyword"
  view_label: "Impressions by Keyword"
}

view: bing_ad_impressions_keyword_template {
  extends: [bing_ad_impressions_base, bing_ad_impressions_keyword_adapter]
}

explore: bing_ad_impressions_ad_template {
  persist_with: bing_ads_etl_datagroup
  extends: [bing_ad_impressions_ad_adapter]
  from: bing_ad_impressions_ad
  view_name: fact
  extension: required
  group_label: "Bing Ads"
  label: "Bing Ads Impressions by Ad"
  view_label: "Impressions by Ad"
}

view: bing_ad_impressions_ad_template {
  extends: [bing_ad_impressions_base, bing_ad_impressions_ad_adapter]
}
