SET SERVEROUTPUT ON;
Declare
	v_id number=100;
	v_name varchar2(30):='raju';
	v_salary number:=15000;
	v_did number:=5;
Begin
	insert into emp(eid,name,sal,did) values(v_id,v_name,v_salary,v_did);
	dbms_output.put_line('Record inserted successfully.');
Exception
	When Dup_val_on_index then
	dbms_output.put_line('Employee ID already exists: ');
	When others then
	dbms_output.put_line('Error occurred: '|| SQLERRM);
end;
/	
