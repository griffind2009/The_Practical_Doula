# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

The goal of this app is for the User (Doula) to be able to enter client information into an Electronic Health Record System.  It is intended to help them keep track of their clients and to be as paperless as possible.  This app was built in Rails using Ruby code.  There are five models.  There is a one to many relationship between the client and the four charts.  All four charts belong to a client.  You can perform CRUD on the client and also the charts.  

User Stories
As a user I should be able to sign up and login to my account as well as logout

As a user I should be a to view all of my clients and create new clients

As a user I should be able to edit and delete clients and assign my client a chart type.

As a user I should be able to create new charts

As a user I should be able to edit, and delete new charts and view the charts I have created.
