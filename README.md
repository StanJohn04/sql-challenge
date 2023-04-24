# SQL_Challenge - Module 9

# Background
It has been two weeks since I was hired as a new data engineer at Pewlett Hackard (a fictional company). My first major task is to do a research prject about people whom the company employed during the 1980s and 1990s.

I will need to design the tables to hold all the data from six CSV files, import the CSV data into a SQL database, and then answer questions about the data by making SQL queries. The project is broken down into three parts: Data Modeling, Data Engineering, and Data Analysis.

# Data Modeling
    * Inspect CSV files in Resources folder and the create an Entity Relationship Diagram (ERD) of the tables.
    
  ![Employee_ERD](https://user-images.githubusercontent.com/121142680/234129007-dfefd1f8-495d-4ebe-9a66-a9b90c5828f1.png)


# Data Engineering
    * Use the ERD to create a table schema for each of the CSV files.
      * Specify data types, primary keys, forgeign keys, and any other contraints
    * Create tables in correct order to handle any foreign keys
    * Import CSV data into the database tables
    
# Data Analysis
    * Create SQL queries for the following questions:
      * List the employee number, last name, first name, sex, and salary of each employee.

      * List the first name, last name, and hire date for the employees who were hired in 1986.

      * List the manager of each department along with their department number, department name, employee number, last name, and first name.

      * List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
      
      * List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

      * List each employee in the Sales department, including their employee number, last name, and first name.

      * List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

      * List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
      
