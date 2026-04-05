-- Initial fraud risk scoring

CREATE OR REPLACE TABLE `dotted-rookery-490711-i3.hostfi.transactions_scored` AS
SELECT
  *,
  (
    (tx_last_step > 2) * 1 +
    amount_spike * 1 +
    balance_error * 2 +
    empty_dest_account * 1
  ) AS risk_score
FROM `dotted-rookery-490711-i3.hostfi.features_step4`;
