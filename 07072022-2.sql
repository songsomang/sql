select *
from patient
join encounter on patient.pat_id = encounter.pat_id
join department on encounter.dept_id = department.dept_id
order by patient.pat_id, enc_date ASC;

select *
from orders
left outer join encounter on
encounter.enc_id = orders.enc_id ;

select * from orders
left outer join provider on provider.prov_id = orders.prov_id;

select * from medication
join medication_has_orders on medication_has_orders.med_id = medication.med_id
join orders on medication_has_orders.order_id = orders.order_id;




