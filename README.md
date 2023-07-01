# Movie-Rental-DB-Queries

This repository contains a set of SQL queries that demonstrate the ability to perform meaningful queries on a film rental database. The queries cover various aspects such as filtering, joining tables, using case expressions, timestamps, and extracting information. Below is a description of each query:

## Simple Queries
Payment Transactions greater than $5.00
This query counts the number of payment transactions that have an amount greater than $5.00.

### Actors with a First Name starting with 'P'
This query retrieves the first names and last names of actors whose first name starts with the letter 'P'. The results are grouped by first name and last name.

### Unique Districts for Customers
This query retrieves the unique districts from the address table, representing the districts where customers live.

### Number of Films with a Rating of R and a Replacement Cost between $5 and $15
This query counts the number of films that have a rating of 'R' and a replacement cost between $5 and $15.

### List of Films with a Rating of R and a Replacement Cost between $5 and $15
This query retrieves the titles of films that have a rating of 'R' and a replacement cost between $5 and $15.

### Number of Films with the word 'Truman' in the Title
This query counts the number of films that have the word 'Truman' in their title.

### List of Films with the word 'Truman' in the Title
This query retrieves the titles of films that have the word 'Truman' in their title.

### IDs of Customers who have spent at least $110 with the Staff Member who has an ID of 2
This query retrieves the customer IDs and the total amount spent by customers who have spent at least $110 with the staff member whose ID is 2.

### Customer with the highest Customer ID whose name starts with 'E' and Address ID lower than 500
This query retrieves the first name and last name of the customer with the highest customer ID, whose name starts with the letter 'E', and whose address ID is lower than 500. The results are ordered by customer ID in descending order, and only the first row is returned.

## JOIN Queries
### Emails of Customers who live in California
This query retrieves the district and email of customers who live in California by joining the address and customer tables on the address ID.

List of all Films 'Nick Wahlberg' has been in
This query retrieves the title, first name, and last name of all films in which the actor 'Nick Wahlberg' has appeared. It joins the film_actor, actor, and film tables based on the actor ID and film ID.

## Case Expression
### Amounts of Films per Rating
This query calculates the number of films for each rating category. It uses a case expression to count the films with specific ratings ('R', 'PG', 'PG-13').

## Timestamps and Extract
### Months in which Payments Occurred
This query retrieves the distinct months in which payments occurred by extracting the month component from the payment date.

### Number of Payments that Occurred on a Monday
This query counts the number of payments that occurred on a Monday by extracting the day of the week (dow) component from the payment date and checking if it is equal to 1 (Monday).
