-- Group By group the data in a single row without duplicate;
SELECT title, author_lname FROM books GROUP BY author_lname;
-- Count with each unique author_lname;
SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;

-- Examples;
SELECT released_year, COUNT(*) FROM books GROUP BY released_year;
-- Another;
SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released') AS year 
FROM books GROUP BY released_year;