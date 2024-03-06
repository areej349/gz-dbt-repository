SELECT 
  date_date,
  ROUND(f.operational_margin - c.ads_cost )AS ads_margin,
  ROUND(f.average_basket,2) AS average_basket,
  f.operational_margin,
  c.ads_cost,
  c.ads_impressionn,
  c.ads_clicks,
  c.quantity,
  c.revenue,
  c.purchase_cost,
  c.margin,
  c.shipping_fee,
  c.logcost,
  c.ship_cost
FROM {{ ref('int_campaigns_day') }} c
FULL OUTER JOIN {{ ref('finance_days') }} f
  USING (date_date)
ORDER BY date_date DESC