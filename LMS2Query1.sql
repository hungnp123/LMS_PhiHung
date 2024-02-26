create database LMS2
go

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    BookName VARCHAR(255),
    CateID INT,
    AuthorID INT,
    NumberPage INT,
    Year INT,
    IsAvailable bit
	FOREIGN KEY (CateID) REFERENCES Categories(CateID),
	FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
);

CREATE TABLE Categories (
    CateID INT PRIMARY KEY,
    CateName VARCHAR(255),
    CateDes VARCHAR(255)
);

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(255),
    DoB DATE,
    Country VARCHAR(255),
    AuthorDes VARCHAR(255)
);

CREATE TABLE Readers (
    ReaderID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    DoB DATE,
    Country VARCHAR(255),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(255)
);

CREATE TABLE Borrow (
    BorrowID INT PRIMARY KEY,
    BookID INT,
    ManagerID INT,
    ReaderID INT,
    BorrowingDate DATE,
    ExpectedReturnDate DATE,
    ActualReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (ManagerID) REFERENCES Managers(ManagerID),
    FOREIGN KEY (ReaderID) REFERENCES Readers(ReaderID)
);

CREATE TABLE Managers (
    ManagerID INT PRIMARY KEY,
    ManagerName VARCHAR(255),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(255)
);
