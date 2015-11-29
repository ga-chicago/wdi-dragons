## 5.3 Wireframe Shopping List

This week we're going to build a shopping list application. This application will allow you to log in to a Shopping List website. From there, you will be able to view, add, update, and remove items that you need to purchase. The business logic is the same for all applications but feel free to get creative with the design and wording of the app.

We're going to build out wireframes for this application. To get started, we need to think about the `views` that our project needs. By now, you should have created (but maybe not designed) the following views:

* Account Registration
* Account Login
* List of Shopping Items

#### Wireframe #1: Account Registration

This wireframe must contain the following fields on a `registration` view:

**Registration**:
* User's email
* User's password
* User's password (confirmation)
* Submit Box

Upon submission, a user will either be auto-logged in + welcomed **or** warned that some sort of registration error occured. We need two additional views for these:

**Successfully Registered**:
* Congrats! Welcome abord message.
* A redirect link to their shopping list page.

**Error when Registering**
* Something went wrong!
* Try registering again!
* A link back to the registration page

#### Wireframe #2: Login

Pretty much the same requirements as the registration, minus the double-password confirmation.

**Login**:
* User's email
* User's password
* Submit Box

**Successfully Logged In**:
* Congrats! Welcome back message.
* A redirect link to their shopping list page.

**Error when Logging in**
* Something went wrong!
* Try logging in again!
* A link back to the login page

#### Wireframe #3: Shopping List 

We are going to need a few views for our shopping list. Those are:

**A List All View for Shopping Items**:
* A table of all shopping items
* Each row has the name and quantity of each item
* Each row also has a button/icon to **update** or **delete** an item.
* There is also a **create** button on the page that allows users to add new shopping items.
* There should also be a location on the page that shows the user a message (such as 'item added successfully!' or 'item deleted successfully!').

**Create Shopping Item**:
* A form to add a shopping item by name and quantity
* A submit button that adds the item

**Confirm Deletion of Shopping Item**:
* A form to confirm deletion of an item with the name and quantity of it.
* A submit button that deletes the item

**Update Shopping Item**:
* A form to update a shopping item by name and quantity
* A submit button that updates the item's information
