# Concearch

## About

Concearch was designed as an browsing and organizational tool for keeping track of concerts. Users have the ability to look for concerts they are interested in and add those to their list. The website also supports viewing orchestra, repertoire, and concert hall details.

## Setup

1. Ensure that all gems and dependencies are installed by running ``bundle install``

2. Ensure migrations are complete with ``rails db:migrate``

3. Seed the data with ``rails db:seed`` if you want pre-set data.

4. Run ``rails s`` to start the server.

5. View the website on ``localhost:3000/`` in your browser

## Codewise

* User authentication is done through the `bcrypt` gem

* Activerecord is used to manage database data

* Styling was done using the Bootstrap and W3CSS architectures

* Ruby on Rails MVC framework

## To-do

* Add management accounts to create concerts

* Style more of the view pages

* Add search bars to the index pages