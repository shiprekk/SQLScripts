USE a2;
SELECT * FROM employees;
UPDATE employees SET
current_status='unemployed'
WHERE first_name='Chase';
SELECT * FROM employees;