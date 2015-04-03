-- insert into treatment values(treatment_id, treatment_description, treatment_cost);
insert into treatment values(100, 'cocaine', 600);
insert into treatment values(200, 'marijuana', 50);
insert into treatment values(300, 'mushrooms', 80);
insert into treatment values(400, 'drugs', 1000);
insert into treatment values(500, 'pharmacy', 250);

-- insert into department values(department_name, physician_id);
insert into department values('eggs', 1);
insert into department values('benedict', 2);
insert into department values('california', 3);

-- insert into physician values(physician_id, physician_name, department_id, treatment_id); 
insert into physician values(1, 'audi', 1, 100); 
insert into physician values(2, 'bmu', 2, 200); 
insert into physician values(3, 'anu', 2, 200);
insert into physician values(4, 'war', 3, 200);
insert into physician values(5, 'salad', 3, 100);	

-- insert into room values(room_no, room_rate, room_phone);
insert into room values(100, 60, 99999);
insert into room values(101, 65, 2222);
insert into room values(102, 68, 2223);	
insert into room values(103, 70.13, 2224);
insert into room values(104, 32.33, 2225);
insert into room values(105, 65.02, 2226);	

-- insert into patient values(id, name, addr, HSD, A.D., ROOM_NO);
insert into patient values(1, 'John', 'john home', 30, 'Mar-11-2015', 100, 1);
insert into patient values(2, 'smith', 'smith home', 29, 'Mar-10-2015', 101, 1);
insert into patient values(3, 'sally', 'sally home', 28, 'Mar-09-2015', 102, 2);
insert into patient values(4, 'Wally', 'wally home', 27, 'Mar-07-2015', 102, 3);
insert into patient values(5, 'Ally', 'ally home', 31, 'Mar-06-2015', 103, 5);
insert into patient values(6, 'Ali', 'ali home', 33, 'Feb-06-2015', 105, 5);	