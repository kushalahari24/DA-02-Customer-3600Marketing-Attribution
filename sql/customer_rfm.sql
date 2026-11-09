CREATE OR REPLACE TABLE
da02-customer-360.da02_customer360.customer_rfm AS

SELECT
  user_pseudo_id,
  DATE_DIFF(
    CURRENT_DATE(),
    MAX(PARSE_DATE('%Y%m%d', event_date)),
    DAY
  ) AS recency_days,
  COUNT(DISTINCT IF(event_name = 'purchase', transaction_id, NULL))
    AS frequency,
  SUM(
    IF(event_name = 'purchase',
       COALESCE(purchase_revenue_in_usd, 0),
       0)
  ) AS monetary_value,
  MAX(PARSE_DATE('%Y%m%d', event_date)) AS last_activity_date

FROM
  da02-customer-360.da02_customer360.ga4_events

GROUP BY
  user_pseudo_id;
