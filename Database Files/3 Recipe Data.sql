--AS Great job! 100%
use RecipeDB
go 

delete CookbookRecipe
delete CookBook
delete RecipeMealCourse
delete MealCourse
delete Meal
delete Course
delete Instruction
delete RecipeIngredient
delete Recipe
delete Users
delete Cuisine
delete Measurement  
delete Ingredient
go 

insert Ingredient(IngredientName)
select 'Eggs'
union select 'Honey'
union select 'Oil'
union select 'Whole Wheat Flour'
union select 'Baking Soda'
union select 'Baking Powder'
union select 'Cinnamon'
union select 'Ground Nuts'
union select 'Carrots'
union select 'Lettuce'
union select 'Kirbies'
union select 'Tomatoes'
union select 'Turkey Roll'
union select 'Salt'
union select 'Garlic Powder'
union select 'Onion Powder'
union select 'Black Pepper'
union select 'Mustard' 
union select 'Lemon Juice'
union select 'Chicken'
union select 'Bread Crumbs'
union select 'Apricot Jam' 
union select 'Russian Dressing'
union select 'Onion Soup Mix'
union select 'Rolled Veal Roast' 
union select 'Duck Sauce'
union select 'Sweet Red Wine'
union select 'Onion' 
union select 'Butternut Squash'
union select 'Parsnips'
union select 'Frozen Green Beans' 
union select 'Oregano'
union select 'Tamari Soy Sauce'
union select 'Ground Almonds'
union select 'Green Pepper' 
union select 'Rice'
union select 'Boiling Water'
union select 'Tomato'
union select 'Frozen Rhubarb' 
union select 'Frozen Strawberries'
union select 'Crushed Pineapple'
union select 'Pineapple Chunks'
union select 'Brown Sugar' 
union select 'Margarine'
union select 'Vanilla'
union select 'Dessert Whip'
union select 'Mini Chocolate Chips'
union select 'Chopped Walnuts'
union select 'Cabbage' 
union select 'Sugar'
union select 'mayonnaise'
union select 'Cucumbers' 
union select 'White Vinegar'
union select 'Salmon' 
union select 'Water'
union select 'Pickling Spices'
union select 'Yeast'
union select 'Warm Water'
union select 'Flour'
union select 'Tehina Paste'
union select 'Eggs, separated'
union select 'Carrots, shredded'
union select 'Chopped Green Pepper'
union select 'Chopped Celery'
union select 'Chopped Onion'
union select 'Onions'
union select 'Crushed Garlic'
go 

insert Measurement(MeasurementName)
select 'C.'
union select 'Tbs.'
union select 'tsp.'
union select 'large'
union select 'lb.'
union select 'oz.'
union select '10-oz. pkgs.'
union select '16-oz. bag'
union select '20-oz. can'
union select 'stick'
union select '10-oz containers'
union select 'Medium'
union select 'Slices'
union select '16-oz container'
union select '5 lb bag'
union select '1 lb bag'
go 

insert Cuisine(CuisineName)
select 'French'
union select 'Chinese'
union select 'Japanese'
union select 'Italian'
union select 'Greek'
union select 'Spanish'
union select 'Mediterranean'
union select 'Lebanese'
union select 'Moroccan'
union select 'Turkish'
union select 'Israeli'
union select 'Indian'
union select 'Mexican'
union select 'Caribbean'
union select 'German'
union select 'Russian'
union select 'Hungarian'
union select 'American'
union select 'Zero Calorie'
go 

insert Users(UserFirstName, UserLastName)
select 'Sorah', 'Zager'
union select 'Shlomo', 'Zager'
union select 'Don', 'Zager'
union select 'Ahuva', 'Zager'
union select 'Chaim','Zager'
go 

