USE vaccine_report;

-- show all unique vaccine report
(SELECT * FROM hospital1)
UNION
(SELECT * FROM hospital2)
ORDER BY vaccine_year;

-- all patients who have either received the first or second dose in 2021
(SELECT * FROM hospital1 WHERE vaccine_year = '2021')
UNION
(SELECT * FROM hospital2 WHERE vaccine_year = '2021');

-- show all vaccine report from both hospitals
(SELECT * FROM hospital1)
UNION ALL
(SELECT * FROM hospital2);