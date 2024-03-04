set serveroutput on
DECLARE
v_id employees.employee_id%type;
v_nom employees.last_name%type;
v_prenom employees.first_name%type;
v_i NUMBER := 100;
BEGIN
DBMS_OUTPUT.PUT_LINE('FOR');
FOR i IN 100..120 LOOP
IF MOD(i, 2) = 0 THEN
SELECT employee_id, first_name, last_name INTO v_id, v_nom, v_prenom from employees WHERE employee_id = i;
DBMS_OUTPUT.PUT_LINE('id: ' || v_id || ', Nom: ' || v_nom || ', Prénom: ' || v_prenom);
END IF;
END LOOP;
DBMS_OUTPUT.PUT_LINE('LOOP');
LOOP
EXIT WHEN v_i > 120;
IF MOD(v_i, 2) = 0 THEN
            SELECT employee_id, first_name, last_name INTO v_id, v_nom, v_prenom
            FROM employees
            WHERE employee_id = v_i;

            DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_id || ', Nom: ' || v_nom || ', Prénom: ' || v_prenom);
        END IF;
        v_i := v_i + 1;
END LOOP;
DBMS_OUTPUT.PUT_LINE('WHILE');    
v_i:= 100;
WHILE v_i <= 120 LOOP
        IF MOD(v_i, 2) = 0 THEN
            SELECT employee_id, first_name, last_name INTO v_id, v_nom, v_prenom
            FROM employees
            WHERE employee_id = v_i;

            DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_id || ', Nom: ' || v_nom || ', Prénom: ' || v_prenom);
        END IF;
        v_i := v_i + 1;
    END LOOP;
END;
/