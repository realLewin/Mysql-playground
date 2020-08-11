-- Reverse and Uppercase the following sentence: "Why does my cat look at me with such hatred?"
SELECT REVERSE(UPPER("Why does my cat look at me with such hatred?"));

-- The result?
-- SELECT REPLACE (CONCAT('I', ' ', 'like', ' ', 'cats'), ' ', '-');
-- I-like-cats

-- Replace spaces in titles with '->'
SELECT REPLACE(title, ' ', '->') FROM books;

-- Print This Out: 
-- +----------------+----------------+
-- | forwards       | backwards      |
-- +----------------+----------------+
-- | Lahiri         | irihaL         |
-- ...
SELECT author_lname AS forwards, REVERSE(author_lname) AS backwards FROM books;

-- +----------------------+
-- | full name in caps    |
-- +----------------------+
-- | JHUMPA LAHIRI        |
-- ...
SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps' FROM books;

-- +--------------------------------------------------------------------------+
-- | blurb                                                                    |
-- +--------------------------------------------------------------------------+
-- | The Namesake was released in 2003                                        |
-- ...
SELECT CONCAT(title, ' was relwased in ', released_year) AS blurb from books;

-- Print book titles and the length of each title
SELECT title, CHAR_LENGTH(title) FROM books;

-- +---------------+-------------+--------------+
-- | short title   | author      | quantity     |
-- +---------------+-------------+--------------+
-- | American G... | Gaiman,Neil | 12 in stock  |
-- | A Heartbre... | Eggers,Dave | 104 in stock |
-- +---------------+-------------+--------------+
SELECT CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title',
       CONCAT(author_lname, ',', author_fname) AS author,
       CONCAT(stock_quantity, ' in stock') AS quantity
FROM books
WHERE released_year=2001;