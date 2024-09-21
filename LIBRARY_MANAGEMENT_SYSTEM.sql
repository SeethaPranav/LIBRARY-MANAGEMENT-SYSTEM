CREATE DATABASE LIBRARY;
USE LIBRARY;

CREATE TABLE Branch (
    Branch_no INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Manager_Id INT,
    Branch_address VARCHAR(255),
    Contact_no VARCHAR(15)
    );
INSERT INTO Branch (Manager_Id, Branch_address, Contact_no) VALUES
(101, 'Branch 1, Thiruvananthapuram, Kerala', '9991110001'),
(102, 'Branch 2, Kochi, Kerala', '9991110002'),
(103, 'Branch 3, Kozhikode, Kerala', '9991110003'),
(104, 'Branch 4, Kollam, Kerala', '9991110004'),
(105, 'Branch 5, Malappuram, Kerala', '9991110005'),
(106, 'Branch 6, Kottayam, Kerala', '9991110006'),
(107, 'Branch 7, Thrissur, Kerala', '9991110007'),
(108, 'Branch 8, Ernakulam, Kerala', '9991110008'),
(109, 'Branch 9, Alappuzha, Kerala', '9991110009'),
(110, 'Branch 10, Idukki, Kerala', '9991110010'),
(111, 'Branch 11, Wayanad, Kerala', '9991110011'),
(112, 'Branch 12, Kasaragod, Kerala', '9991110012'),
(113, 'Branch 13, Pathanamthitta, Kerala', '9991110013'),
(114, 'Branch 14, Palakkad, Kerala', '9991110014'),
(115, 'Branch 15, Thodupuzha, Kerala', '9991110015'),
(116, 'Branch 16, Pala, Kerala', '9991110016'),
(117, 'Branch 17, Varkala, Kerala', '9991110017'),
(118, 'Branch 18, Neyyattinkara, Kerala', '9991110018'),
(119, 'Branch 19, Kayamkulam, Kerala', '9991110019'),
(120, 'Branch 20, Kottarakkara, Kerala', '9991110020'),
(121, 'Branch 21, Changanassery, Kerala', '9991110021'),
(122, 'Branch 22, Munnar, Kerala', '9991110022'),
(123, 'Branch 23, Nileshwaram, Kerala', '9991110023'),
(124, 'Branch 24, Cherthala, Kerala', '9991110024'),
(125, 'Branch 25, Kodungallur, Kerala', '9991110025'),
(126, 'Branch 26, Irinjalakuda, Kerala', '9991110026'),
(127, 'Branch 27, Mattancherry, Kerala', '9991110027'),
(128, 'Branch 28, Perumbavoor, Kerala', '9991110028'),
(129, 'Branch 29, Vypin, Kerala', '9991110029'),
(130, 'Branch 30, Ottapalam, Kerala', '9991110030'),
(131, 'Branch 31, Kanjirappally, Kerala', '9991110031'),
(132, 'Branch 32, Mavelikara, Kerala', '9991110032'),
(133, 'Branch 33, Kattappana, Kerala', '9991110033'),
(134, 'Branch 34, Paravur, Kerala', '9991110034'),
(135, 'Branch 35, Chavakkad, Kerala', '9991110035'),
(136, 'Branch 36, Guruvayur, Kerala', '9991110036'),
(137, 'Branch 37, Thripunithura, Kerala', '9991110037'),
(138, 'Branch 38, Kothamangalam, Kerala', '9991110038'),
(139, 'Branch 39, Konni, Kerala', '9991110039'),
(140, 'Branch 40, Kuttanad, Kerala', '9991110040');

SELECT * FROM Branch;

CREATE TABLE Employee (
    Emp_Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Emp_name VARCHAR(100) NOT NULL,
    Position VARCHAR(50),
    Salary DECIMAL(10, 2),
    Branch_no INT,
    FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no)
);

