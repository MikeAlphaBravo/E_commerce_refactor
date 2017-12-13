# README

Base 3 AJAX functionality:

First commit 8:05:
establish my own git repository for project clone

10:17:
Still working on first AJAX functionality.  Seem to have the process working and not failing but not refreshing the text or input field yet.

13:55:
Moved onto second AJAX functionality to test .rb.erb functionality, then realized that the commented out code in cart total update was what was erroring on the rails side in console.
Updated and added input clear as well.

15:10:
Figured out the show and hide for a single product.  Created show.js.erb and hide.js.erb

15:34:
Finalized the delete ajax functionality.  Created destroy.js.erb, added the respond_to in order_items_controller, added remote to carts/show

Tuesday
16:55:
got first ajax functionality working, sends to another view but via ajax not reload of page.  Details exist there, photo etc.

 ___________________________________________________
Refactor 6

Saturday
10:04:
research validations and helpers for Rails.

14:27:
1. simple addition to existing helper method of number_field for limiting to positive number inputs

15:02:
2. Flash messages added in sessions controller for sign_in and sign_out and in users_controller for sign_up

15:53:
3. User password validation and flash messages and placeholders to explain requirements and success or failure.

Sunday
15:56:
Added the bones of update and destroy with admin issues causing a block.  Will look into how to fix those.
4. (will soon be admin update and delete)

5. (flash messages for all of 4.)

6.  Product validations?  Whole numbers? or Paperclip?

### Original programmer notes:

E-commerce site. Uses `bcrypt` and `materialize`. There's a seed file. Set up your own admin. If you have questions, I'll be in Bali with no email. Ask someone else.

To set up:

* `rake db:setup`

* Sorry, didn't get around to tests. It mostly works. There might be a few bugs.

# _Products E-Commerce Site_
-------------------

#### _Using Ruby on Rails to edit an e-commerce site already in production, 12.08.2017_

#### By _Michael A. Brooks_

## Description

_Refactor and edit an application using Ruby on Rails to have an admin protected website to be able to update, add, delete and maintain a user friendly product site._

## Specs

For AJAX functionality
* _Users should be able to add products to their shopping cart from the index page with AJAX. The item should be added to the shopping cart and the number of items in the cart (shown in the navbar) should update._
* _Users should be able to click on a product and show/hide the product detail using AJAX. The product detail should include an image (either Paperclip or an image link), the description, and any other fields you choose to add._
* _Users should be able to remove items from the shopping cart without a page reload. The "delete" link should result in the item being removed from the shopping cart and the total price being updated._

* _Ensure that users can't order a negative number of items._
* _Add flash messages for signing up, signing in and signing out._
* _Add product update and delete functionality for admins._
* _Add admin flash messages for adding, updating and deleting products._
* _Add password validations to ensure a user's password is sufficiently complex._

Working to add:
* _Add Paperclip for product image upload._
* _Allow other than whole dollar amounts for admin product creation (for instance, 3.99)._
* _Add product validations._

## Setup/Installation Requirements

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

Open terminal on your computer,
Navigate to the folder you would like to clone the project into and run:

`git clone https://github.com/MikeAlphaBravo/E_Commerce_Site

`cd E_Commerce Site`

`bundle`

`rails db:create`

`rails db:test:prepare`

`rails s`

Navigate in your browser to localhost:3000 to start viewing index page

## Running the tests

_There are currently no tests for this application but will be soon!_

## Known Bugs

_Curretnly testing for bugs and running different user scenarios, please submit or contact me if you find any._

## Support and contact details

_Updates or suggestions please contact [Michael A. Brooks] or make a contribution yourself._

**[Michael A. Brooks]**: mailto:mikealphabravo1982@gmail.com

## Built With

* [Ruby](https://www.ruby-lang.org/en/) - Language
* [JavaScript](https://www.javascript.com/) - Script language
* [Ruby on Rails](http://rubyonrails.org/) - Framework
* [Atom](https://atom.io/) - Text editor
* HTML6 & CSS - Browser implementation and styling

### License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
Copyright (c) 2017 Michael A. Brooks

## Acknowledgments

* All the amazing developers, Stack Overflow and Google that help me through these challenges!
* My amazing friends and boyfriend for emotional support, Eli and KC you're the best <3