insert Recipe(CuisineId, CreateByUserId, RecipeName, yields, Calories, CreatedDate, PublishedDate, ArchivedDate)
select (select c.CuisineId from Cuisine c where c.CuisineName = 'Hungarian'), (select u.UserId from Users u where u.UserFirstName = 'Sorah'), 'Whole Wheat Carrot Muffins', '24 Muffins', 120, getdate(), null, null
union select (select c.CuisineId from Cuisine c where c.CuisineName = 'Russian'), (select u.UserId from Users u where u.UserFirstName = 'Shlomo'), 'Deli Salad', '8 Servings', 150, getdate(), getdate(), null
union select (select c.CuisineId from Cuisine c where c.CuisineName = 'Israeli'), (select u.UserId from Users u where u.UserFirstName = 'Don'), 'Tahina Dip', '3 1-lb. Containers', 120, dateadd(day, -3, getdate()), getdate(), null
union select (select c.CuisineId from Cuisine c where c.CuisineName = 'Hungarian'), (select u.UserId from Users u where u.UserFirstName = 'Sorah'), 'Challah', '6 Large Challos', 200, dateadd(day, -1, getdate()), getdate(), null 
union select (select c.CuisineId from Cuisine c where c.CuisineName = 'Chinese'), (select u.UserId from Users u where u.UserFirstName = 'Shlomo'), 'Baked Crispy Chicken', '4 Servings', 400, getdate(), null, null 
union select (select c.CuisineId from Cuisine c where c.CuisineName = 'Russian'), (select u.UserId from Users u where u.UserFirstName = 'Don'), 'Sweet Chicken', '4 Servings', 400, dateadd(day, -5, getdate()), dateadd(day, -1, getdate()), getdate()
union select (select c.CuisineId from Cuisine c where c.CuisineName = 'Chinese'), (select u.UserId from Users u where u.UserFirstName = 'Ahuva'), 'Roast Veal in Duck Sauce', '8 Servings', 310, getdate(), getdate(), null 
union select (select c.CuisineId from Cuisine c where c.CuisineName = 'American'), (select u.UserId from Users u where u.UserFirstName = 'Sorah'), 'Butternut Squash Stew', '5 Servings', 100, getdate(), getdate(), null 
union select (select c.CuisineId from Cuisine c where c.CuisineName = 'Chinese'), (select u.UserId from Users u where u.UserFirstName = 'Shlomo'), 'Almond Green Beans', '4 Servings', 70, dateadd(day, -3, getdate()), dateadd(day, -2, getdate()), getdate()
union select (select c.CuisineId from Cuisine c where c.CuisineName = 'Spanish'), (select u.UserId from Users u where u.UserFirstName = 'Shlomo'), 'Spanish Rice', '8 Servings', 140, getdate(), getdate(), null 
union select (select c.CuisineId from Cuisine c where c.CuisineName = 'Hungarian'), (select u.UserId from Users u where u.UserFirstName = 'Shlomo'), 'Fruit Salad', '15 Servings', 150, dateadd(day, -4, getdate()), dateadd(day, -4, getdate()), null 
union select (select c.CuisineId from Cuisine c where c.CuisineName = 'American'), (select u.UserId from Users u where u.UserFirstName = 'Ahuva'), 'Butterscotch Ice Cream', '10 Servings', 250, dateadd(day, -5, getdate()), dateadd(day, -3, getdate()), null 
union select (select c.CuisineId from Cuisine c where c.CuisineName = 'Hungarian'), (select u.UserId from Users u where u.UserFirstName = 'Sorah'), 'Coleslaw', '12 Servings', 140, getdate(), getdate(), null 
union select (select c.CuisineId from Cuisine c where c.CuisineName = 'Russian'), (select u.UserId from Users u where u.UserFirstName = 'Ahuva'), 'Cucumber Salad', '8 Servings', 35, getdate(), getdate(), null 
union select (select c.CuisineId from Cuisine c where c.CuisineName = 'Chinese'), (select u.UserId from Users u where u.UserFirstName = 'Don'), 'Sweet and Sour Salmon', '4 Servings', 320, getdate(), getdate(), null 
go 

