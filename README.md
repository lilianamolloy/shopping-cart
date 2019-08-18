# README

## Set Up the Project on Your Computer

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
3. start your rails server
  ```
  $ rails s
  ```
4. go to localhost:3000

## Steps and Considerations

1. I started with the products, I decided that the products will need to persist so I added a products table to the database. I then populated the table using a rake task.
2. I decided the products will be displayed on the index page and will reside on the root path.
3. I also added view model folder as I wanted to abstract logic out of the controllers, I believe there will be a bit of logic required for the cart view so decided this will be a good structure.
4. I created a product card partial and displayed the product name, price and included a button which will add the product to the cart.
5. I then went on to set up the cart, I thought about where I wanted to store the products added to the cart. I ultimately decided to store it in the session as opposed to storing it in the database. Just thinking in terms of scalability this was the best option.
6. I set up a singular resource for the cart routes, I add products using the update path and display the cart on the show page.
7. As I was going to be displaying the product card on both pages I decided to move it into a shared folder and reuse this component to keep things DRY.
8. I then added the discount functionality, I placed the logic in the cart view_model.
9. I decided to add a “remove from cart” functionality to make it easier to use the cart. This simply used the destroy path in the cart controller.


## Functionalities to extend on:

1. Add quantities of products
1. Save cart
2. Unit/feature tests