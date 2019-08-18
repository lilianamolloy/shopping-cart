# README

## Set Up the Projecton Your Computer

1. clone the project
  ```
  $ git@github.com:lilianamolloy/shopping-cart.git
  ```
2. create your database, migrate tables, and populate the products table
  ```
  $ rails db:create
  $ rails db:migrate
  $ rails product:populate_products
  ```
3. start your rails
  ```
  $ rails s
  ```
4. go to localhost:3000
