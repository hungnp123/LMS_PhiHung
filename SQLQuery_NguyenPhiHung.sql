Create database Library_Management
go
use Library_Management
go
CREATE TABLE Users (
userid INT PRIMARY KEY NOT NULL,
username VARCHAR(50) NOT NULL unique,
gender VARCHAR(10) NOT NULL,
dob date not null,
email VARCHAR(50) NOT NULL,
u_password VARCHAR(50) NOT NULL,
u_role VARCHAR(20) NOT NULL,
);
go
insert into Users values(1,'PhiHung', 'Male','01/01/2003' ,'hungnp@gmail.com','123@123a','user');
insert into Users values(2,'user', 'Female','02/07/2002' ,'user@gmail.com','12345','user');
insert into Users values(3,'user2', 'Male','10/09/2004' ,'user2@gmail.com','12345','user');
insert into Users values(4,'admin', 'Male','01/01/2001' ,'admin@gmail.com','12345','admin');
insert into Users values(5,'admin2', 'Female','01/01/2003' ,'admin2@gmail.com','123@123a','admin');
Select * from Users
go
create table Librarians (
lib_id int primary key not null,
lib_name varchar(50) not null unique,
lib_dob date not null,
lib_gender varchar (10) not null,
lib_email varchar(50),
lib_phone varchar (50) not null,
)
go
select * from Librarians
insert into Librarians (lib_id, lib_name, lib_dob, lib_gender, lib_email, lib_phone)
values (1, 'Nguyen Van An', '1990-05-15', 'Male', 'nguyenvanan@example.com', '1234567890');
insert into Librarians (lib_id, lib_name, lib_dob, lib_gender, lib_email, lib_phone)
values (2, 'Tran Thi Binh', '1985-08-20', 'Female', 'tranthibinh@example.com', '9876543210');
insert into Librarians (lib_id, lib_name, lib_dob, lib_gender, lib_email, lib_phone)
values (3, 'Le Duc Cuong', '1992-02-10', 'Male', 'leduccuong@example.com', '5555555555');
insert into Librarians (lib_id, lib_name, lib_dob, lib_gender, lib_email, lib_phone)
values (4, 'Pham Thi Dung', '1988-11-30', 'Female', 'phamthidung@example.com', '1111111111');
insert into Librarians (lib_id, lib_name, lib_dob, lib_gender, lib_email, lib_phone)
values (5, 'Vo Van Minh', '1995-07-03', 'Male', 'vovanminh@example.com', '9999999999');
insert into Librarians (lib_id, lib_name, lib_dob, lib_gender, lib_email, lib_phone)
values (6, 'Hoang Thi Hong', '1993-04-25', 'Female', 'hoangthihong@example.com', '7777777777');
insert into Librarians (lib_id, lib_name, lib_dob, lib_gender, lib_email, lib_phone)
values (7, 'Dang Van Giau', '1991-09-12', 'Male', 'dangvangiau@example.com', '4444444444');
go
create table Genres(
genres_id int primary key not null,
genres_name varchar (50) not null,
genres_des varchar (100) not null,
)
go
select * from Genres
insert into Genres (genres_id, genres_name, genres_des)
values (1, 'Romance', 'Genre that describes stories of love and emotional relationships.');
insert into Genres (genres_id, genres_name, genres_des)
values (2, 'Fantasy', 'Genre that contains stories set in imaginary worlds and featuring magic.');
insert into Genres (genres_id, genres_name, genres_des)
values (3, 'Mystery', 'Genre that focuses on solving puzzles, crimes, or unexplained events.');
insert into Genres (genres_id, genres_name, genres_des)
values (4, 'Science Fiction', 'Genre that explores futuristic settings, advanced science, and technology.');
insert into Genres (genres_id, genres_name, genres_des)
values (5, 'Thriller', 'Genre that creates suspense and excitement, often involving danger or suspense.');
insert into Genres (genres_id, genres_name, genres_des)
values (6, 'Horror', 'Genre that aims to create a sense of fear, dread, and terror in the reader.');
insert into Genres (genres_id, genres_name, genres_des)
values (7, 'Adventure', 'Genre that follows characters on exciting journeys and quests.');
insert into Genres (genres_id, genres_name, genres_des)
values (8, 'Historical Fiction', 'Genre that combines fictional characters and events with historical settings.');
go
create table Authors(
author_id int primary key not null,
author_name varchar (50) not null,
author_dob date not null,
author_gender varchar(10) not null,
author_country varchar(50) not null,
)
go
insert into Authors (author_id, author_name, author_dob, author_gender, author_country)
values 
    (1, 'J.K. Rowling', '1965-07-31', 'Female', 'United Kingdom'),
    (2, 'Harper Lee', '1926-04-28', 'Female', 'United States'),
    (3, 'George Orwell', '1903-06-25', 'Male', 'United Kingdom'),
    (4, 'Jane Austen', '1775-12-16', 'Female', 'United Kingdom'),
    (5, 'Fyodor Dostoevsky', '1821-11-11', 'Male', 'Russia'),
    (6, 'Mark Twain', '1835-11-30', 'Male', 'United States'),
    (7, 'Gabriel Garcia Marquez', '1927-03-06', 'Male', 'Colombia'),
    (8, 'Virginia Woolf', '1882-01-25', 'Female', 'United Kingdom'),
    (9, 'Ernest Hemingway', '1899-07-21', 'Male', 'United States'),
    (10, 'Leo Tolstoy', '1828-09-09', 'Male', 'Russia'),
    (11, 'Charlotte Bronte', '1816-04-21', 'Female', 'United Kingdom'),
    (12, 'Albert Camus', '1913-11-07', 'Male', 'France');
select * from Authors
go
create table Books(
book_id int primary key not null,
book_name varchar(50) not null,
author_id int references Authors(author_id) not null,
genre_id INT REFERENCES Genres(genres_id) NOT NULL,
public_date date not null,
is_available bit not null,
)
go
insert into Books (book_id, book_name, author_id, genre_id, public_date, is_available) values
(1, 'To Kill a Mockingbird', 1, 1, '1960-07-11', 1),
(2, '1984', 2, 2, '1949-06-08', 1),
(3, 'Pride and Prejudice', 3, 3, '1813-01-28', 1),
(4, 'The Great Gatsby', 4, 4, '1925-04-10', 1),
(5, 'Harry Potter and the Philosopher''s Stone', 5, 5, '1997-06-26', 1),
(6, 'The Lord of the Rings', 6, 6, '1954-07-29', 1),
(7, 'The Catcher in the Rye', 7, 7, '1951-07-16', 1),
(8, 'Great Gastby', 8, 8, '1934-04-09', 1), 
(9, 'The Hobbit', 6, 6, '1937-09-21', 1),
(10, 'Jane Eyre', 9, 3, '1847-10-16', 1),
(11, 'The Alchemist', 10, 8, '1988-01-01', 1),
(12, 'The Da Vinci Code', 11, 1, '2003-03-18', 1);
select * from Books
go
CREATE TABLE Borrows (
    borrow_id INT IDENTITY(1,1) PRIMARY KEY
	book_id INT REFERENCES Books(book_id) NOT NULL,
    userid INT REFERENCES Users(userid) NOT NULL,
	lib_id int references Librarians(lib_id) not null,
    loan_date DATETIME NOT NULL,
    due_date DATETIME NOT NULL,
);
go

