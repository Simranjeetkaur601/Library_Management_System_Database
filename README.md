Library Management System Database

A Library Management System (LMS) is a software application or database system designed to efficiently manage and organize library resources, services, and operations. It automates various library tasks, such as cataloging books, tracking borrowing and returning of materials, managing user information, handling reservations and requests, generating reports, and facilitating administrative functions.
Key features of a Library Management System typically include:
1.	Cataloging and Inventory Management: Maintaining a centralized database of library materials, including books, periodicals, multimedia resources, and digital content. This involves recording details such as title, author, genre, publication information, availability status, and location within the library.
2.	User Management: Managing user profiles, memberships, and access privileges. This includes registering new users, updating user information, issuing library cards or IDs, and maintaining borrowing history.
3.	Loan Tracking: Tracking loans and returns of library materials. This includes recording loan transactions, due dates, renewals, fines for late returns, and managing reservations and holds.
4.	Search and Discovery: Providing search functionalities to help users discover and access library materials. This may include keyword search, advanced search options, filters based on categories (e.g., genre, author), and recommendations based on user preferences.
5.	Reviews and Ratings: Allowing users to review and rate library materials. This can help other users make informed decisions about what to borrow and read.
6.	Reservations and Requests: Enabling users to reserve materials that are currently unavailable and managing requests for interlibrary loans or acquisitions.
7.	Administrative Tools: Providing tools for library administrators to manage the system, generate reports (e.g., usage statistics, inventory status), configure settings, and perform tasks related to budgeting, acquisitions, and collection development.
8.	Integration with Digital Resources: Integrating digital resources such as e-books, e-journals, databases, and online resources into the library catalog and enabling access to these resources through the system.

Tables:
1.	Authors: Stores information about authors, including their ID, name, nationality, and birth date.
2.	Genres: Contains a list of book genres with unique identifiers.
3.	Books: Stores information about books, including title, author, genre, publication year, ISBN, availability status, copy details, and location within the library.
4.	Users: Stores information about library users, including their ID, username, full name, email, and phone number.
5.	Loans: Tracks loans of books to users, including loan ID, user ID, book ID, loan date, and return date.
6.	Reviews: Stores user reviews and ratings for books, including review ID, user ID, book ID, review text, rating, and review date.
7.	Reservations: Tracks book reservations made by users, including reservation ID, user ID, book ID, and reservation date.
8.	Branches: Stores information about library branches, including branch ID, name, address, and phone number.
9.	Staff: Contains details about library staff members, including staff ID, name, role, branch assignment, and contact number.

## ERD Diagram
[ERD Diagram]("C:\Users\simra\Desktop\SQL assignment\ERD.png")

