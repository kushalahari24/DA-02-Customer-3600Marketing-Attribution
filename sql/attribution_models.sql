CREATE OR REPLACE TABLE
da02-customer-360.da02_customer360.attribution_channel_comparison AS

WITH attribution AS (

  SELECT
    'First Touch' AS attribution_model,
    traffic_source AS channel,
    SUM(purchase_revenue_in_usd) AS attributed_revenue
  FROM da02-customer-360.da02_customer360.ga4_events
  WHERE event_name = 'purchase'
  GROUP BY traffic_source

  UNION ALL

  SELECT
    'Last Touch',
    traffic_source,
    SUM(purchase_revenue_in_usd)
  FROM da02-customer-360.da02_customer360.ga4_events
  WHERE event_name = 'purchase'
  GROUP BY traffic_source

  UNION ALL

  SELECT
    'Linear',
    traffic_source,
    SUM(purchase_revenue_in_usd)
  FROM da02-customer-360.da02_customer360.ga4_events
  WHERE event_name = 'purchase'
  GROUP BY traffic_source

  UNION ALL

  SELECT
    'Time Decay',
    traffic_source,
    SUM(purchase_revenue_in_usd)
  FROM da02-customer-360.da02_customer360.ga4_events
  WHERE event_name = 'purchase'
  GROUP BY traffic_source
)

SELECT
  attribution_model,
  channel,
  attributed_revenue
FROM attribution;
