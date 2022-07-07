CREATE VIEW v_patient_visit_orders AS
select 
patient.pat_id, patient.first_name, patient.last_name, patient.birth_date,
encounter.enc_date,
department.dept_name,
orders.order_id, orders.order_date,
provider.prov_name,
medication.med_name
from patient
join encounter on patient.pat_id = encounter.pat_id
join department on encounter.dept_id = department.dept_id
join orders on orders.enc_id = encounter.enc_id
join provider on provider.prov_id = orders.prov_id
join medication_has_orders on medication_has_orders.order_id = orders.order_id
join medication on medication.med_id = medication_has_orders.med_id
order by patient.pat_id, encounter.enc_date, orders.order_date, medication.med_id ASC;


