--Transaction velocity feature

CREATE OR REPLACE TABLE `dotted-rookery-490711-i3.hostfi.features_step1` AS
SELECT
  *,
  COUNT(*) OVER (
    PARTITION BY nameOrig
    ORDER BY step
    RANGE BETWEEN 1 PRECEDING AND CURRENT ROW
  ) AS tx_last_step
FROM `dotted-rookery-490711-i3.hostfi.transactions_clean`;
