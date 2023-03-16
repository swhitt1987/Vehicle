CREATE OR REPLACE FUNCTION add_customer_sw(_customer_id integer,_first_name varchar,_last_name varchar)
returns void
as $main$
begin 
	insert into customer_sw(customer_id, first_name, last_name)
	values (_customer_id, _first_name, _last_name);
end;
$main$
language plpgsql;

create or replace function add_vehicle(_vehicle_serial integer, _vehicle_year numeric, _vehicle_make varchar, _vehicle_model varchar)
returns void
as $main$
begin 
	insert into vehicle(vehicle_serial, vehicle_year, vehicle_make, vehicle_model)
	values(_vehicle_serial, _vehicle_year, _vehicle_make, _vehicle_model);
end;
$main$
language plpgsql;

select add_customer_sw(101, 'Stephen', 'Whittaker')
select add_customer_sw(102, 'Cindy', 'Pankuch')
select add_customer_sw(103, 'George', 'Washington')

select * from customer_sw

select add_vehicle(1111, 2010, 'Mazda', 'CX5')
select add_vehicle(2222, 2018, 'Ford', 'F150')
select add_vehicle(3333, 2021, 'Chevy', 'Silverado')

select * from vehicle

insert into salesperson_sw(
	salesperson_id,
	first_name,
	last_name
)values(
	987,
	'Jon',
	'Whittaker'
);

insert into salesperson_sw(
	salesperson_id,
	first_name,
	last_name
)values(
	654,
	'Matthew',
	'Jacob'
);

insert into salesperson_sw(
	salesperson_id,
	first_name,
	last_name
)values(
	321,
	'Joahua',
	'James'
);

select * from salesperson_sw

insert into purchase(
	invoice_number,
	salesperson_id,
	vehicle_serial,
	customer_id,
	total_cost
)values(
	741,
	987,
	2222,
	103,
	23486.23
);

insert into purchase(
	invoice_number,
	salesperson_id,
	vehicle_serial,
	customer_id,
	total_cost
)values(
	852,
	321,
	3333,
	101,
	29281.11
);

insert into purchase(
	invoice_number,
	salesperson_id,
	vehicle_serial,
	customer_id,
	total_cost
)values(
	963,
	654,
	1111,
	102,
	36842.99
);

select * from purchase

insert into mechanic_sw(
	mechanic_id,
	first_name,
	last_name
)values(
	236,
	'Philip',
	'Joseph'
);

insert into mechanic_sw(
	mechanic_id,
	first_name,
	last_name
)values(
	159,
	'Chase',
	'Douglas'
);

insert into mechanic_sw(
	mechanic_id,
	first_name,
	last_name
)values(
	478,
	'Isaiah',
	'James'
);

select * from mechanic_sw

insert into service_sw(
	service_order,
	vehicle_serial,
	mechanic_id,
	customer_id,
	service_price
)values(
	123,
	1111,
	236,
	103,
	325.58
);

insert into service_sw(
	service_order,
	vehicle_serial,
	mechanic_id,
	customer_id,
	service_price
)values(
	456,
	3333,
	478,
	102,
	258.47
);

insert into service_sw(
	service_order,
	vehicle_serial,
	mechanic_id,
	customer_id,
	service_price
)values(
	789,
	2222,
	159,
	101,
	678.23
);

insert into parts_sw(
	part_id,
	part_name,
	part_price
)values(
	874,
	'Brakes',
	'168.23'
);

insert into parts_sw(
	part_id,
	part_name,
	part_price
)values(
	951,
	'Tires',
	'689.23'
);

insert into parts_sw(
	part_id,
	part_name,
	part_price
)values(
	632,
	'Shocks',
	'874.25'
);

select * from parts_sw




