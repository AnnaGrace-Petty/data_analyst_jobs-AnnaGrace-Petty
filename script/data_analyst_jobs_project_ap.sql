--QUESTION 1
SELECT count(*) AS row_count
FROM data_analyst_jobs ;
--row_count = 1754

--QUESTION 2
SELECT *
FROM data_analyst_jobs
LIMIT (10) ;
--ExxonMobil

--QUESTION 3
SELECT COUNT(location) AS tn_postings
FROM data_analyst_jobs
WHERE location IN ('TN') ;
--tn_postings = 21
SELECT COUNT(location) AS tn_or_KY
FROM data_analyst_jobs
WHERE location IN ('TN')
 OR location IN ('KY') ;
--tn_or_ky = 27

--QUESTION 4
SELECT COUNT(location) AS tn_above_4_star
FROM data_analyst_jobs
WHERE location = ('TN')
 AND star_rating IS NOT NULL
 AND star_rating > 4 ;
--tn_above_4_star = 4

--QUESTIONS 5
SELECT COUNT(review_count) AS between_500_to_1000
FROM data_analyst_jobs
WHERE review_count >= 500
 AND review_count <= 1000 ;
--between_500_to_1000 = 151

 
--QUESTION 6
SELECT location AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE location IS NOT NULL
 AND star_rating IS NOT NULL
GROUP BY state 
ORDER BY avg_rating DESC ;
--state = NE, avg_rating = 4.20

--QUESTION 7
SELECT COUNT(DISTINCT(title)) AS unique_job_count
FROM data_analyst_jobs ;
--unique_job_count = 881

--QUESTION 8
SELECT COUNT(DISTINCT(title)) AS unique_job_count_ca
FROM data_analyst_jobs
WHERE location LIKE('CA') ;
--unique_job_count_ca = 230

--QUESTION 9 
SELECT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000
 AND company IS NOT NULL
GROUP BY company ;
-- 40

--QUESTION 10
SELECT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000
 AND company IS NOT NULL
GROUP BY company
ORDER BY avg_rating DESC ;
--company = Unilever, avg_rating = 4.20

--QUESTION 11
SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs
WHERE title LIKE '%Analyst%' ;
--754

--QUESTION 12
SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs
WHERE title NOT ILIKE '%anylytics%'
 AND title NOT ILIKE '%analyst%' ;
--107

--BONUS
SELECT domain, COUNT(title) AS total_jobs
FROM data_analyst_jobs
WHERE skill ILIKE '%SQL%'
 AND days_since_posting > 21 
 AND domain IS NOT NULL
GROUP BY domain
ORDER BY total_jobs DESC ;




 
 
 

 
 



