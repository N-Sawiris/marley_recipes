# Introduction
This App access a Contentful API to get a list of recipes with the option to
to get more info of a certain recipe.

* There are 2 pages:
1. The '/recipes' page:
This page displays the list of recipes with pagination, The number of recipes
per page is controlled by the RECIPES_PER_Page constant. Currently it is set to
two(it can be changed to any value). If a page parameter is sent to this page,
this page is displayed. However,if this parameter is not sent, the first page is
displayed.
If the page parameter is wrong(not numeric or out of range) a "No Recipes Found"
message is displayed.
Each recipe has an image, title and a show button. Pressing on any of them opens
the details page for the selected recipe.

2. The '/recipes/id' page:
This is the page that displays the details of a certain recipe. The passed id is
the id for its image because passing the image id to the Contentful API gets all
the recipe data in one call thus enhancing the performance.
This solution depends on the fact that a recipe must have an image and an image
corresponds to one recipe only.

# Tests
Rspec is used for testing

# UI
Bootstrap is used

#To Run Marley Recipes App:

    1. Install Ruby version 2.5.7 and Rails  5.2.4.2
    2. Open a folder on Ubuntu (Mac OS can be used)
    3. Open a terminal in this folder and write
        1. git clone https://github.com/N-Sawiris/marley_recipes.git
        2. bundle install (make sure there is no errors , there shouldn’t be any)
        3. rails s (The default is that it runs on port 3000)
    4. Open a browser and write http://localhost:3000/ {if it runs on the
      default port else replace 3000 with the actual port}
