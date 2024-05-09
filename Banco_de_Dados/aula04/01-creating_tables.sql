
CREATE TABLE client(
    client_id number(5),
    client_cellphone varchar2(11),
    client_name varchar2(30),
    constraint pk_client primary key (client_id)
);

CREATE TABLE attendance (
    attendance_id number(5),
    attendance_date date,
    attendance_payment_type number(1),
    attendance_procedure number(1),
    attendance_value number(6,2),
    client_id number(5),
    constraint pk_attendance primary key (attendance_id),
    constraint fk_client_id foreign key(client_id) references client (client_id)  
);

SELECT * FROM client;