insert RecipeIngredient(RecipeId, IngredientId, Quantity, MeasurementId, SequenceNum)
select (select r.RecipeId from Recipe r where r.RecipeName = 'Whole Wheat Carrot Muffins'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Eggs'), 4, null, 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Whole Wheat Carrot Muffins'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Honey'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Whole Wheat Carrot Muffins'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Oil'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Whole Wheat Carrot Muffins'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Whole Wheat Flour'), 2.5, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Whole Wheat Carrot Muffins'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Baking Soda'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'tsp.'), 5
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Whole Wheat Carrot Muffins'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Baking Powder'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'tsp.'), 6
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Whole Wheat Carrot Muffins'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Cinnamon'), 2, (select MeasurementId from Measurement m where m.MeasurementName = 'tsp.'), 7
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Whole Wheat Carrot Muffins'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Carrots, shredded'), 4, (select MeasurementId from Measurement m where m.MeasurementName = 'Large'), 8
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Deli Salad'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Lettuce'), 1, (select MeasurementId from Measurement m where m.MeasurementName = '1 lb bag'), 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Deli Salad'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Tomatoes'), 2, null, 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Deli Salad'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Kirbies'), 2, null, 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Deli Salad'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Turkey Roll'), 12, (select MeasurementId from Measurement m where m.MeasurementName = 'oz'), 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Deli Salad'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Oil'), 3, (select MeasurementId from Measurement m where m.MeasurementName = 'Tbs.'), 5
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Deli Salad'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Salt'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'tsp.'), 6
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Deli Salad'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Garlic Powder'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'tsp.'), 7
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Deli Salad'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Black Pepper'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'tsp.'), 8
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Challah'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Flour'), 1, (select MeasurementId from Measurement m where m.MeasurementName = '5 lb bag'), 5
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Challah'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Warm Water'), 5.25, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Challah'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Oil'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Challah'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Sugar'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Challah'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Yeast'), .25, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Challah'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Salt'), 3.5, (select MeasurementId from Measurement m where m.MeasurementName = 'Tbs'), 6
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Tahina Dip'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Tehina Paste'), 1, (select MeasurementId from Measurement m where m.MeasurementName = '16 oz. container'), 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Tahina Dip'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Water'), 2, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Tahina Dip'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Lemon Juice'), 3, (select MeasurementId from Measurement m where m.MeasurementName = 'Tbs.'), 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Tahina Dip'), (select i.IngredientId from ingredient i where i.IngredientName = 'Crushed Garlic'), 2, (select m.MeasurementId from Measurement m where m.MeasurementName = 'Tbs.'), 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Tahina Dip'), (select i.Ingredientid from Ingredient i where i.IngredientName = 'Salt'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'Tbs.'), 5
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Baked Crispy Chicken'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Mustard'), 3, (select MeasurementId from Measurement m where m.MeasurementName = 'Tbs.'), 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Baked Crispy Chicken'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Honey'), 2, (select MeasurementId from Measurement m where m.MeasurementName = 'Tbs.'), 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Baked Crispy Chicken'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Lemon Juice'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'tsp.'), 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Baked Crispy Chicken'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Garlic Powder'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'tsp.'), 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Baked Crispy Chicken'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Chicken'), 1, null, 5
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Baked Crispy Chicken'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Bread Crumbs'), 1.5, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 6
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Baked Crispy Chicken'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Salt'), .5, (select MeasurementId from Measurement m where m.MeasurementName = 'tsp.'), 7
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Baked Crispy Chicken'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Black Pepper'), .25, (select MeasurementId from Measurement m where m.MeasurementName = 'tsp.'), 8
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet Chicken'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Chicken'), 1, null, 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet Chicken'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Apricot Jam'), 3, (select MeasurementId from Measurement m where m.MeasurementName = 'Tbs.'), 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet Chicken'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Russian Dressing'), 3, (select MeasurementId from Measurement m where m.MeasurementName = 'Tbs.'), 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet Chicken'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Onion Soup Mix'), 2, (select MeasurementId from Measurement m where m.MeasurementName = 'Tbs.'), 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Roast Veal in Duck Sauce'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Rolled Veal Roast'), 3, (select MeasurementId from Measurement m where m.MeasurementName = 'lb'), 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Roast Veal in Duck Sauce'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Duck Sauce'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Roast Veal in Duck Sauce'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Garlic Powder'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'tsp.'), 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Roast Veal in Duck Sauce'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Onion Powder'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'tsp.'), 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Roast Veal in Duck Sauce'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Sweet Red Wine'), .25, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 5
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butternut Squash Stew'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Onion'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'Large'), 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butternut Squash Stew'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Oil'), 1.5, (select MeasurementId from Measurement m where m.MeasurementName = 'tsp.'), 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butternut Squash Stew'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Butternut Squash'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'Large'), 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butternut Squash Stew'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Parsnips'), 2, (select MeasurementId from Measurement m where m.MeasurementName = 'Large'), 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butternut Squash Stew'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Carrots'), 3, null, 5
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Almond Green Beans'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Frozen Green Beans'), 2, (select MeasurementId from Measurement m where m.MeasurementName = '10-oz. pkgs'), 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Almond Green Beans'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Garlic Powder'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'tsp.'), 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Almond Green Beans'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Oregano'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'tsp'), 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Almond Green Beans'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Tamari Soy Sauce'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'Tbs.'), 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Almond Green Beans'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Ground Almonds'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'Tbs.'), 5
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Spanish Rice'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Chopped Green Pepper'), .5, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Spanish Rice'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Chopped Celery'), .5, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Spanish Rice'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Chopped Onion'), .5, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Spanish Rice'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Oil'), 2, (select MeasurementId from Measurement m where m.MeasurementName = 'Tbs.'), 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Spanish Rice'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Rice'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 5
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Spanish Rice'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Boiling Water'), 3, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 6
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Spanish Rice'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Tomato'), 1, null, 7
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Spanish Rice'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Salt'), 2, (select MeasurementId from Measurement m where m.MeasurementName = 'tsp.'), 8
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Fruit Salad'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Frozen Rhubarb'), 1, (select MeasurementId from Measurement m where m.MeasurementName = '16-oz. bag'), 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Fruit Salad'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Frozen Strawberries'), 1, (select MeasurementId from Measurement m where m.MeasurementName = '16-oz. bag'), 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Fruit Salad'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Crushed Pineapple'), 1, (select MeasurementId from Measurement m where m.MeasurementName = '20-oz. can'), 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Fruit Salad'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Pineapple Chunks'), 1, (select MeasurementId from Measurement m where m.MeasurementName = '20-oz. can'), 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butterscotch Ice Cream'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Brown Sugar'), .5, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butterscotch Ice Cream'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Margarine'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'Stick'), 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butterscotch Ice Cream'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Eggs, separated'), 3, null, 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butterscotch Ice Cream'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Vanilla'), 2, (select MeasurementId from Measurement m where m.MeasurementName = 'tsp.'), 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butterscotch Ice Cream'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Salt'), .5, (select MeasurementId from Measurement m where m.MeasurementName = 'tsp.'), 5
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butterscotch Ice Cream'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Dessert Whip'), 2, (select MeasurementId from Measurement m where m.MeasurementName = '10-oz. container'), 6
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butterscotch Ice Cream'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Mini Chocolate Chips'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 7
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butterscotch Ice Cream'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Chopped Walnuts'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 8
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Coleslaw'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Cabbage'), 1, (select MeasurementId from Measurement m where m.MeasurementName = '16-oz. bag'), 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Coleslaw'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Carrots'), 2, null, 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Coleslaw'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Green Pepper'), 1, null, 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Coleslaw'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Lemon Juice'), 4, (select MeasurementId from Measurement m where m.MeasurementName = 'Tbs.'), 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Coleslaw'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Sugar'), .5, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 5
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Coleslaw'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Salt'), .5, (select MeasurementId from Measurement m where m.MeasurementName = 'Tbs.'), 6
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Coleslaw'), (select i.IngredientId from Ingredient i where i.IngredientName = 'mayonnaise'), 10, (select MeasurementId from Measurement m where m.MeasurementName = 'Tbs.'), 7
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Cucumber Salad'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Cucumbers'), 3, (select MeasurementId from Measurement m where m.MeasurementName = 'Medium'), 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Cucumber Salad'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Onions'), 2, (select MeasurementId from Measurement m where m.MeasurementName = 'Medium'), 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Cucumber Salad'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Water'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Cucumber Salad'), (select i.IngredientId from Ingredient i where i.IngredientName = 'White Vinegar'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Cucumber Salad'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Sugar'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'Tbs.'), 5
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Cucumber Salad'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Salt'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'Tbs.'), 6
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Cucumber Salad'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Black Pepper'), .25, (select MeasurementId from Measurement m where m.MeasurementName = 'tsp.'), 7
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet and Sour Salmon'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Salmon'), 4, (select MeasurementId from Measurement m where m.MeasurementName = 'Slices'), 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet and Sour Salmon'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Water'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet and Sour Salmon'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Lemon Juice'), .25, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet and Sour Salmon'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Sugar'), 2.5, (select MeasurementId from Measurement m where m.MeasurementName = 'Tbs.'), 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet and Sour Salmon'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Pickling Spices'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'Tbs.'), 5
go