INSERT INTO Employee (Emp_name, Position, Salary, Branch_no) VALUES
('Arjun Nair', 'Manager', 60000, 1),
('Anjali Menon', 'HR', 55000, 1),
('Vishnu Pillai', 'Staff', 45000, 1),
('Meera Nambiar', 'Manager', 65000, 2),
('Rahul Ramesh', 'HR', 52000, 2),
('Priya Thomas', 'Staff', 42000, 2),
('Suresh Kumar', 'Manager', 70000, 3),
('Deepa Nair', 'HR', 58000, 3),
('Ajith Chandran', 'Staff', 39000, 3),
('Lata Suresh', 'Manager', 62000, 4),
('Anil Varma', 'HR', 63000, 4),
('Riya Menon', 'Staff', 34000, 4),
('Binu Kuriakose', 'Manager', 68000, 5),
('Shreya Nair', 'HR', 46000, 5),
('Sunil George', 'Staff', 37000, 5),
('Neha Babu', 'Manager', 60000, 6),
('Vineesh Pillai', 'HR', 51000, 6),
('Sofia Mathew', 'Staff', 41000, 6),
('Ravi Kumar', 'Manager', 73000, 7),
('Geeta Iyer', 'HR', 43000, 7),
('Krishna Das', 'Staff', 45000, 7),
('Chitra Varma', 'Manager', 64000, 8),
('Naveen Nair', 'HR', 59000, 8),
('Pooja Menon', 'Staff', 41000, 8),
('Ajay Radhakrishnan', 'Manager', 62000, 9),
('Swathi Ramesh', 'HR', 57000, 9),
('Rajesh Pillai', 'Staff', 43000, 9),
('Kavya George', 'Manager', 61000, 10),
('Manoj Nambiar', 'HR', 46000, 10),
('Diya Thomas', 'Staff', 40000, 10),
('Ranjit Nair', 'Manager', 69000, 11),
('Leela Iyer', 'HR', 53000, 11),
('Vinod Menon', 'Staff', 42000, 11),
('Deepak Varma', 'Manager', 70000, 12),
('Sita Nair', 'HR', 54000, 12),
('Akhil Babu', 'Staff', 45000, 12),
('Nithya Pillai', 'Manager', 65000, 13),
('Shyam Kumar', 'HR', 41000, 13),
('Anju George', 'Staff', 36000, 13),
('Naveen Menon', 'Manager', 72000, 14),
('Rani Nambiar', 'HR', 43000, 14),
('Kiran Ramesh', 'Staff', 44000, 14),
('Arvind Nair', 'Manager', 68000, 15),
('Sunitha Thomas', 'HR', 55000, 15),
('Siddharth Pillai', 'Staff', 41000, 15);

SELECT * FROM Employee;

CREATE TABLE Books (
    ISBN VARCHAR(30) PRIMARY KEY NOT NULL,
    Book_title VARCHAR(255) NOT NULL,
    Category VARCHAR(100),
    Rental_Price DECIMAL(10, 2),
    Status VARCHAR(10) NOT NULL,
    Author VARCHAR(255),
    Publisher VARCHAR(255)
);

INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher) VALUES
('978-1-23456-789-0', 'Kerala Chronicles', 'History', 150.00, 'Available', 'Arjun Nair', 'Kerala Publications'),
('978-1-23456-789-1', 'The Spice Route', 'Travel', 200.00, 'Available', 'Meera Nambiar', 'Kerala Books'),
('978-1-23456-789-2', 'God’s Own Country', 'Travel', 180.00, 'Available', 'Vishnu Pillai', 'Travel House'),
('978-1-23456-789-3', 'A Taste of Kerala', 'Cookbook', 120.00, 'Available', 'Priya Thomas', 'Culinary Press'),
('978-1-23456-789-4', 'Monsoons in Kerala', 'Poetry', 100.00, 'Available', 'Rahul Ramesh', 'Literary Works'),
('978-1-23456-789-5', 'Malayalam Literature', 'Literature', 220.00, 'Available', 'Anjali Menon', 'Scholars'),
('978-1-23456-789-6', 'The Backwaters', 'Travel', 250.00, 'Available', 'Suresh Kumar', 'Kerala Travel Co.'),
('978-1-23456-789-7', 'Kerala’s Folklore', 'History', 170.00, 'Available', 'Deepa Nair', 'Folklore Press'),
('978-1-23456-789-8', 'Onam Celebrations', 'Culture', 90.00, 'Available', 'Binu Kuriakose', 'Festival Books'),
('978-1-23456-789-9', 'The Art of Kathakali', 'Arts', 160.00, 'Available', 'Lata Suresh', 'Cultural Insights'),
('978-1-23456-789-10', 'Ayurveda Secrets', 'Health', 140.00, 'Available', 'Ajith Chandran', 'Health Press'),
('978-1-23456-789-11', 'Tales of Malabar', 'Fiction', 130.00, 'Available', 'Anil Varma', 'Fiction House'),
('978-1-23456-789-12', 'Kerala Temples', 'History', 210.00, 'Available', 'Naveen Nair', 'Heritage Press'),
('978-1-23456-789-13', 'The Enchanting Hills', 'Travel', 190.00, 'Available', 'Ravi Kumar', 'Adventure Books'),
('978-1-23456-789-14', 'Folk Songs of Kerala', 'Music', 110.00, 'Available', 'Sofia Mathew', 'Music Publications'),
('978-1-23456-789-15', 'The Kerala Boat Race', 'Sports', 120.00, 'Available', 'Kavya George', 'Sports Books'),
('978-1-23456-789-16', 'Ayurvedic Healing', 'Health', 150.00, 'Available', 'Vineesh Pillai', 'Wellness Press'),
('978-1-23456-789-17', 'Kerala’s Wildlife', 'Nature', 160.00, 'Available', 'Shreya Nair', 'Nature Publishing'),
('978-1-23456-789-18', 'Spices of Kerala', 'Cookbook', 140.00, 'Available', 'Sunil George', 'Culinary Arts'),
('978-1-23456-789-19', 'My Kerala Diary', 'Travel', 100.00, 'Available', 'Diya Thomas', 'Personal Journals'),
('978-1-23456-789-20', 'Kerala Handicrafts', 'Arts', 190.00, 'Available', 'Kiran Ramesh', 'Crafts Press'),
('978-1-23456-789-21', 'The Nature of Kerala', 'Nature', 130.00, 'Available', 'Nithya Pillai', 'Environment Books'),
('978-1-23456-789-22', 'Kerala Festivals', 'Culture', 110.00, 'Available', 'Rani Nambiar', 'Cultural Publications'),
('978-1-23456-789-23', 'A Journey through Kerala', 'Travel', 200.00, 'Available', 'Ajay Radhakrishnan', 'Travel Insights'),
('978-1-23456-789-24', 'Kerala in My Eyes', 'Memoir', 160.00, 'Available', 'Arvind Nair', 'Memoir House'),
('978-1-23456-789-25', 'The Beauty of Backwaters', 'Travel', 180.00, 'Available', 'Manoj Nambiar', 'Travel Guides'),
('978-1-23456-789-26', 'Kerala’s Rich Culture', 'Culture', 140.00, 'Available', 'Kiran Pillai', 'Cultural Insights'),
('978-1-23456-789-27', 'Exploring Kerala', 'Travel', 220.00, 'Available', 'Anju George', 'Adventure Press'),
('978-1-23456-789-28', 'The Heart of Kerala', 'Fiction', 130.00, 'Available', 'Vinod Menon', 'Fiction House'),
('978-1-23456-789-29', 'Kerala through the Ages', 'History', 150.00, 'Available', 'Ranjit Nair', 'History Publications'),
('978-1-23456-789-30', 'Kerala Cuisine', 'Cookbook', 160.00, 'Available', 'Siddharth Pillai', 'Culinary Arts'),
('978-1-23456-789-31', 'Art of Weaving', 'Arts', 170.00, 'Available', 'Naveen Menon', 'Craft Publications'),
('978-1-23456-789-32', 'Kerala’s Sacred Spaces', 'Religion', 140.00, 'Available', 'Lata Ramesh', 'Spiritual Books'),
('978-1-23456-789-33', 'The Kerala Odyssey', 'Travel', 190.00, 'Available', 'Deepak Varma', 'Travel House'),
('978-1-23456-789-34', 'Folklore Tales', 'Fiction', 120.00, 'Available', 'Arun Nair', 'Fiction Press'),
('978-1-23456-789-35', 'The Rhythm of Kerala', 'Music', 110.00, 'Available', 'Geeta Iyer', 'Music House'),
('978-1-23456-789-36', 'Kerala’s Healing Herbs', 'Health', 130.00, 'Available', 'Ajith Chandran', 'Health Insights'),
('978-1-23456-789-37', 'Mysteries of Kerala', 'Fiction', 150.00, 'Available', 'Vishnu Nambiar', 'Mystery Press'),
('978-1-23456-789-38', 'Life in Kerala', 'Memoir', 140.00, 'Available', 'Pooja Nair', 'Memoir Publications'),
('978-1-23456-789-39', 'Traditional Crafts of Kerala', 'Arts', 160.00, 'Available', 'Suresh Kumar', 'Crafts Press'),
('978-1-23456-789-40', 'Kerala’s Beautiful Beaches', 'Travel', 180.00, 'Available', 'Anjali Iyer', 'Travel Guides');

