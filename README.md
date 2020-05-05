# Introduction
This App access a Contentful API to get a list of recipes with the option to
to get more info of a certain recipe.

* There are 2 pages:
1. The '/recipes' page:
This page displays the list of recipes with pagination, The number of recipes
per page is controlled by the RECIPES_PER_Page constant. Currently it is set to
two. If a page parameter is sent to this page, this page is displayed. However,
if this parameter is not sent, the first page is displayed.
If the page parameter is wrong(not numeric or out of range) a "No Recipes Found"
message is displayed.
Each recipe has an image, title and a show button. Pressing on any of them opens
the details page for the selected recipe.

2. The '/recipes/id' page:
This is the page that displays the details of a certain recipe. The passed id is
the id for its image because passing the image id to the Contentful API with the
image id gets all the recipe data in one call thus enhancing the performance.
This solution depends on the fact that a recipe must have an image.

# Tests
Rspec is used for testing

# UI
Bootstrap is used
