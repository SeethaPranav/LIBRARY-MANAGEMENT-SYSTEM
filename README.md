# MYSQL PROJECT : LIBRARY-MANAGEMENT-SYSTEM
The Library Management System (LMS) project is designed to manage and organize information related to a library's resources, employees, customers, and the status of book issues and returns. The project includes a relational database with six tables, each serving a specific purpose in capturing various aspects of the library's operations.

1.	Retrieve the book title, category, and rental price of all available books.
   
SELECT Book_title, Category, Rental_Price FROM Books WHERE Status = ‘Available’;

![Q1](https://github.com/user-attachments/assets/629f1e4f-0f28-471c-9773-4e1f1e4e6686)

2.List the employee names and their respective salaries in descending order of salary.

SELECT Emp_name, Salary FROM Employee ORDER BY Salary DESC;

![Q2](https://github.com/user-attachments/assets/d7c61b45-dabf-4f61-a6ae-a2923ca783d3)

3.Retrieve the book titles and the corresponding customers who have issued those books. 

SELECT i.Issued_cust, i.Issued_book_name, c.Customer_name FROM IssueStatus i LEFT JOIN Customer c ON i.Issued_cust = c.Customer_Id;

![Q3](https://github.com/user-attachments/assets/7a032771-c370-4411-a420-c0e75c8d6e9c)

4.Display the total count of books in each category.

SELECT Category, COUNT(*) AS Total_Books FROM Books GROUP BY Category;

![Q4](https://github.com/user-attachments/assets/80b8f909-5f8d-4c3c-8168-e667cad2ae7f)

5.Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000. 

SELECT Emp_name, Position FROM Employee WHERE Salary > 50000;

![Q5](https://github.com/user-attachments/assets/2380e114-43b9-4105-8bb5-1af1190a4677)

6.List the customer names who registered before 2022-01-01 and have not issued any books yet. 

SELECT c.Reg_date, c.Customer_name, i.Issued_book_name 
FROM Customer c LEFT JOIN IssueStatus i ON c.Customer_Id = i.Issued_cust 
WHERE c.Reg_date < '2022-01-01' AND i.Issue_Id IS NULL;

![Q6](https://github.com/user-attachments/assets/6d910fdf-89d4-4ebe-b072-d04009a9303c)

7.Display the branch numbers and the total count of employees in each branch. 

SELECT Branch_no, COUNT(*) AS Total_Employees FROM Employee GROUP BY Branch_no;

![Q7](https://github.com/user-attachments/assets/437f3acf-325c-439c-91a5-a05cdd3c0b8c)

8. Display the names of customers who have issued books in the month of June 2023.

SELECT c.Customer_name, i.Issued_book_name, i.Issue_date FROM IssueStatus i
JOIN Customer c ON i.Issued_cust = c.Customer_Id
WHERE i.Issue_date >= '2023-06-01' AND i.Issue_date < '2023-07-01';

![Q8](https://github.com/user-attachments/assets/efd034c4-fee1-4e68-aa76-d73a85c834d3)

9. Retrieve book_title from book table containing history.

SELECT ISBN, Book_title FROM Books WHERE Category LIKE '%History%';

![Q9](https://github.com/user-attachments/assets/3a30a461-cece-4bc2-90a2-45ccb259c616)

10. Retrieve the branch numbers along with the count of employees for branches having more than 2 employees

SELECT Branch_no, COUNT(*) AS Employee_Count FROM Employee GROUP BY Branch_no HAVING Employee_Count > 2;

![Q10](https://github.com/user-attachments/assets/f7c54f44-1005-41ae-9542-11e14a7db472)

11. Retrieve the names of employees who manage branches and their respective branch addresses.

SELECT e.Emp_name, b.Branch_address FROM Employee e JOIN Branch b ON e.Branch_no = b.Branch_no 
WHERE e.Position = 'Manager'; 

![Q11](https://github.com/user-attachments/assets/e16b9a13-83d0-4afa-a442-505aab8bd575)

12. Display the names of customers who have issued books with a rental price higher than Rs. 25.

SELECT DISTINCT c.Customer_name FROM Customer c
INNER JOIN IssueStatus i ON c.Customer_Id = i.Issued_cust
INNER JOIN Books b ON i.Isbn_book = b.ISBN
WHERE b.Rental_Price > 25;

![Q12](https://github.com/user-attachments/assets/ca5cdfaf-a80b-4546-85c0-cbeff7b87bd1)









