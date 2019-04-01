CREATE OR REPLACE TABLE `bracketology.ncaa_2019_tournament_predictions` AS

SELECT
  *
FROM
  ML.PREDICT(MODEL     `bracketology.ncaa_model_updated`, (

SELECT * FROM `bracketology.ncaa_2019_tournament`
))
