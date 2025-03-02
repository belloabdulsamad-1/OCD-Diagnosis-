SELECT COUNT (*)
FROM Ocd_Patients_Dataset

SELECT AVG(Duration_of_Symptoms_months) AS Average_Duration
FROM Ocd_Patients_Dataset

SELECT COUNT(*) AS Total_Patients,
AVG(Age) AS Average_Age
FROM Ocd_Patients_Dataset

SELECT Gender,
AVG(Y_BOCS_Score_Compulsions) AS Avg_Compulsion_Score,
AVG(Y_BOCS_Score_Obsessions) AS Avg_Obsession_Score
FROM Ocd_Patients_Dataset
GROUP BY Gender

SELECT CASE 
WHEN Age BETWEEN 0 AND 18 THEN '0-18'
WHEN Age BETWEEN 19 AND 35 THEN '19-35'
WHEN Age BETWEEN 36 AND 50 THEN '36-50'
ELSE '51+' 
END AS Age_Group, COUNT(*) AS Patient_Count
FROM Ocd_Patients_Dataset
GROUP BY Age

SELECT Medications, COUNT(*) AS Treatment_Count
FROM Ocd_Patients_Dataset
GROUP BY Medications

SELECT Ethnicity, COUNT(*) AS Patient_Count
FROM Ocd_Patients_Dataset
GROUP BY Ethnicity

SELECT Patient_ID,Ethnicity
FROM Ocd_Patients_Dataset
ORDER BY Patient_ID

SELECT Family_History_of_OCD, COUNT(*) AS Family_History_Count
FROM Ocd_Patients_Dataset
GROUP BY Family_History_of_OCD

SELECT Gender, 
COUNT(*) AS Patient_Count
FROM Ocd_Patients_Dataset
GROUP BY Gender

SELECT Education_Level, COUNT(*) AS Education_Count
FROM Ocd_Patients_Dataset
GROUP BY Education_Level

SELECT Marital_Status, COUNT (*) AS Marital_Count
FROM Ocd_Patients_Dataset
GROUP BY Marital_Status
