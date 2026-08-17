SELECT
  hit.page.pagePath AS page_path,
  COUNT(*) AS page_views,
  COUNT(DISTINCT fullVisitorId) AS unique_visitors
FROM bigquery-public-data.google_analytics_sample.ga_sessions_20160801,
UNNEST(hits) AS hit
WHERE hit.type = 'PAGE'
GROUP BY page_path
ORDER BY page_views DESC
LIMIT 20;
