-- Use ORDER BY;
SELECT released_year FROM books ORDER BY released_year;
-- Order by descending;
SELECT released_year FROM books ORDER BY released_year DESC;
-- order by ascending, this is the default for order by;
SELECT released_year FROM books ORDER BY released_year ASC;

-- Select multiple rows;
SELECT title, released_year, pages FROM books ORDER BY released_year;
-- This is work!
SELECT title, pages FROM books ORDER BY released_year;

-- Order by second row that is author_fname;
SELECT title, author_fname, author_lname FROM books ORDER BY 2;
-- Order by first row that is title;
SELECT title, author_fname, author_lname FROM books ORDER BY 1;
SELECT title, author_fname, author_lname FROM books ORDER BY 1 DESC;

-- Order the author_lname first than the author_fname;
SELECT author_fname, author_lname FROM books ORDER BY author_lname, author_fname;