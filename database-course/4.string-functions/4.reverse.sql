-- Reverse a string;
SELECT REVERSE('Hello World');
SELECT REVERSE(author_fname) FROM books;
-- Combine othre string functions;
SELECT CONCAT('woof', REVERSE('woof'));
SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;