SELECT * FROM Books;

CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Customer_name VARCHAR(255) NOT NULL,
    Customer_address VARCHAR(255),
    Reg_date DATE NOT NULL
);

INSERT INTO Customer (Customer_name, Customer_address, Reg_date) VALUES
('Arjun Nair', 'Thiruvananthapuram, Kerala', '2021-05-10'),
('Anjali Menon', 'Kochi, Kerala', '2021-06-15'),
('Vishnu Pillai', 'Kozhikode, Kerala', '2021-07-20'),
('Meera Nambiar', 'Malappuram, Kerala', '2021-08-25'),
('Rahul Ramesh', 'Kollam, Kerala', '2021-09-30'),
('Priya Thomas', 'Kottayam, Kerala', '2021-10-05'),
('Suresh Kumar', 'Thrissur, Kerala', '2021-11-10'),
('Deepa Nair', 'Ernakulam, Kerala', '2021-12-15'),
('Ajith Chandran', 'Alappuzha, Kerala', '2022-01-20'),
('Lata Suresh', 'Idukki, Kerala', '2022-02-25'),
('Anil Varma', 'Wayanad, Kerala', '2022-03-01'),
('Binu Kuriakose', 'Pathanamthitta, Kerala', '2022-04-05'),
('Shreya Nair', 'Palakkad, Kerala', '2022-05-10'),
('Sunil George', 'Kottarakkara, Kerala', '2022-06-15'),
('Neha Babu', 'Neyyattinkara, Kerala', '2022-07-20'),
('Vineesh Pillai', 'Kayamkulam, Kerala', '2022-08-25'),
('Chitra Varma', 'Cherthala, Kerala', '2022-09-30'),
('Ravi Kumar', 'Kodungallur, Kerala', '2022-10-05'),
('Geeta Iyer', 'Mattancherry, Kerala', '2022-11-10'),
('Krishna Das', 'Perumbavoor, Kerala', '2022-12-15'),
('Kavya George', 'Vypin, Kerala', '2023-01-20'),
('Manoj Nambiar', 'Ottapalam, Kerala', '2023-02-25'),
('Diya Thomas', 'Munnar, Kerala', '2023-03-01'),
('Nithya Pillai', 'Kanjirappally, Kerala', '2023-04-05'),
('Ajay Radhakrishnan', 'Pala, Kerala', '2023-05-10'),
('Swathi Ramesh', 'Kollam, Kerala', '2023-06-15'),
('Rajesh Pillai', 'Thripunithura, Kerala', '2023-07-20'),
('Kiran Ramesh', 'Changanassery, Kerala', '2023-08-25'),
('Rani Nambiar', 'Guruvayur, Kerala', '2023-09-30'),
('Arvind Nair', 'Paravur, Kerala', '2023-10-05'),
('Deepak Varma', 'Irumpanam, Kerala', '2023-11-10'),
('Naveen Menon', 'Nileshwaram, Kerala', '2023-12-15'),
('Siddharth Pillai', 'Cherthala, Kerala', '2023-01-01'),
('Sita Nair', 'Kasargod, Kerala', '2023-02-05'),
('Akhil Babu', 'Mavelikara, Kerala', '2023-03-10'),
('Naveen Pillai', 'Wayanad, Kerala', '2023-04-15'),
('Shyam Kumar', 'Kottayam, Kerala', '2023-05-20'),
('Anju George', 'Kochi, Kerala', '2023-06-25'),
('Vinod Menon', 'Malappuram, Kerala', '2023-07-30'),
('Chitra Iyer', 'Pathanamthitta, Kerala', '2023-08-05'),
('Arun Nair', 'Idukki, Kerala', '2023-09-10'),
('Geeta Ramesh', 'Kozhikode, Kerala', '2023-10-15'),
('Suresh Kumar', 'Kollam, Kerala', '2023-11-20');

