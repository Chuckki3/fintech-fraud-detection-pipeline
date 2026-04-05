-- Balance inconsistency feature

CREATE OR REPLACE TABLE `dotted-rookery-490711-i3.hostfi.features_step3` AS
SELECT
  *,
  CASE 
    WHEN oldbalanceOrg - amount != newbalanceOrig THEN 1 ELSE 0 
  END AS balance_error
FROM `dotted-rookery-490711-i3.hostfi.features_step2`;
