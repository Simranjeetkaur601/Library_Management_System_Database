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