SELECT * FROM Customer;

CREATE TABLE IssueStatus (
    Issue_Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Issued_cust INT,
    Issued_book_name VARCHAR(255),
    Issue_date DATE NOT NULL,
    Isbn_book VARCHAR(30),
    FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN)
);

INSERT INTO IssueStatus (Issued_cust, Issued_book_name, Issue_date, Isbn_book) VALUES
(1, 'Kerala Chronicles', '2023-05-01', '978-1-23456-789-0'),
(2, 'The Spice Route', '2023-05-03', '978-1-23456-789-1'),
(3, 'God’s Own Country', '2023-05-05', '978-1-23456-789-2'),
(4, 'A Taste of Kerala', '2023-05-07', '978-1-23456-789-3'),
(5, 'Monsoons in Kerala', '2023-05-09', '978-1-23456-789-4'),
(6, 'Malayalam Literature', '2023-05-11', '978-1-23456-789-5'),
(7, 'The Backwaters', '2023-05-13', '978-1-23456-789-6'),
(8, 'Kerala’s Folklore', '2023-05-15', '978-1-23456-789-7'),
(9, 'Onam Celebrations', '2023-05-17', '978-1-23456-789-8'),
(10, 'The Art of Kathakali', '2023-05-19', '978-1-23456-789-9'),
(11, 'Ayurveda Secrets', '2023-05-21', '978-1-23456-789-10'),
(12, 'Tales of Malabar', '2023-05-23', '978-1-23456-789-11'),
(13, 'Kerala Temples', '2023-05-25', '978-1-23456-789-12'),
(14, 'The Enchanting Hills', '2023-05-27', '978-1-23456-789-13'),
(15, 'Folk Songs of Kerala', '2023-05-29', '978-1-23456-789-14'),
(16, 'The Kerala Boat Race', '2023-06-01', '978-1-23456-789-15'),
(17, 'Ayurvedic Healing', '2023-06-03', '978-1-23456-789-16'),
(18, 'Kerala’s Wildlife', '2023-06-05', '978-1-23456-789-17'),
(19, 'Spices of Kerala', '2023-06-07', '978-1-23456-789-18'),
(20, 'My Kerala Diary', '2023-06-09', '978-1-23456-789-19'),
(21, 'Kerala Handicrafts', '2023-06-11', '978-1-23456-789-20'),
(22, 'The Nature of Kerala', '2023-06-13', '978-1-23456-789-21'),
(23, 'Kerala Festivals', '2023-06-15', '978-1-23456-789-22'),
(24, 'A Journey through Kerala', '2023-06-17', '978-1-23456-789-23'),
(25, 'Kerala in My Eyes', '2023-06-19', '978-1-23456-789-24'),
(26, 'The Beauty of Backwaters', '2023-06-21', '978-1-23456-789-25'),
(27, 'Kerala’s Rich Culture', '2023-06-23', '978-1-23456-789-26'),
(28, 'Exploring Kerala', '2023-06-25', '978-1-23456-789-27'),
(29, 'The Heart of Kerala', '2023-06-27', '978-1-23456-789-28'),
(30, 'Kerala through the Ages', '2023-06-29', '978-1-23456-789-29'),
(31, 'Kerala Cuisine', '2023-07-01', '978-1-23456-789-30'),
(32, 'Art of Weaving', '2023-07-03', '978-1-23456-789-31'),
(33, 'Kerala’s Sacred Spaces', '2023-07-05', '978-1-23456-789-32'),
(34, 'The Kerala Odyssey', '2023-07-07', '978-1-23456-789-33'),
(35, 'Folklore Tales', '2023-07-09', '978-1-23456-789-34'),
(36, 'The Rhythm of Kerala', '2023-07-11', '978-1-23456-789-35'),
(37, 'Kerala’s Healing Herbs', '2023-07-13', '978-1-23456-789-36'),
(38, 'Mysteries of Kerala', '2023-07-15', '978-1-23456-789-37'),
(39, 'Life in Kerala', '2023-07-17', '978-1-23456-789-38'),
(40, 'Traditional Crafts of Kerala', '2023-07-19', '978-1-23456-789-39');