insert Instruction(RecipeId, InstructionText, SequenceNum)
select (select r.RecipeId from Recipe r where r.RecipeName = 'Whole Wheat Carrot Muffins'), 'Beat eggs with honey until light.', 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Whole Wheat Carrot Muffins'), 'Slowly add oil until thoroughly combined.', 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Whole Wheat Carrot Muffins'), 'Combine flour, baking powder, baking soda and cinnamon and add to mixture.', 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Whole Wheat Carrot Muffins'), 'Stir in carrots and nuts.', 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Whole Wheat Carrot Muffins'), 'Bake in muffin tins for 20-25 minutes at 350.', 5
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Deli Salad'), 'Place diced kirbies, tomatoes and turkey roll into a bowl.', 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Deli Salad'), 'Mix in oil and spices.', 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Deli Salad'), 'Serve immediately.', 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Baked Crispy Chicken'), 'Mix mustard, honey, lemon juice and garlic.', 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Baked Crispy Chicken'), 'Roll chicken in mixture.', 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Baked Crispy Chicken'), 'Combine bread crumbs, salt and pepper and coat chicken.', 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Baked Crispy Chicken'), 'Bake in a greased baking pan at 400 for 45 minutes or until golden brown.', 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet Chicken'), 'Put chicken pieces into a pan.', 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet Chicken'), 'Combine apricot jam, Russian dressing, and soup mix.', 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet Chicken'), 'Spoon over chicken.', 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet Chicken'), 'Marinate for a few hours in refrigerator.', 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet Chicken'), 'Bake at 350 for 1 hour, basting chicken occasionally with the sauce.', 5
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Roast Veal in Duck Sauce'), 'Pierce veal roast all over with a fork.', 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Roast Veal in Duck Sauce'), 'Mix together duck sauce, garlic and onion powders, and wine.', 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Roast Veal in Duck Sauce'), 'Pour over veal roast.', 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Roast Veal in Duck Sauce'), 'Marinate in refrigerator fro several hours.', 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Roast Veal in Duck Sauce'), 'Bake, covered, at 350 until meat is tender (about 1.5 hours).', 5
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butternut Squash Stew'), 'Saute onion in oil.',1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butternut Squash Stew'), 'Peel and cut up squash into chunks.', 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butternut Squash Stew'), 'Peel parsnips and carrots, and cut into 1/2-inch pieces.', 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butternut Squash Stew'), 'Fill frying pan with water, a quarter full, and add onion, squash, parsnip, and carrots.', 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butternut Squash Stew'), 'Cook, covered, on medium flame for 30 minutes.', 5
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Almond Green Beans'), 'Cook green beans as directed on package. Do not drain.', 1 
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Almond Green Beans'), 'Add garlic powder, oregano, and soy sauce to them.', 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Almond Green Beans'), 'Cover and simmer for another 10 minutes.', 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Almond Green Beans'), 'Sprinkle almonds on top before serving.', 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Spanish Rice'), 'In a 2-quart pot, saute pepper, celery, and onion in oil until browned.', 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Spanish Rice'), 'Add rice and water.', 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Spanish Rice'), 'Cover and cook for 20 minutes on a low flame.', 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Spanish Rice'), 'Add tomato and salt, and cook for an additional 2 minutes.', 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Fruit Salad'), 'Cut up rhubarb and cook with strawberries on low flame for approcimately 1 hour, until rhubarb dissolves.', 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Fruit Salad'), 'Add both cans of pineapple and cook another 15 minutes.', 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Fruit Salad'), 'Frees and serve slightly frozen.', 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butterscotch Ice Cream'), 'In a pot, combine sugar and margarine over low heat, boil one minute, and remove from heat.', 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butterscotch Ice Cream'), 'In a blander, blend egg yolks, vanilla, and salt for 30 seconds, then add the boiled mixture.', 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butterscotch Ice Cream'), 'Blend on high for 1 minute and set aside to cool.', 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butterscotch Ice Cream'), 'Beat egg whites until stiff.', 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butterscotch Ice Cream'), 'Whip dessert whep and fold in egg whites.', 5
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butterscotch Ice Cream'), 'Fold in chocolate chips and walnuts.', 6
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Butterscotch Ice Cream'), 'Conbine with sugar mixture and freeze.', 7
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Coleslaw'), 'Shred cabbage, carrots, and green beans.', 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Coleslaw'), 'Conbine vegetables with lemon juice, sugar and salt.', 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Coleslaw'), 'Add mayonnaise and mix well.', 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Cucumber Salad'), 'Score cucumbers by running a fork down each of their sides.', 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Cucumber Salad'), 'Cut into thin slices.', 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Cucumber Salad'), 'Thinly slice onions.', 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Cucumber Salad'), 'In a large bowl, combine water, vinegar, sugar, salt, and pepper.', 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Cucumber Salad'), 'Stir in cucumbers and onions.', 5
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Cucumber Salad'), 'Cover and marinate salad in refrigerator for at least 5 hours before serving.', 6
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet and Sour Salmon'), 'Put fish in a pot.', 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet and Sour Salmon'), 'Mix water, lemon juice, and sugar, and pour over fish.', 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet and Sour Salmon'), 'Make sure fish is covered with mixture - make more mixture if necessary', 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet and Sour Salmon'), 'Cover pot and cook 40 minutes.', 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet and Sour Salmon'), 'When fish is cooked, transfer juice mixture to a bowl and add pickling spices.', 5
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet and Sour Salmon'), 'Strain this mixture over the fish immediately.', 6
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet and Sour Salmon'), 'Serve cold.', 7
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Challah'), 'In mixure bowl, Disolve yeast in 1 cup warm water and sprinkle 1 Tbs. sugar over it.', 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Challah'), 'Add in oil and the rest of the sugar and water.', 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Challah'), 'Turn on mixer and slowly pour in 1/2 of the flour.', 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Challah'), 'Pour in salt and then the rest of the flour.', 4
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Challah'), 'Allow to mix for approximately 15 minutes.', 5
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Challah'), 'Let dough rise until doubled in size.', 6
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Challah'), 'Braid into loaves and let rise again for 1/2 hour.', 7
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Challah'), 'Bake at 350 for 35 minutes', 8
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Tahina Dip'), 'Mix tahina paste, water, garlic and lemon juice in food processor for 5 minutes', 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Tahina Dip'), 'Add in salt and mix for another 5 minutes', 2
go 

