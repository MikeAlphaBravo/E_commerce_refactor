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

4.  

### Original programmer notes:

E-commerce site. Uses `bcrypt` and `materialize`. There's a seed file. Set up your own admin. If you have questions, I'll be in Bali with no email. Ask someone else.

To set up:

* `rake db:setup`

* Sorry, didn't get around to tests. It mostly works. There might be a few bugs.
