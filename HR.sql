Use HyVeeHR;

Select*
From HR;

SELECT DISTINCT JobRole
FROM HR;
--Seeing which would be best appropriate Salary when chaning job titles
SELECT JobRole, AVG(HourlyRate) AS AverageHourlyRate
FROM HR
GROUP BY JobRole
ORDER BY AverageHourlyRate DESC;

-- Changing the roles to fit better with Hy-Vee positions
UPDATE HR
SET JobRole = 'Manager'
WHERE JobRole = 'Regional Manager';

UPDATE HR
SET JobRole = 'Marketing'
WHERE JobRole = 'Healthcare Representative';

UPDATE HR
SET JobRole = 'IT'
WHERE JobRole = 'Laboratory Technician';

UPDATE HR
SET JobRole = 'Inventory Manager'
WHERE JobRole = 'Inventory';

UPDATE HR
SET JobRole = 'Nutritionist'
WHERE JobRole = 'Manufacturing Director';

UPDATE HR
SET JobRole = 'Cook Manager'
WHERE JobRole = 'Human Resources';

UPDATE HR
SET JobRole = 'Manager'
WHERE JobRole = 'Regional Manager';

UPDATE HR
SET JobRole = 'Assiant Managers'
WHERE JobRole = 'Research Director';

UPDATE HR
SET JobRole = 'Regional Managers'
WHERE JobRole = 'Research Scientist';

-- Getting rid of data that I don't need.
ALTER TABLE HR
DROP COLUMN BusinessTravel;

ALTER TABLE HR
DROP COLUMN DailyRate;

ALTER TABLE HR
DROP COLUMN EducationField;

ALTER TABLE HR
DROP COLUMN StockOptionLevel;

ALTER TABLE HR
DROP COLUMN WorkLifeBalance;

ALTER TABLE HR
DROP COLUMN YearsWithCurrManager;

ALTER TABLE HR
DROP COLUMN EmployeeCount;

ALTER TABLE HR
DROP COLUMN JobLevel;

ALTER TABLE HR
DROP COLUMN Attrition;

ALTER TABLE HR
DROP COLUMN Department;

ALTER TABLE HR
DROP COLUMN RelationshipSatisfaction;

ALTER TABLE HR
DROP COLUMN DistanceFromHome;

ALTER TABLE HR
DROP COLUMN MonthlyRate;

ALTER TABLE HR
DROP COLUMN MonthlyIncome;

-- Cleaning the age column
UPDATE HR
SET Age = REPLACE(Age, '"', '');

--Adding a yearly Salary Column
ALTER TABLE HR
ADD YearlySalary INT;

UPDATE HR
SET YearlySalary = HourlyRate * 80 * 26; 

