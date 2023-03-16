create table vehicle(
	vehicle_serial SERIAL primary key,
	vehicle_year NUMERIC(4),
	vehicle_make VARCHAR(50),
	vehicle_model VARCHAR(50)
);

create table salesperson_sw(
	salesperson_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table customer_sw(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table mechanic_sw(
	mechanic_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table parts_sw(
	part_id SERIAL primary key,
	part_name VARCHAR(100),
	part_price NUMERIC(50,2)
);

create table purchase(
	invoice_number SERIAL primary key,
	salesperson_id integer,
	vehicle_serial integer,
	customer_id integer,
	total_cost NUMERIC(10,2),
	foreign key(salesperson_id) references salesperson_sw(salesperson_id),
	foreign key(vehicle_serial) references vehicle(vehicle_serial),
	foreign key(customer_id) references customer_sw(customer_id)
);

create table service_sw(
	service_order SERIAL primary key,
	vehicle_serial integer,
	mechanic_id integer,
	customer_id integer,
	service_price NUMERIC(50,2),
	foreign key(vehicle_serial) references vehicle(vehicle_serial),
	foreign key(mechanic_id) references mechanic_sw(mechanic_id),
	foreign key(customer_id) references customer_sw(customer_id)
);
