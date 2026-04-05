-- Destination account anomaly

CREATE OR REPLACE TABLE `dotted-rookery-490711-i3.hostfi.features_step4` AS
SELECT
  *,
  CASE 
    WHEN oldbalanceDest = 0 AND newbalanceDest = 0 THEN 1 ELSE 0 
  END AS empty_dest_account
FROM `dotted-rookery-490711-i3.hostfi.features_step3`;
