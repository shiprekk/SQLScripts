
SELECT title, author_lname 
FROM books
WHERE author_lname = 'Eggers'
OR author_lname = 'Chabon';

SELECT title, pages
FROM books
WHERE pages BETWEEN 100 AND 200
ORDER BY pages;

SELECT title, author_lname
FROM books
WHERE author_lname LIKE 'C%'
OR author_lname LIKE 'S%';

SELECT CONCAT(author_lname, ', ', author_fname) AS author_name,
COUNT(*) AS 'COUNT'
FROM books
GROUP BY author_name
HAVING COUNT(*) > 0;