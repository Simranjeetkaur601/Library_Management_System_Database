-- Create Authors table
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL,
    nationality VARCHAR(50),
    birth_date DATE
);

-- Create Genres table
CREATE TABLE Genres (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(50) UNIQUE
);

-- Create Books table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT,
    genre_id INT,
    publication_year INT,
    ISBN VARCHAR(20),
    is_available BOOLEAN DEFAULT TRUE,
    copy_id INT,
    condition VARCHAR(50),
    location VARCHAR(100),
    is_copy_available BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

-- Create Users table
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    full_name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(15)
);

-- Create Loans table
CREATE TABLE Loans (
    loan_id INT PRIMARY KEY,
    user_id INT,
    book_id INT,
    loan_date DATE,
    return_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Create Reviews table
CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    user_id INT,
    book_id INT,
    review_text TEXT,
    rating DECIMAL(3,2),
    review_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Create Reservations table
CREATE TABLE Reservations (
    reservation_id INT PRIMARY KEY,
    user_id INT,
    book_id INT,
    reservation_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Create Branches table
CREATE TABLE Branches (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100) NOT NULL,
    address VARCHAR(255),
    phone_number VARCHAR(15)
);

-- Create Staff table
CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    staff_name VARCHAR(100) NOT NULL,
    role VARCHAR(50),
    branch_id INT,
    contact_number VARCHAR(15),
    FOREIGN KEY (branch_id) REFERENCES Branches(branch_id)
);

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