SELECT * FROM IssueStatus;

CREATE TABLE ReturnStatus (
    Return_Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Return_cust INT,
    Return_book_name VARCHAR(255),
    Return_date DATE NOT NULL,
    Isbn_book2 VARCHAR(30),
    FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN)
);

INSERT INTO ReturnStatus (Return_cust, Return_book_name, Return_date, Isbn_book2) VALUES
(1, 'Kerala Chronicles', '2023-06-01', '978-1-23456-789-0'),
(2, 'The Spice Route', '2023-06-03', '978-1-23456-789-1'),
(3, 'God’s Own Country', '2023-06-05', '978-1-23456-789-2'),
(4, 'A Taste of Kerala', '2023-06-07', '978-1-23456-789-3'),
(5, 'Monsoons in Kerala', '2023-06-09', '978-1-23456-789-4'),
(6, 'Malayalam Literature', '2023-06-11', '978-1-23456-789-5'),
(7, 'The Backwaters', '2023-06-13', '978-1-23456-789-6'),
(8, 'Kerala’s Folklore', '2023-06-15', '978-1-23456-789-7'),
(9, 'Onam Celebrations', '2023-06-17', '978-1-23456-789-8'),
(10, 'The Art of Kathakali', '2023-06-19', '978-1-23456-789-9'),
(11, 'Ayurveda Secrets', '2023-06-21', '978-1-23456-789-10'),
(12, 'Tales of Malabar', '2023-06-23', '978-1-23456-789-11'),
(13, 'Kerala Temples', '2023-06-25', '978-1-23456-789-12'),
(14, 'The Enchanting Hills', '2023-06-27', '978-1-23456-789-13'),
(15, 'Folk Songs of Kerala', '2023-06-29', '978-1-23456-789-14'),
(16, 'The Kerala Boat Race', '2023-07-01', '978-1-23456-789-15'),
(17, 'Ayurvedic Healing', '2023-07-03', '978-1-23456-789-16'),
(18, 'Kerala’s Wildlife', '2023-07-05', '978-1-23456-789-17'),
(19, 'Spices of Kerala', '2023-07-07', '978-1-23456-789-18'),
(20, 'My Kerala Diary', '2023-07-09', '978-1-23456-789-19'),
(21, 'Kerala Handicrafts', '2023-07-11', '978-1-23456-789-20'),
(22, 'The Nature of Kerala', '2023-07-13', '978-1-23456-789-21'),
(23, 'Kerala Festivals', '2023-07-15', '978-1-23456-789-22'),
(24, 'A Journey through Kerala', '2023-07-17', '978-1-23456-789-23'),
(25, 'Kerala in My Eyes', '2023-07-19', '978-1-23456-789-24'),
(26, 'The Beauty of Backwaters', '2023-07-21', '978-1-23456-789-25'),
(27, 'Kerala’s Rich Culture', '2023-07-23', '978-1-23456-789-26'),
(28, 'Exploring Kerala', '2023-07-25', '978-1-23456-789-27'),
(29, 'The Heart of Kerala', '2023-07-27', '978-1-23456-789-28'),
(30, 'Kerala through the Ages', '2023-07-29', '978-1-23456-789-29'),
(31, 'Kerala Cuisine', '2023-08-01', '978-1-23456-789-30'),
(32, 'Art of Weaving', '2023-08-03', '978-1-23456-789-31'),
(33, 'Kerala’s Sacred Spaces', '2023-08-05', '978-1-23456-789-32'),
(34, 'The Kerala Odyssey', '2023-08-07', '978-1-23456-789-33'),
(35, 'Folklore Tales', '2023-08-09', '978-1-23456-789-34'),
(36, 'The Rhythm of Kerala', '2023-08-11', '978-1-23456-789-35'),
(37, 'Kerala’s Healing Herbs', '2023-08-13', '978-1-23456-789-36'),
(38, 'Mysteries of Kerala', '2023-08-15', '978-1-23456-789-37'),
(39, 'Life in Kerala', '2023-08-17', '978-1-23456-789-38'),
(40, 'Traditional Crafts of Kerala', '2023-08-19', '978-1-23456-789-39');

