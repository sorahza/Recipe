/*
Ingredient
    IngredientId pk
    IngredientName var(30), not null, not blank, unique
    pic  calculated column persisted

Measurement
    MeasurementId pk 
    MeasurementName var(30), not null, not blank, unique

Cuisine
    CuisineId pk
    CuisineName var(30), not null, not blank, unique

Users
    UserId pk
    UserFirstName var(30), not null
    UserLastName var(30), not null
  
Recipe
    RecipeId pk
    CuisineId fk, not null
    CreateByUserId fk, not null
    RecipeName var(50), not null, not blank, unique
    Yields var(30), not null, not blank
    Calories int, not null
    CreatedDate date, not null, d_getdate >02/10/2023 and <= get date()
    PublishedDate date constraint <= getdate(), 
    ArchivedDate date constraint <= getdate(), 
    CurrentStatus computed column (case when archiveddate not null = archiveddate else (case when publisheddate not null = published date else = draftdate))
    draftdate <= publisheddate
    draftdate <= archiveddate
    publisheddate <= archiveddate
    pic persisted calculatiion


RecipeIngredient
    RecipeIngredientsId pk
    RecipeId fk, not null
    IngredientId fk, not null
    Measurement fk
    Quantity dec(4,2), not null >0
    Sequence int, not null >0
    constraint u_recipe_and_Sequence

Instruction
    InstructionId pk
    RecipeId fk, not null
    Instruction Text var(1000), not null, not blank
    Sequence int, not null, >0
    constraint u_recipe_and_Sequence

Course
    CourseId pk
    CourseName var(30), not null, not blank
    Sequence int, not null >0

Meal
    MealId pk
    UserId fk
    MealTitle var(50), not null not blank unique
    CreatedDate date, not null >02/10/2022
    Active bit d_active
    pic var(65) calculated persisted

MealCourse
    MealCourseId pk
    MealId fk not null
    CourseId fk not null
    constraint u_meal_and_course

RecipeMealCourse
    RecipeMealCourseID pk
    RecipeId fk, not null
    MealCourseId fk, not null
    MainDish bit
    constraint u_mealcourse_and_recipe 

CookBook
    CookBookId pk
    UserId fk
    CookBookName var(50), not null not blank
    CookBookPrice dec(5,2), not null >0
    CreatedDate date d_getdate >02/10/2022 and <= getdate()
    Active bit d_active
    pic calculated column persisted

CookBookRecipe
    CookBookRecipeId pk
    CookBookId fk, not null
    RecipeId fk, not null
    Sequence int, not null>0
*/