insert Course(CourseName, SequenceNum)
select 'Appetizer', 1
union select 'Entre', 2
union select 'Main Course', 3
union select 'Dessert', 4
go 

insert Meal(UserId, MealTitle)
select (select UserId from Users u where u.UserFirstName = 'Sorah'), 'Anniversary Party'
union select (select UserId from Users u where u.UserFirstName = 'Don'), 'Siyum Meal'
union select (select UserId from Users u where u.UserFirstName = 'Shlomo'), 'Purim Seuda'
go 

insert MealCourse(MealId, CourseId)
select (select MealId from Meal m where m.MealTitle = 'Anniversary Party'), (select c.CourseId from Course c where c.CourseName = 'Entre')
union select (select MealId from Meal m where m.MealTitle = 'Anniversary Party'), (select c.CourseId from Course c where c.CourseName = 'Main Course')
union select (select MealId from Meal m where m.MealTitle = 'Anniversary Party'), (select c.CourseId from Course c where c.CourseName = 'Dessert')
union select (select MealId from Meal m where m.MealTitle = 'Siyum Meal'), (select c.CourseId from Course c where c.CourseName = 'Appetizer')
union select (select MealId from Meal m where m.MealTitle = 'Siyum Meal'), (select c.CourseId from Course c where c.CourseName = 'Entre')
union select (select MealId from Meal m where m.MealTitle = 'Siyum Meal'), (select c.CourseId from Course c where c.CourseName = 'Main Course')
union select (select MealId from Meal m where m.MealTitle = 'Siyum Meal'), (select c.CourseId from Course c where c.CourseName = 'Dessert')
union select (select MealId from Meal m where m.MealTitle = 'Purim Seuda'), (select c.CourseId from Course c where c.CourseName = 'Appetizer')
union select (select MealId from Meal m where m.MealTitle = 'Purim Seuda'), (select c.CourseId from Course c where c.CourseName = 'Entre')
union select (select MealId from Meal m where m.MealTitle = 'Purim Seuda'), (select c.CourseId from Course c where c.CourseName = 'Main Course')
go 

