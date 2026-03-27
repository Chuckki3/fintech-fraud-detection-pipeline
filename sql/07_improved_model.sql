-- Improved fraud detection model

CREATE OR REPLACE TABLE `dotted-rookery-490711-i3.hostfi.features_step5` AS
SELECT
  *,
  CASE 
    WHEN type IN ('TRANSFER', 'CASH_OUT') THEN 1 ELSE 0 
  END AS high_risk_type
FROM `dotted-rookery-490711-i3.hostfi.features_step4`;


CREATE OR REPLACE TABLE `dotted-rookery-490711-i3.hostfi.features_step6` AS
SELECT
  *,
  CASE 
    WHEN tx_last_step >= 3 THEN 1 ELSE 0 
  END AS high_velocity
FROM `dotted-rookery-490711-i3.hostfi.features_step5`;


CREATE OR REPLACE TABLE `dotted-rookery-490711-i3.hostfi.features_step7` AS
SELECT
  *,
  CASE 
    WHEN amount > 2.5 * avg_amount AND amount > 200000 THEN 1 ELSE 0 
  END AS strong_amount_spike
FROM `dotted-rookery-490711-i3.hostfi.features_step6`;


CREATE OR REPLACE TABLE `dotted-rookery-490711-i3.hostfi.transactions_scored_v2` AS
SELECT
  *,
  (
    high_risk_type * 2 +
    high_velocity * 1 +
    strong_amount_spike * 2 +
    balance_error * 3 +
    empty_dest_account * 1
  ) AS risk_score
FROM `dotted-rookery-490711-i3.hostfi.features_step7`;
