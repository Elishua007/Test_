CREATE DATABASE MovieManiaDB;
USE MovieManiaDB;

CREATE TABLE Customers
(
CustomerID INT auto_increment PRIMARY KEY,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
Email VARCHAR(100) NOT NULL
);

CREATE TABLE Movies
(
MovieID INT auto_increment PRIMARY KEY,
Title VARCHAR(100) NOT NULL,
Genre VARCHAR(30) NOT NULL,
ReleaseYear INT NOT NULL
);

/*changes the coloumn name*/
ALTER TABLE Customers CHANGE Email ContactEmail VARCHAR(100) NOT NULL;

/*adds a coloumn from table*/
ALTER TABLE Customers ADD PhoneNumber VARCHAR(20) NOT NULL;

/*removes a coloumn to table*/
ALTER TABLE Movies DROP COLUMN ReleaseYear;


/*inserts values into a table*/
INSERT INTO Customers(FirstName, LastName, ContactEmail, PhoneNumber) VALUES
('Sarah', 'Connor', 'sarahc@email.com', '0821112233'),
('John', 'Doe', 'johnd@email.com', '0839876543');

/*inserts values into a table*/
INSERT INTO Movies(Title,Genre) VALUES 
('Inception', 'Sci-Fi'),
('The Matrix', 'Action');


/*updates values in a table*/
UPDATE Customers SET PhoneNumber = '0845556677' WHERE CustomerID=1;

/*deletes a record from the table*/
DELETE FROM Movies WHERE MovieID=2;

SELECT * FROM Customers;
SELECT * FROM Movies;



