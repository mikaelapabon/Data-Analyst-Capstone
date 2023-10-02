--Count the number of participants in each dataset--
SELECT COUNT(DISTINCT Id)
FROM `voltaic-nebula-396720.bellabeat_case_study.daily_activity`;

SELECT COUNT(DISTINCT Id)
FROM `voltaic-nebula-396720.bellabeat_case_study.sleep_day`;

SELECT COUNT(DISTINCT Id)
FROM `voltaic-nebula-396720.bellabeat_case_study.weight_log_info`;

--Look for duplicates--
SELECT Id, Date, COUNT(*)
FROM `voltaic-nebula-396720.bellabeat_case_study.daily_activity`
GROUP BY Id, Date
HAVING COUNT(*) > 1;

SELECT Id, Date, COUNT(*)
FROM `voltaic-nebula-396720.bellabeat_case_study.sleep_day`
GROUP BY Id, Date
HAVING COUNT(*) > 1;

SELECT Id, Date, COUNT(*)
FROM `voltaic-nebula-396720.bellabeat_case_study.weight_log_info`
GROUP BY Id, Date
HAVING COUNT(*) > 1;

--Number of Entries where no movement was detected--
SELECT COUNT(*) 
FROM `voltaic-nebula-396720.bellabeat_case_study.daily_activity`
WHERE SedentaryMinutes = 1440 ;

--Daily Activity Averages--
SELECT AVG(TotalSteps) AS avg_steps, AVG(TotalDistance) AS avg_distance, AVG(VeryActiveMinutes) AS avg_very_act_min, AVG(FairlyActiveMinutes) AS avg_fairly_act_min, AVG(LightlyActiveMinutes) AS avg_lightly_act_min, AVG(SedentaryMinutes) AS avg_sedentary_min
FROM `voltaic-nebula-396720.bellabeat_case_study.daily_activity`
WHERE SedentaryMinutes != 1440;

SELECT AVG(TotalSteps) AS avg_steps, AVG(TotalDistance) AS avg_distance, AVG(VeryActiveMinutes) AS avg_very_act_min, AVG(FairlyActiveMinutes) AS avg_fairly_act_min, AVG(LightlyActiveMinutes) AS avg_lightly_act_min, AVG(SedentaryMinutes) AS avg_sedentary_min
FROM `voltaic-nebula-396720.bellabeat_case_study.daily_activity`;

--Sleep Log Averages--
SELECT AVG(TotalMinutesAsleep) AS avg_min_asleep
FROM `voltaic-nebula-396720.bellabeat_case_study.sleep_day`;

SELECT AVG(TotalTimeInBed) AS avg_time_in_bed
FROM `voltaic-nebula-396720.bellabeat_case_study.sleep_day`;

SELECT AVG(TotalTimeInBed - TotalMinutesAsleep) AS avg_time_awake
FROM `voltaic-nebula-396720.bellabeat_case_study.sleep_day`;

--weight log averages--
SELECT AVG(WeightKg) AS avg_weight_kg
FROM `voltaic-nebula-396720.bellabeat_case_study.weight_log_info`;

SELECT AVG(WeightPounds) AS avg_weight_lbs
FROM `voltaic-nebula-396720.bellabeat_case_study.weight_log_info`;

SELECT AVG(BMI) AS avg_BMI
FROM `voltaic-nebula-396720.bellabeat_case_study.weight_log_info`;

