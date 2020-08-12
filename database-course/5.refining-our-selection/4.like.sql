-- The % symbol represent anything, it is a wild card;

-- Select author_fname start anything, then 'da' then end with anything;
SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';
-- Select author_fname start with 'da' then end with anything;
SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';

-- Select title exactly equal to 'the';
SELECT title FROM books WHERE  title LIKE 'the';
-- Select title start anything, then end with 'the';
SELECT title FROM books WHERE  title LIKE '%the';
-- Select title start anything, then 'the' then end with anything;
SELECT title FROM books WHERE title LIKE '%the%';

-- The _ symbol represent exactly any ONE character, it is a wild card;
SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____';
SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '__';

-- A good example is use in phone number: (235)234-0987 LIKE '(___)___-____'

-- Select title contain % or _ ;
SELECT title FROM books WHERE title LIKE '%\%%'
SELECT title FROM books WHERE title LIKE '%\_%'