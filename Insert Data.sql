-- Insert Data in the tables
INSERT INTO Authors (author_id, author_name, nationality, birth_date) 
VALUES (1, 'J.K. Rowling', 'British', '1965-07-31'),
       (2, 'Stephen King', 'American', '1947-09-21');

INSERT INTO Genres (genre_id, genre_name) 
VALUES (1, 'Fantasy'),
       (2, 'Horror');

INSERT INTO Books (book_id, title, author_id, genre_id, publication_year, ISBN, is_available, copy_id, condition, location, is_copy_available) 
VALUES (1, 'Harry Potter and the Sorcerer''s Stone', 1, 1, 1997, '9780590353427', TRUE, 1, 'Good', 'Main Library', TRUE),
       (2, 'It', 2, 2, 1986, '9780670813025', TRUE, 1, 'Fair', 'Branch A', TRUE);

INSERT INTO Users (user_id, username, full_name, email, phone_number) 
VALUES (1, 'harrypotterfan', 'Harry Potter Fan', 'hpfan@example.com', '123-456-7890'),
       (2, 'stephenkingreader', 'Stephen King Reader', 'skreader@example.com', '987-654-3210');

INSERT INTO Loans (loan_id, user_id, book_id, loan_date, return_date) 
VALUES (1, 1, 1, '2024-03-25', '2024-04-25'),
       (2, 2, 2, '2024-03-25', '2024-04-25');

INSERT INTO Reviews (review_id, user_id, book_id, review_text, rating, review_date) 
VALUES (1, 1, 1, 'A fantastic read!', 5.0, '2024-03-28'),
       (2, 2, 2, 'Scary and thrilling!', 4.5, '2024-03-28');

INSERT INTO Reservations (reservation_id, user_id, book_id, reservation_date) 
VALUES (1, 1, 2, '2024-03-25'),
       (2, 2, 1, '2024-03-25');

INSERT INTO Branches (branch_id, branch_name, address, phone_number) 
VALUES (1, 'Main Library', '123 Library St, City', '111-222-3333'),
       (2, 'Branch A', '456 Branch Ave, Town', '444-555-6666');

INSERT INTO Staff (staff_id, staff_name, role, branch_id, contact_number) 
VALUES (1, 'Librarian 1', 'Librarian', 1, '777-888-9999'),
       (2, 'Assistant Librarian', 'Assistant', 2, '000-111-2222');