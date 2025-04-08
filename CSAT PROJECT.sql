SELECT * FROM project_csat_analytics.CSAT;
SELECT * FROM project_csat_analytics.CSAT WHERE project_csat_analytics.CSAT.csat_score="3";
SELECT * FROM project_csat_analytics.CSAT WHERE project_csat_analytics.CSAT.csat_score="10";
SELECT * FROM project_csat_analytics.CSAT where project_csat_analytics.CSAT.state="california";
SELECT customer_name, state, csat_score FROM project_csat_analytics.CSAT
WHERE state = "California" AND csat_score = "10";
SELECT customer_name, reason
FROM project_csat_analytics LIMIT 10;
SELECT count(*) FROM project_csat_analytics where project_csat_analytics.CSAT.csat_score="10";
select * FROM project_csat_analytics.CSAT;


