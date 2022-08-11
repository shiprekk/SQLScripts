
SELECT CONCAT(author_lname, ', ', author_fname) AS author_name, AVG(pages)
FROM books
GROUP BY author_name;

SELECT
released_year AS 'year', COUNT(*) AS '# of books', AVG(pages) AS 'avg pages'
FROM books
WHERE pages > 400
GROUP BY released_year;