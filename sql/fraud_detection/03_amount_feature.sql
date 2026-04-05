-- Amount anomaly detection

CREATE OR REPLACE TABLE `dotted-rookery-490711-i3.hostfi.features_step2` AS
SELECT
  *,
  AVG(amount) OVER (PARTITION BY nameOrig) AS avg_amount,
  CASE 
    WHEN amount > 3 * AVG(amount) OVER (PARTITION BY nameOrig)
    THEN 1 ELSE 0 
  END AS amount_spike
FROM `dotted-rookery-490711-i3.hostfi.features_step1`;
