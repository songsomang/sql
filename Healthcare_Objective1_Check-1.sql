
select
 (select distinct case when (SELECT COUNT(distinct pat_id) FROM patient) >= 3 then 'PASS' ELSE 'FAIL' end from patient ) AS patient
,(select distinct case when (SELECT COUNT(distinct enc_id) FROM encounter) >= 7 then 'PASS' ELSE 'FAIL' end from patient ) AS encounter
,(select distinct case when (SELECT COUNT(distinct dept_id) FROM department) >= 3 then 'PASS' ELSE 'FAIL' end from patient ) AS department
,(select distinct case when (SELECT COUNT(distinct order_id) FROM orders) >= 8 then 'PASS' ELSE 'FAIL' end from patient ) AS orders
,(select distinct case when (SELECT COUNT(distinct prov_id) FROM provider) >= 3 then 'PASS' ELSE 'FAIL' end from patient ) AS provider
,(select distinct case when (SELECT COUNT(*) FROM medication_has_orders) >= 11 then 'PASS' ELSE 'FAIL' end from patient ) AS medication_has_orders
,(select distinct case when (SELECT COUNT(distinct med_id) FROM medication) >= 6 then 'PASS' ELSE 'FAIL' end from patient ) AS medication
