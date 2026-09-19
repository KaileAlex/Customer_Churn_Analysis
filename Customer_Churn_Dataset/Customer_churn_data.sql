/*CUSTOMER CHURN ANALYSIS*/

/* -- 1. Overall churn*/
/*SELECT 
COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM data_analysis.customer_churn_data;*/


/* -- 2. Churn by contract*/
/*select 
contract_type,
count(*) as total_customers,
sum(case when churn = 'Yes' then 1 else 0 end) as churned_customers,
round(
	100 * sum(case when churn = 'Yes' then 1 else 0 end) / count(*),2
) as churn_rate

 from data_analysis.customer_churn_data
 group by contract_type
 order by churn_rate desc;*/
 
 
 /* -- 3. Churn by internet service*/
 /*select internet_service,
 count(*) as total_customers,
 round(
	100 * sum(case when churn = 'Yes' then 1 else 0 end) / count(*),2) as churn_rate
 
 from data_analysis.customer_churn_data
 group by internet_service
 order by churn_rate desc;*/
 
 
 /* -- 4. Contract + internet service*/
 /*select internet_service,contract_type,
 count(*) as total_customers,
 round(
	100 * sum(case when churn = 'Yes' then 1 else 0 end) / count(*),2) as churn_rate
 
 from data_analysis.customer_churn_data
 group by internet_service,contract_type
 order by churn_rate desc;*/
 
 
 /* -- 5. Churn by monthly charges*/
 /*select case 
	when monthly_charges < 30 then 'Below $30'
    when monthly_charges < 60 then '$30-$59.99'
    when monthly_charges < 90 then '$60-$89.99'
    else '$90+'
    end as charge_group,
    count(*) as total_customers,
    sum(case when churn = 'Yes' then 1 else 0 end) as churned,
    round(
		100 * sum(case when churn = 'Yes' then 1 else 0 end) / count(*),2) as churn_rate
    
 from data_analysis.customer_churn_data
 group by case 
	when monthly_charges < 30 then 'Below $30'
    when monthly_charges < 60 then '$30-$59.99'
    when monthly_charges < 90 then '$60-$89.99'
    else '$90+'
    end
order by churn_rate desc;*/
 
 
 /* -- 6. Average tenure by churn*/
 /*SELECT
    churn,
    COUNT(*) AS customers,
    ROUND(AVG(tenure_months), 2) AS average_tenure
FROM data_analysis.customer_churn_data
GROUP BY churn;*/


/* -- 7. Churn by tenure*/
/*SELECT
    CASE
        WHEN tenure_months <= 12 THEN '0-12 months'
        WHEN tenure_months <= 24 THEN '13-24 months'
        WHEN tenure_months <= 36 THEN '25-36 months'
        WHEN tenure_months <= 48 THEN '37-48 months'
        ELSE '49-60+ months'
    END AS tenure_group,

    COUNT(*) AS total_customers,

    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,

    ROUND(
        100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate

FROM data_analysis.customer_churn_data
GROUP BY
    CASE
        WHEN tenure_months <= 12 THEN '0-12 months'
        WHEN tenure_months <= 24 THEN '13-24 months'
        WHEN tenure_months <= 36 THEN '25-36 months'
        WHEN tenure_months <= 48 THEN '37-48 months'
        ELSE '49-60+ months'
    END
ORDER BY churn_rate DESC;*/


/* -- 8. Churn reasons*/
/*select churn_reason,
count(*) as churned_customers,
ROUND(
        100.0 * COUNT(*) /
        (SELECT COUNT(*)
         FROM data_analysis.customer_churn_data
         WHERE churn = 'Yes'),
        2
    ) AS percentage_of_churn
from data_analysis.customer_churn_data
where churn = 'Yes'
group by churn_reason
order by churned_customers desc;*/


/* -- 9. Churn by senior citizen status*/
/*select senior_citizen,
	count(*) as total_customers,
    sum(case when churn = 'Yes' then 1 else 0 end) as churned,
    round(
    100 * sum(case when churn = 'Yes' then 1 else 0 end)/count(*),2) as churn_rate
 from data_analysis.customer_churn_data
 group by senior_citizen;*/
 
 
 /* -- 10. Monthly charges of churned customers*/
 /*select 
	sum(case when churn = 'Yes' then monthly_charges else 0 end) as churned_monthly_salary,
    sum(monthly_charges) as total_monthly_charges,
    round(
		100 * sum(case when churn = 'Yes' then monthly_charges else 0 end)/sum(monthly_charges),2) as percentage_churned_charges
 from data_analysis.customer_churn_data*/
 
 
 /* -- 11. Online security*/
 /*SELECT
    online_security,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM data_analysis.customer_churn_data
GROUP BY online_security
ORDER BY churn_rate DESC;*/


