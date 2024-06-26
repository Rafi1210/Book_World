drop table books cascade constraints;
drop table reviews cascade constraints;


CREATE TABLE BOOKS(
    BOOK_ID NUMBER(6) NOT NULL PRIMARY KEY,
    BOOK_COVER BLOB,
    TITLE VARCHAR2(100) NOT NULL,
    PRICE NUMBER(4,2) NOT NULL,
    AUTHOR_ID NUMBER(6) NOT NULL,
    AUTHOR_NAME VARCHAR2(100) NOT NULL,
    GENRE VARCHAR2(50) NOT NULL,
    DESCRIPTION VARCHAR2(200) NOT NULL,
    ISBN CHAR(13) NOT NULL,
    PUBLISHER VARCHAR2(100) NOT NULL,
    PUBLICATION_DATE DATE NOT NULL
);

CREATE TABLE REVIEWS(
    REVIEW_ID NUMBER(6) NOT NULL PRIMARY KEY,
    BOOK_NAME VARCHAR2(100),
    USER_ID NUMBER(6) NOT NULL,
    RATING CHAR(5),
    REVIEW_COMMENT VARCHAR2(200)
);

CREATE TABLE ORDER_ITEMS(
    ORDER_ITEM_ID NUMBER(6) NOT NULL PRIMARY KEY,
    ORDER_ID NUMBER(6) NOT NULL,
    BOOK_ID NUMBER(6) NOT NULL,
    QUANTITY NUMBER(10) NOT NULL,
    PRICE NUMBER(10,2) NOT NULL 
);


CREATE TABLE CATEGORIES(
    GENRE VARCHAR2(50) NOT NULL PRIMARY KEY
);

CREATE TABLE USER_ACCOUNT(
    USER_ID NUMBER(6) NOT NULL PRIMARY KEY,
    USER_NAME VARCHAR2(100) NOT NULL,
    EMAIL VARCHAR2(50) NOT NULL,
    PASSWORD_HASH VARCHAR2(18) NOT NULL
);

CREATE TABLE AUTHORS(
    AUTHOR_ID NUMBER(6) NOT NULL PRIMARY KEY,
    AUTHOR_NAME VARCHAR2(200) NOT NULL,
    BIOGRAPHY VARCHAR2(200) NOT NULL
);

CREATE TABLE WISHLIST(
    WISHLIST_ID NUMBER(6) NOT NULL PRIMARY KEY,
    USER_ID NUMBER(6) NOT NULL,
    BOOK_ID NUMBER(6) NOT NULL,
    ADDED_AT DATE NOT NULL
);

CREATE TABLE ORDERS(
    ORDER_ID NUMBER(6) NOT NULL PRIMARY KEY,
    USER_ID NUMBER(6) NOT NULL,
    ORDER_DATE DATE NOT NULL,
    TOTAL_AMOUNT NUMBER(6,2) NOT NULL
);

CREATE TABLE CART(
    CART_ID NUMBER(6) NOT NULL PRIMARY KEY,
    USER_ID NUMBER(6) NOT NULL,
    BOOK_ID NUMBER(6) NOT NULL,
    QUANTITY NUMBER(20) NOT NULL,
    ADDED_AT DATE NOT NULL
);
-- later add the below part
ALTER TABLE CART ADD CONSTRAINT cart_book_id_fk FOREIGN KEY(BOOK_ID) REFERENCES BOOKS(BOOK_ID);
ALTER TABLE ORDER_ITEMS ADD CONSTRAINT order_items_order_id_fk FOREIGN KEY(ORDER_ID) REFERENCES ORDERS(ORDER_ID);
ALTER TABLE ORDER_ITEMS ADD CONSTRAINT order_items_book_id_fk FOREIGN KEY(BOOK_ID) REFERENCES BOOKS(BOOK_ID);
ALTER TABLE WISHLIST ADD CONSTRAINT wishlist_book_id_fk FOREIGN KEY(BOOK_ID) REFERENCES BOOKS(BOOK_ID);
ALTER TABLE BOOKS ADD CONSTRAINT books_genre_fk FOREIGN KEY(GENRE) REFERENCES CATEGORIES(GENRE);
ALTER TABLE CART ADD CONSTRAINT cart_user_id_fk FOREIGN KEY(USER_ID) REFERENCES USER_ACCOUNT(USER_ID);
ALTER TABLE ORDERS ADD CONSTRAINT orders_user_id_fk FOREIGN KEY(USER_ID) REFERENCES USER_ACCOUNT(USER_ID);
ALTER TABLE BOOKS ADD CONSTRAINT books_author_id_fk FOREIGN KEY(AUTHOR_ID) REFERENCES AUTHORS(AUTHOR_ID);
ALTER TABLE REVIEWS ADD CONSTRAINT reviews_user_id_fk FOREIGN KEY(USER_ID) REFERENCES USER_ACCOUNT(USER_ID);
ALTER TABLE REVIEWS ADD CONSTRAINT reviews_book_id_fk FOREIGN KEY(BOOK_ID) REFERENCES BOOKS(BOOK_ID);
ALTER TABLE WISHLIST ADD CONSTRAINT wishlist_user_id_fk FOREIGN KEY(USER_ID) REFERENCES USER_ACCOUNT(USER_ID);


INSERT INTO BOOKS VALUES (B-1001, 'The Great Gatsby', 15.99, 101, 'F. Scott Fitzgerald', 'Classic', 'A story of love, wealth, and tragedy in the Roaring Twenties.', '9780743273565', 'Scribner', TO_DATE('1925-04-10', 'YYYY-MM-DD'));
