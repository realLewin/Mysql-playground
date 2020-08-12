-- Select All Story Collections: Titles  That contain 'stories'
SELECT title FROM books WHERE title LIKE '%stories%';

-- Find The Longest Book Print Out the Title and Page Count
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 0, 1;

-- Print a summary containing the title and year, for the 3 most recent books
SELECT CONCAT(title, ' - ', released_year) AS summary FROM books ORDER BY released_year DESC LIMIT 0, 3;

-- Find all books with an author_lname that contains a space(" ")
SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';

-- Find The 3 Books With The Lowest Stock Select title, year, and stock;
SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity LIMIT 0, 3;

-- Print title and author_lname, sorted first by author_lname and then by title;
SELECT title, author_lname FROM books ORDER BY 2, 1;

-- Make This Happen... Sorted Alphabetically By Last Name
-- +---------------------------------------------+
-- | yell                                        |
-- +---------------------------------------------+
-- | MY FAVORITE AUTHOR IS RAYMOND CARVER!       |
-- | MY FAVORITE AUTHOR IS RAYMOND CARVER!       |
-- | MY FAVORITE AUTHOR IS MICHAEL CHABON!       |
-- | MY FAVORITE AUTHOR IS DON DELILLO!          |
-- | MY FAVORITE AUTHOR IS DAVE EGGERS!          |
-- | MY FAVORITE AUTHOR IS DAVE EGGERS!          |
-- | MY FAVORITE AUTHOR IS DAVE EGGERS!          |
-- | MY FAVORITE AUTHOR IS DAVID FOSTER WALLACE! |
-- | MY FAVORITE AUTHOR IS DAVID FOSTER WALLACE! |
-- | MY FAVORITE AUTHOR IS NEIL GAIMAN!          |
-- | MY FAVORITE AUTHOR IS NEIL GAIMAN!          |
-- | MY FAVORITE AUTHOR IS NEIL GAIMAN!          |
-- | MY FAVORITE AUTHOR IS FREIDA HARRIS!        |
-- | MY FAVORITE AUTHOR IS DAN HARRIS!           |
-- | MY FAVORITE AUTHOR IS JHUMPA LAHIRI!        |
-- | MY FAVORITE AUTHOR IS JHUMPA LAHIRI!        |
-- | MY FAVORITE AUTHOR IS GEORGE SAUNDERS!      |
-- | MY FAVORITE AUTHOR IS PATTI SMITH!          |
-- | MY FAVORITE AUTHOR IS JOHN STEINBECK!       |
-- +---------------------------------------------+
SELECT UPPER(CONCAT('MY FAVORITE AUTHOR IS ', author_fname, ' ', author_lname, '!')) AS yell 
FROM books ORDER BY author_lname;