SELECT * FROM returnstatus;

#1. Retrieve the book title, category, and rental price of all available books. 
SELECT Book_title, Category, Rental_Price FROM Books WHERE Status = 'Available';

#2. List the employee names and their respective salaries in descending order of salary. 
SELECT Emp_name, Salary FROM Employee ORDER BY Salary DESC;

#3. Retrieve the book titles and the corresponding customers who have issued those books. 
SELECT i.Issued_cust, i.Issued_book_name, c.Customer_name FROM IssueStatus i LEFT JOIN Customer c
ON i.Issued_cust = c.Customer_Id;

SELECT b.Book_title, c.Customer_name FROM IssueStatus i
JOIN Books b ON i.Isbn_book = b.ISBN
JOIN Customer c ON i.Issued_cust = c.Customer_Id;

#4. Display the total count of books in each category.
SELECT Category, COUNT(*) AS Total_Books FROM Books GROUP BY Category;
 
#5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000. 
SELECT Emp_name, Position FROM Employee WHERE Salary > 50000;

#6. List the customer names who registered before 2022-01-01 and have not issued any books yet. 
SELECT c.Reg_date, c.Customer_name, i.Issued_book_name 
FROM Customer c LEFT JOIN IssueStatus i ON c.Customer_Id = i.Issued_cust
WHERE c.Reg_date < '2022-01-01';

#7. Display the branch numbers and the total count of employees in each branch. 
SELECT Branch_no, COUNT(*) AS Total_Employees FROM Employee GROUP BY Branch_no;

#8. Display the names of customers who have issued books in the month of June 2023. 
SELECT c.Customer_name,i.Issued_book_name,i.Issue_date FROM IssueStatus i
JOIN Customer c ON i.Issued_cust = c.Customer_Id
WHERE i.Issue_date >= '2023-06-01' AND i.Issue_date < '2023-07-01';

#9. Retrieve book_title from book table containing history. 
SELECT ISBN,Book_title FROM Books WHERE Category LIKE '%History%';

#10.Retrieve the branch numbers along with the count of employees for branches having more than 2 employees 
SELECT Branch_no, COUNT(*) AS Employee_Count FROM Employee GROUP BY Branch_no HAVING Employee_Count> 2;

#11. Retrieve the names of employees who manage branches and their respective branch addresses. 
SELECT e.Emp_name, b.Branch_address FROM Employee e JOIN Branch b ON e.Branch_no = b.Branch_no
WHERE e.Position = 'Manager';

#12. Display the names of customers who have issued books with a rental price higher than Rs. 25.
SELECT DISTINCT c.Customer_name FROM Customer c
INNER JOIN IssueStatus i ON c.Customer_Id = i.Issued_cust
INNER JOIN Books b ON i.Isbn_book = b.ISBN
WHERE b.Rental_Price > 25;


