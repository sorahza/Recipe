insert Ingredient(IngredientName)
select 'Hot Water'
union select 'Cocoa'
union select 'Coffee'


insert Recipe(CuisineId, CreateByUserId, RecipeName, yields, Calories, CreatedDate, PublishedDate, ArchivedDate)
select (select c.CuisineId from Cuisine c where c.CuisineName = 'Hungarian'), (select u.UserId from Users u where u.UserFirstName = 'Sorah'), 'Coffee Cake', '24 pieces', 150, getdate(), null, null


insert RecipeIngredient(RecipeId, IngredientId, Quantity, MeasurementId, SequenceNum)
select (select r.RecipeId from Recipe r where r.RecipeName = 'Coffee Cake'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Eggs'), 4, null, 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Coffee Cake'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Sugar'), 2, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Coffee Cake'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Oil'), 1, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Coffee Cake'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Flour'), 2, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 7
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Coffee Cake'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Coffee'), .25, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 5
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Coffee Cake'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Baking Powder'), 2, (select MeasurementId from Measurement m where m.MeasurementName = 'tsp.'), 9
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Coffee Cake'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Cocoa'), .25, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 8
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Coffee Cake'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Hot Water'),.75, (select MeasurementId from Measurement m where m.MeasurementName = 'C.'), 6
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Coffee Cake'), (select i.IngredientId from Ingredient i where i.IngredientName = 'Vanilla'),2, (select MeasurementId from Measurement m where m.MeasurementName = 'Tbs.'), 4

insert Instruction(RecipeId, InstructionText, SequenceNum)
select (select r.RecipeId from Recipe r where r.RecipeName = 'Coffee Cake'), 'Beat sugar,oil, eggs and vanilla.', 1
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Coffee Cake'), 'Dissolve coffee in hot water and add to mixture.', 2
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Coffee Cake'), 'Add flour, cocoa, and  to mixture.', 3
union select (select r.RecipeId from Recipe r where r.RecipeName = 'Coffee Cake'), 'Bake in 9X13 pan for one hour at 350.', 4