insert RecipeMealCourse(RecipeId, MealCourseId, MainDish)
select (select RecipeId from Recipe r where r.RecipeName = 'Fruit Salad'), (select mc.MealCourseId from MealCourse mc join Meal m on mc.MealId = m.MealId join Course c on mc.CourseId = c.CourseId where m.MealTitle = 'Anniversary Party' and c.CourseName = 'Entre'), 1
union select (select RecipeId from Recipe r where r.RecipeName = 'Sweet Chicken'), (select mc.MealCourseId from MealCourse mc join Meal m on mc.MealId = m.MealId join Course c on mc.CourseId = c.CourseId where m.MealTitle = 'Anniversary Party' and c.CourseName = 'Main Course'), 1
union select (select RecipeId from Recipe r where r.RecipeName = 'Spanish Rice'), (select mc.MealCourseId from MealCourse mc join Meal m on mc.MealId = m.MealId join Course c on mc.CourseId = c.CourseId where m.MealTitle = 'Anniversary Party' and c.CourseName = 'Main Course'), 0
union select (select RecipeId from Recipe r where r.RecipeName = 'Almond Green Beans'), (select mc.MealCourseId from MealCourse mc join Meal m on mc.MealId = m.MealId join Course c on mc.CourseId = c.CourseId where m.MealTitle = 'Anniversary Party' and c.CourseName = 'Main Course'), 0
union select (select RecipeId from Recipe r where r.RecipeName = 'Butterscotch Ice Cream'), (select mc.MealCourseId from MealCourse mc join Meal m on mc.MealId = m.MealId join Course c on mc.CourseId = c.CourseId where m.MealTitle = 'Anniversary Party' and c.CourseName = 'Dessert'), 1
union select (select RecipeId from Recipe r where r.RecipeName = 'Challah'), (select mc.MealCourseId from MealCourse mc join Meal m on mc.MealId = m.MealId join Course c on mc.CourseId = c.CourseId where m.MealTitle = 'Siyum Meal' and c.CourseName = 'Appetizer'), 1
union select (select RecipeId from Recipe r where r.RecipeName = 'Coleslaw'), (select mc.MealCourseId from MealCourse mc join Meal m on mc.MealId = m.MealId join Course c on mc.CourseId = c.CourseId where m.MealTitle = 'Siyum Meal' and c.CourseName = 'Appetizer'), 0
union select (select RecipeId from Recipe r where r.RecipeName = 'Sweet and Sour Salmon'), (select mc.MealCourseId from MealCourse mc join Meal m on mc.MealId = m.MealId join Course c on mc.CourseId = c.CourseId where m.MealTitle = 'Siyum Meal' and c.CourseName = 'Entre'), 1
union select (select RecipeId from Recipe r where r.RecipeName = 'Spanish Rice'), (select mc.MealCourseId from MealCourse mc join Meal m on mc.MealId = m.MealId join Course c on mc.CourseId = c.CourseId where m.MealTitle = 'Siyum Meal' and c.CourseName = 'Entre'), 0
union select (select RecipeId from Recipe r where r.RecipeName = 'Fruit Salad'), (select mc.MealCourseId from MealCourse mc join Meal m on mc.MealId = m.MealId join Course c on mc.CourseId = c.CourseId where m.MealTitle = 'Siyum Meal' and c.CourseName = 'Dessert'), 1
union select (select RecipeId from Recipe r where r.RecipeName = 'Roast Veal in Duck Sauce'), (select mc.MealCourseId from MealCourse mc join Meal m on mc.MealId = m.MealId join Course c on mc.CourseId = c.CourseId where m.MealTitle = 'Siyum Meal' and c.CourseName = 'Main Course'), 1
union select (select RecipeId from Recipe r where r.RecipeName = 'Butternut Squash Stew'), (select mc.MealCourseId from MealCourse mc join Meal m on mc.MealId = m.MealId join Course c on mc.CourseId = c.CourseId where m.MealTitle = 'Siyum Meal' and c.CourseName = 'Main Course'), 0
union select (select RecipeId from Recipe r where r.RecipeName = 'Whole Wheat Carrot Muffins'), (select mc.MealCourseId from MealCourse mc join Meal m on mc.MealId = m.MealId join Course c on mc.CourseId = c.CourseId where m.MealTitle = 'Siyum Meal' and c.CourseName = 'Main Course'), 0
union select (select RecipeId from Recipe r where r.RecipeName = 'Challah'), (select mc.MealCourseId from MealCourse mc join Meal m on mc.MealId = m.MealId join Course c on mc.CourseId = c.CourseId where m.MealTitle = 'Purim Seuda' and c.CourseName = 'Appetizer'), 1
union select (select RecipeId from Recipe r where r.RecipeName = 'Deli Salad'), (select mc.MealCourseId from MealCourse mc join Meal m on mc.MealId = m.MealId join Course c on mc.CourseId = c.CourseId where m.MealTitle = 'Purim Seuda' and c.CourseName = 'Entre'), 1
union select (select RecipeId from Recipe r where r.RecipeName = 'Baked Crispy Chicken'), (select mc.MealCourseId from MealCourse mc join Meal m on mc.MealId = m.MealId join Course c on mc.CourseId = c.CourseId where m.MealTitle = 'Purim Seuda' and c.CourseName = 'Main Course'), 1
union select (select RecipeId from Recipe r where r.RecipeName = 'Whole Wheat Carrot Muffins'), (select mc.MealCourseId from MealCourse mc join Meal m on mc.MealId = m.MealId join Course c on mc.CourseId = c.CourseId where m.MealTitle = 'Purim Seuda' and c.CourseName = 'Main Course'), 0
union select (select RecipeId from Recipe r where r.RecipeName = 'Almond Green Beans'), (select mc.MealCourseId from MealCourse mc join Meal m on mc.MealId = m.MealId join Course c on mc.CourseId = c.CourseId where m.MealTitle = 'Purim Seuda' and c.CourseName = 'Main Course'), 0
union select (select RecipeId from Recipe r where r.RecipeName = 'Coleslaw'), (select mc.MealCourseId from MealCourse mc join Meal m on mc.MealId = m.MealId join Course c on mc.CourseId = c.CourseId where m.MealTitle = 'Purim Seuda' and c.CourseName = 'Main Course'), 0
go 

