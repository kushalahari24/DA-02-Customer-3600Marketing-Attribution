DA-02: Customer 360 and Marketing Attribution Platform

Project Overview

This project combines website activity, synthetic CRM data, and advertising data to analyse customer behaviour and marketing performance.

Objectives

- Build a unified Customer 360 view.
- Analyse customer purchasing behaviour using RFM.
- Create customer segments.
- Implement four marketing attribution models.
- Analyse advertising spend and campaign performance.
- Present insights through interactive Power BI dashboards.

Technology Stack

- Google BigQuery
- SQL
- GA4 Sample E-commerce Dataset
- Synthetic CRM and Advertising Data
- Microsoft Power BI

Data Sources

1. GA4 public sample e-commerce dataset.
2. Synthetic CRM customer dataset (1,000 records).
3. Synthetic advertising dataset (120 records across four channels).

BigQuery Dataset

Project ID: "da02-customer-360"

Dataset: "da02_customer360"

Key tables:

- ga4_events
- crm_customers
- ad_spend
- identity_mapping
- customer_profile
- customer_rfm
- customer_segments
- customer_clv
- first_touch_attribution
- last_touch_attribution
- linear_attribution
- time_decay_attribution
- campaign_performance
- attribution_comparison
- attribution_channel_comparison

Analytics Implemented

- Customer profile creation
- RFM analysis and segmentation
- Historical customer value calculation
- First-touch attribution
- Last-touch attribution
- Linear attribution
- Time-decay attribution
- Marketing channel comparison

Power BI Dashboards

1. Marketing Campaign Performance Dashboard
2. Customer 360 Dashboard

Project Results

- 31,272 GA4 event records
- 2,365 unique users
- 1,000 synthetic CRM records
- 120 synthetic advertising records
- 18 purchase transactions
- $773 total purchase revenue

Limitations

- GA4 sample data covers one day.
- CRM and advertising data are synthetic.
- Identity mapping uses surrogate IDs.
- Historical customer value is not predictive CLV.
- Advertising spend and GA4 revenue cover different periods.
- Power BI was used instead of Tableau. dbt, Python and Segment were not implemented.

Demo Videos

The Power BI and BigQuery demo recordings are available in the project's Google Drive folder.

Future Improvements

- Implement accurate identity resolution.
- Use a larger dataset.
- Add dbt and Python workflows.
- Develop predictive CLV.
- Improve attribution and ROI analysis.

Author

Data Analytics Internship Project – Nexvia# DA-02-Customer-3600Marketing-Attribution
