--  Create clean transactions table

CREATE OR REPLACE TABLE `dotted-rookery-490711-i3.hostfi.transactions_clean` AS
SELECT
  step,
  type,
  amount,
  nameOrig,
  oldbalanceOrg,
  newbalanceOrig,
  nameDest,
  oldbalanceDest,
  newbalanceDest,
  isFraud,
  isFlaggedFraud
FROM `dotted-rookery-490711-i3.Paysim_unbroken.transactions_total`;
