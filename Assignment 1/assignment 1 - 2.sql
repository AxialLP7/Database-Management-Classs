create table patient
(
	patient_id integer not null,
	patient_name varchar2(50) not null,
	patient_address varchar2(200),
	patient_hospital_stay_days integer not null,
	patient_admit_date date,
	room_no integer not null,
	physician_id integer not null,

	-- primary key
	CONSTRAINT patientPK primary key (patient_id),

	-- all others
	CONSTRAINT Check_HosStayDay check (patient_hospital_stay_days >= 0)
	-- don't set up foreign key reference just yet b/c room table has not
	-- been created
);

create table room
(
	room_no integer not null,
	room_rate numeric(10,2) not null,
	room_phone varchar2(8), -- room can have no phones

	-- primary key
	CONSTRAINT roomPK primary key (room_no),

	-- all others
	CONSTRAINT chkRoomNo check (room_no >= 100 AND room_no <= 999),
	CONSTRAINT chkRoomRate check (room_rate >= 30 AND room_rate <= 100)
);

create table physician
(
	physician_id integer not null,
	physician_name varchar2(50) not null,
	department_name varchar2(50) not null,
	treatment_id integer not null,

	-- primary key
	CONSTRAINT phys_pk primary key(physician_id)

	-- all others

);

create table department
(
	department_name varchar2(50) not null,
	physician_id integer not null,

	-- primary key
	CONSTRAINT dpmt_pk primary key (department_name),

	-- all others
	-- can create fk here b/c physician table has been created above
	CONSTRAINT dpmt_fk
		foreign key (physician_id)
		references physician(physician_id)
);

create table treatment
(
	treament_id integer not null,
	treatment_description varchar2(200) not null,
	treatment_cost numeric(10, 2) not null,

	-- primary key
	CONSTRAINT treatment_pk primary key (treament_id),

	-- all others
	CONSTRAINT chk_cost check (treatment_cost >= 50)
);

alter table patient
	add CONSTRAINT patient_fk
		foreign key (room_no)
		references room(room_no)
		on delete cascade;

alter table patient
	add CONSTRAINT patient_fk_2
		foreign key (physician_id)
		references physician(physician_id);
-- no need treatment as a foreign key b/c can get it from physician_id

alter table physician
	add CONSTRAINT physician_fk
		foreign key (treatment_id)
		references treatment(treatment_id)
		on delete cascade;

alter table physician
	add CONSTRAINT physician_fk_2
		foreign key (department_name)
		references department(department_name)
		on delete cascade;
