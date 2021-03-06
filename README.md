# Order.ly

Welcome to Order.ly, a full stack point of sales waiter application built with Ruby on Rails, PostgreSQL, and MaterializeCSS.

The goal of this project was to create a mobile friendly, Point-of-Sale application for Waiters/Hosts. Design and styling took a backseat to making functionality easy to use on a small device such as a smartphone or tablet.


## IMPORTANT

I worked in a different repo for 95% of the project before I had to migrate all of the files into a new repo so that I could successfully push my project up to Heroku. That means you probably can't see any commits from the majority of the projects development. They should still be available in the old repo. Let me know if this is a problem.

### Using Order.ly

Using Order.ly is fairly simple. All of the views occur in a linear fashion. The server either creates a new account or signs into an existing account with username and password credentials.

The server is then taken to a 'Profile' view where they can see all available Tables and the Tables they are currently serving. The Tables are identified by a unique number, and all customers seated at that table are displayed within each table. From here, the server can either pick an empty table and then add new customers (for now the application just generates fake customers with faker) or click on an occupied table to check in on the current status of that table. There is also an 'add table' button that generates new tables, but that is actually a relic of a previous version of the app. For now I wanted to focus on having a set number of tables.

Clicking on a table, empty or occupied, will bring you to a table view that allows you to either add customers or click on an existing customer to see their orders. Adding customers to an empty table will then give 'ownership' of that previously empty table to the logged in server. That means if you were to logout and log back in with a different server, that table would no longer be available.

Clicking on an existing customer will take you to the customers view where you can add or remove menu items to their order. Clicking back to the table view, you now have the option to view the current receipt and then click 'Pay Bill' which will then clear the table and return it to the pool of available tables for all servers.

At the top of the screen there is an Admin view which allows users to add or remove items to the menu.


### Prototyping

Once the project was assigned, I spent the majority of the first day brainstorming and white boarding the ERD for what would eventually become the structure for my PostgreSQL database. This process actually required me to think about how my application would look and function, because it would have implications on how I would store and display data.

Once I had wrapped my mind around the ERD for my application, I started hand-drawing wireframes for what my application would eventually look like.


### Wireframes

#### Welcome/Login View
![Login](http://i.imgur.com/auZztyyl.jpg "Login")

#### User/Add Table View
![Profile Page](http://i.imgur.com/Dt6Gqtrl.jpg?1 "Profile")

#### Add Customer View
![Customer Page](http://i.imgur.com/h3fWJWcl.jpg?1 "Customers")

#### Add Menu Items View
![Menu Page](http://i.imgur.com/qmqi84pl.jpg?1 "Menu")


### ERD

![ERD](http://i.imgur.com/8NtyBsCl.png "ERD")


### Implementation

This project was implemented with HTML, CSS, JavaScript and Materialize for the front-end, Ruby on Rails for the back-end, and PostgreSQL for the database.

I created tables for:
* Users
* Tables
* Customers
* Items
* Orders


* Users (Servers) have a 1:Many relationship with Tables
* Tables have a 1:Many relationship with Customers
* Customers have a Many to Many relationship with Items through Orders.



### Installation

Heroku:  https://pacific-cliffs-67172.herokuapp.com/


### Missing Features/Things I'm Not Happy With

1. Handling mobile devices with a more responsive design using media queries.

2. Proper admin authorization

3. Refactor my messy code

4. Thorough comments

5. Improved UI elements and navigation

6. Chef display with order readiness and timeliness indication.


### Summary

While my application is fairly barebones and simple looking, I'm really happy with how much I learned while building a full-stack Rails application and how much I grew as a developer. This application definitely required the most complicated database I had dealt with up to this point. Learning how to pull in the data I needed for each route was a struggle, but ultimately very rewarding. I know that I didn't exactly follow best practices for how I handled data, but I was proud to get everything more or less working the way I wanted it to.