insert CookBook(UserId, CookBookName, CookBookPrice)
select (select u.UserId from Users u where u.UserFirstName = 'Ahuva'), 'Cooking it Easy', 30
union select (select u.UserId from Users u where u.UserFirstName = 'Don'), 'Try Something New', 27
go 

insert CookBookRecipe(CookBookId, RecipeId, SequenceNum)
select (select cb.CookBookId from CookBook cb where cb.CookBookName = 'Cooking it Easy'), (select r.RecipeId from Recipe r where r.RecipeName = 'Challah'), 1
union select (select cb.CookBookId from CookBook cb where cb.CookBookName = 'Cooking it Easy'), (select r.RecipeId from Recipe r where r.RecipeName = 'Whole Wheat Carrot Muffins'), 2
union select (select cb.CookBookId from CookBook cb where cb.CookBookName = 'Cooking it Easy'), (select r.RecipeId from Recipe r where r.RecipeName = 'Fruit Salad'), 6
union select (select cb.CookBookId from CookBook cb where cb.CookBookName = 'Cooking it Easy'), (select r.RecipeId from Recipe r where r.RecipeName = 'Baked Crispy Chicken'), 10
union select (select cb.CookBookId from CookBook cb where cb.CookBookName = 'Cooking it Easy'), (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet Chicken'), 9
union select (select cb.CookBookId from CookBook cb where cb.CookBookName = 'Cooking it Easy'), (select r.RecipeId from Recipe r where r.RecipeName = 'Butterscotch Ice Cream'), 3
union select (select cb.CookBookId from CookBook cb where cb.CookBookName = 'Cooking it Easy'), (select r.RecipeId from Recipe r where r.RecipeName = 'Deli Salad'), 5
union select (select cb.CookBookId from CookBook cb where cb.CookBookName = 'Cooking it Easy'), (select r.RecipeId from Recipe r where r.RecipeName = 'Almond Green Beans'), 7
union select (select cb.CookBookId from CookBook cb where cb.CookBookName = 'Cooking it Easy'), (select r.RecipeId from Recipe r where r.RecipeName = 'Spanish Rice'), 8
union select (select cb.CookBookId from CookBook cb where cb.CookBookName = 'Cooking it Easy'), (select r.RecipeId from Recipe r where r.RecipeName = 'Tahina Dip'), 4
union select (select cb.CookBookId from CookBook cb where cb.CookBookName = 'Try Something New'), (select r.RecipeId from Recipe r where r.RecipeName = 'Challah'), 1
union select (select cb.CookBookId from CookBook cb where cb.CookBookName = 'Try Something New'), (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet and Sour Salmon'), 2
union select (select cb.CookBookId from CookBook cb where cb.CookBookName = 'Try Something New'), (select r.RecipeId from Recipe r where r.RecipeName = 'Sweet Chicken'), 3
union select (select cb.CookBookId from CookBook cb where cb.CookBookName = 'Try Something New'), (select r.RecipeId from Recipe r where r.RecipeName = 'Deli Salad'),4
union select (select cb.CookBookId from CookBook cb where cb.CookBookName = 'Try Something New'), (select r.RecipeId from Recipe r where r.RecipeName = 'Butternut Squash Stew'), 5
union select (select cb.CookBookId from CookBook cb where cb.CookBookName = 'Try Something New'), (select r.RecipeId from Recipe r where r.RecipeName = 'Almond Green Beans'), 6
union select (select cb.CookBookId from CookBook cb where cb.CookBookName = 'Try Something New'), (select r.RecipeId from Recipe r where r.RecipeName = 'Fruit Salad'), 7
union select (select cb.CookBookId from CookBook cb where cb.CookBookName = 'Try Something New'), (select r.RecipeId from Recipe r where r.RecipeName = 'Butterscotch Ice Cream'), 8
union select (select cb.CookBookId from CookBook cb where cb.CookBookName = 'Try Something New'), (select r.RecipeId from Recipe r where r.RecipeName = 'Whole Wheat Carrot Muffins'), 9
go 
