-- Dummy data for BOOKS table
INSERT INTO BOOKS VALUES (
(1001, 'The Great Gatsby', 15.99, 101, 'F. Scott Fitzgerald', 'Classic', 'A story of love, wealth, and tragedy in the Roaring Twenties.', '9780743273565', 'Scribner', TO_DATE('1925-04-10', 'YYYY-MM-DD')),
(1002, 'To Kill a Mockingbird', 12.50, 102, 'Harper Lee', 'Fiction', 'A powerful story of racial injustice and moral growth in the Deep South.', '9780061120084', 'Harper Perennial Modern Classics', TO_DATE('1960-07-11', 'YYYY-MM-DD')),
(1003, '1984', 10.99, 103, 'George Orwell', 'Dystopian', 'A dystopian novel depicting a totalitarian regime and the struggle for individual freedom.', '9780451524935', 'Signet Classics', TO_DATE('1949-06-08', 'YYYY-MM-DD')),
(1004, 'Pride and Prejudice', 8.99, 104, 'Jane Austen', 'Romance', 'A classic romance novel exploring themes of love, reputation, and social class in Georgian England.', '9780141439518', 'Penguin Classics', TO_DATE('1813-01-28', 'YYYY-MM-DD')),
(1005, 'The Catcher in the Rye', 9.75, 105, 'J.D. Salinger', 'Coming-of-age', 'A coming-of-age novel narrated by a teenager who struggles with alienation and identity.', '9780316769488', 'Back Bay Books', TO_DATE('1951-07-16', 'YYYY-MM-DD')),
(1006, 'The Hobbit', 11.25, 106, 'J.R.R. Tolkien', 'Fantasy', 'An adventure novel following the journey of Bilbo Baggins as he embarks on a quest to reclaim treasure guarded by a dragon.', '9780547928227', 'Mariner Books', TO_DATE('1937-09-21', 'YYYY-MM-DD')),
(1007, 'The Hunger Games', 14.20, 107, 'Suzanne Collins', 'Young Adult', 'The first book in a dystopian trilogy where teenagers fight to the death in a televised spectacle.', '9780439023481', 'Scholastic Press', TO_DATE('2008-09-14', 'YYYY-MM-DD')),
(1008, 'The Da Vinci Code', 13.45, 108, 'Dan Brown', 'Mystery', 'A mystery thriller that follows symbologist Robert Langdon as he investigates a murder in the Louvre Museum.', '9780307474278', 'Anchor Books', TO_DATE('2003-03-18', 'YYYY-MM-DD')),
(1009, 'Harry Potter and the Philosopher''s Stone', 16.99, 109, 'J.K. Rowling', 'Fantasy', 'The first book in the Harry Potter series, following the adventures of a young wizard.', '9780747532743', 'Bloomsbury Publishing', TO_DATE('1997-06-26', 'YYYY-MM-DD')),
(1010, 'The Lord of the Rings: The Fellowship of the Ring', 19.75, 110, 'J.R.R. Tolkien', 'Fantasy', 'The first volume of the epic fantasy series set in the world of Middle-earth.', '9780547928210', 'Mariner Books', TO_DATE('1954-07-29', 'YYYY-MM-DD'))
);

-- Dummy data for REVIEWS table
INSERT INTO REVIEWS VALUES(
(1, 1001, 1001, '5', 'Absolutely loved it! A timeless classic.'),
(2, 1002, 1002, '4', 'A compelling read with deep themes.'),
(3, 1003, 1003, '5', 'Orwell's masterpiece; a must-read for everyone.'),
(4, 1004, 1004, '4', 'Delightful characters and witty dialogue.'),
(5, 1005, 1005, '3', 'Interesting perspective on adolescence.'),
(6, 1006, 1006, '5', 'A captivating adventure with memorable characters.'),
(7, 1007, 1007, '4', 'Exciting and thought-provoking.'),
(8, 1008, 1008, '3', 'Fast-paced and entertaining, but lacks depth.'),
(9, 1009, 1009, '5', 'Magical and enchanting; a true classic.'),
(10, 1010, 1010, '5', 'An epic journey that leaves you craving for more.')
);

-- Dummy data for ORDER_ITEMS table
INSERT INTO ORDER_ITEMS VALUES(
(1, 1, 1001, 1, 15.99),
(2, 1, 1002, 2, 25.00),
(3, 2, 1003, 1, 10.99)
);

-- Dummy data for CATEGORIES table
INSERT INTO CATEGORIES VALUES(
('Classic'),
('Fiction'),
('Dystopian'),
('Romance'),
('Coming-of-age'),
('Fantasy'),
('Young Adult'),
('Mystery')
);

-- Dummy data for USER_ACCOUNT table
INSERT INTO USER_ACCOUNT (USER_ID, USER_NAME, EMAIL, PASSWORD_HASH)
VALUES(
(1001, 'user1', 'user1@example.com', 'hashed_password_1'),
(1002, 'user2', 'user2@example.com', 'hashed_password_2'),
(1003, 'user3', 'user3@example.com', 'hashed_password_3'),
(1004, 'user4', 'user4@example.com', 'hashed_password_4'),
(1005, 'user5', 'user5@example.com', 'hashed_password_5'),
(1006, 'user6', 'user6@example.com', 'hashed_password_6'),
(1007, 'user7', 'user7@example.com', 'hashed_password_7')
);


-- Dummy data for AUTHORS table
INSERT INTO AUTHORS (AUTHOR_ID, AUTHOR_NAME, BIOGRAPHY)
VALUES
(101, 'F. Scott Fitzgerald', 'F. Scott Fitzgerald was an American novelist and short story writer, whose works are evocative of the Jazz Age, a term he coined himself.');

INSERT INTO AUTHORS (AUTHOR_ID, AUTHOR_NAME, BIOGRAPHY)
VALUES
(102, 'Harper Lee', 'Harper Lee was an American novelist, widely known for her novel "To Kill a Mockingbird". She received numerous accolades for her work, including the Pulitzer Prize.');
INSERT INTO AUTHORS (AUTHOR_ID, AUTHOR_NAME, BIOGRAPHY)
VALUES
(103, 'George Orwell', 'George Orwell, whose real name was Eric Arthur Blair, was an English novelist, essayist, journalist. He is best known for his dystopian novel "1984" and the allegorical novella "Animal Farm".');
