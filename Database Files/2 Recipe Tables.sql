
use RecipeDB

go 

drop table if exists CookBookRecipe
drop table if exists CookBook
drop table if exists RecipeMealCourse
drop table if exists MealCourse
drop table if exists Meal
drop table if exists Course
drop table if exists Instruction
drop table if exists RecipeIngredient
drop table if exists Recipe
drop table if exists Users
drop table if exists Cuisine
drop table if exists Measurement  
drop table if exists Ingredient
go 

create table dbo.Ingredient(
    IngredientId int not null identity primary key,
    IngredientName varchar(100) not null 
        constraint ck_Ingredient_IngredientName_cannot_be_blank check (IngredientName <> '') 
        constraint u_Ingredient_IngredientName unique, 
    IngredientPic as concat('Ingredient_',replace(IngredientName,' ','_'),'.jpg') persisted
)
go 

create table dbo.Measurement(
    MeasurementId int not null identity primary key,
    MeasurementName varchar(100) not null 
        constraint ck_Measurement_MeasurementName_cannot_be_blank check (MeasurementName <> '')
        constraint u_Measurement_MeasurementName unique
)
go

create table dbo.Cuisine(
    CuisineId int not null identity primary key,
    CuisineName varchar(30) not null 
        constraint ck_Cuisine_CuisineName_cannot_be_blank check (CuisineName <> '')
        constraint u_Cousine_CuisineName unique
)
go 

create table dbo.Users(
    UserId int not null identity primary key,
    UserFirstName varchar(100) not null constraint ck_UserFirstName_cannot_be_blank check (UserFirstName <> ''),
    UserLastName varchar(100) not null constraint ck_UserLaststName_cannot_be_blank check (UserLastName <> '')
    constraint u_UserFirstName_UserLastName unique (UserFirstName, UserLastName)
)
go

create table dbo.Recipe(
    RecipeId int not null identity primary key,
    CuisineId int not null constraint f_Cuisine_Recipe foreign key references Cuisine(CuisineId),
    CreateByUserId int not null constraint f_Users_Recipe foreign key references Users(UserId),
    RecipeName varchar(50) not null 
        constraint ck_Recipe_RecipeName_cannot_be_blank check (RecipeName <> '')
        constraint u_Recipe_RecipeName unique,
    yields varchar(30) not null constraint ck_Recipe_yields_cannot_be_blank check (yields <> ''),
    Calories int not null constraint ck_Recipe_Calories_must_be_greater_than_zero check (Calories >= 0),
    CreatedDate date not null 
        constraint d_Recipe_CreatedDate_getdate default getdate()
        constraint ck_DraftDate_cannot_be_a_future_date_and_must_be_after_Feb_2023 check (CreatedDate between '02/10/2023' and getdate()),
    PublishedDate date constraint ck_PublishedDate_cannot_be_a_future_date check (PublishedDate <= getdate()),
    ArchivedDate date constraint ck_ArchivedDate_cannot_be_a_future_date check (ArchivedDate <= getdate()),
    CurrentStatus as case 
        when ArchivedDate is not null then 'Archived' 
        when PublishedDate is not null and ArchivedDate is null then 'Published'
        else 'Drafted'
        end 
        persisted,
    RecipePic as concat('Recipe_',replace(RecipeName,' ','_'),',jpg') persisted,    
    constraint ck_PublishedDate_must_be_greater_than_or_equal_to_DraftDate check (PublishedDate >= CreatedDate),
    constraint ck_ArchivedDate_must_be_greater_than_or_equal_to_DraftDate check (ArchivedDate >= CreatedDate),
    constraint ck_ArchivedDate_must_be_greater_than_or_equal_to_PublishedDate check (ArchivedDate >= PublishedDate)
)
go 

create table dbo.RecipeIngredient(
    RecipeIngredientId int not null identity primary key,
    RecipeId int not null constraint f_Recipe_RecipeIngredient foreign key references Recipe(RecipeId),
    IngredientId int not null constraint f_Ingredient_RecipeIngredient foreign key references Ingredient(IngredientId),
    MeasurementId int null constraint f_Measurement_RecipeIngredient foreign key references Measurement(MeasurementId),
    Quantity decimal(4,2) null constraint ck_RecipeIngredient_Quantity_must_be_greater_than_zero check (Quantity > 0),
    SequenceNum int not null constraint ck_RecipeIngredient_SequenceNum_must_be_greater_than_zero check (SequenceNum > 0),
    constraint u_RecipeIngredient_RecipeId_and_IngredientId unique (RecipeId, IngredientId),
    constraint u_RecipeIngredient_SequenceNum unique(RecipeId,SequenceNum)
)
go

create table dbo.Instruction(
    InstructionId int not null identity primary key,
    RecipeId int not null constraint f_Recipe_Step foreign key references Recipe(RecipeId),
    InstructionText varchar(1000) not null constraint ck_Step_StepText_cannot_be_blank check (InstructionText <> ''),
    SequenceNum int not null constraint ck_Sequence_must_be_greater_than_zero check (SequenceNum > 0),
    constraint u_Step_RecipeId_and_SequenceNum unique (RecipeId, SequenceNum)
)
go 

create table dbo.Course(
    CourseId int not null identity primary key,
    CourseName varchar(30) not null
        constraint u_Course_CourseName unique
        constraint ck_Course_CourseName_cannot_be_blank check (CourseName <> ''),
    SequenceNum int not null constraint ck_Course_SequenceNum_must_be_greater_than_zero check (SequenceNum > 0)
)
go 

create table dbo.Meal(
    MealId int not null identity primary key,
    UserId int not null constraint f_Users_Meal foreign key references Users(UserId),
    MealTitle varchar(50) not null
        constraint ck_Meal_MealTitle_cannot_be_blank check (MealTitle <> '')
        constraint u_Meal_MealTitle unique,
    CreatedDate date not null default getdate() 
        constraint ck_CreatedDate_must_be_after_Feb10_2023_and_no_later_than_current_date check (CreatedDate between '02/10/2023' and getdate()),
    Active bit not null default 1,
    MealPic as concat('Meal_',replace(MealTitle,' ','_'),'.jpg')
)
go 

create table dbo.MealCourse(
    MealCourseId int not null identity primary key,
    MealId int not null constraint f_Meal_MealCourse foreign key references Meal(MealId),
    CourseId int not null constraint f_Course_MealCourse foreign key references Course(CourseId),
    constraint u_Meal_and_Course unique (MealId, CourseId)
)
go 

create table dbo.RecipeMealCourse(
    RecipeMealCourseId int not null identity primary key,
    RecipeId int not null constraint f_Recipe_RecipeMealCourse foreign key references Recipe(RecipeId),
    MealCourseId int not null constraint f_MealCourse_RecipeMealCourse foreign key references MealCourse(MealCourseId),
    MainDish bit not null,
    constraint u_MealCourse_and_Recipe unique (MealCourseId, RecipeId)
)
go 

Create table dbo.Cookbook(
    CookbookId int not null identity primary key,
    UserId int not null constraint f_Users_CookBook foreign key references Users(UserId),
    CookbookName varchar(50) not null 
        constraint u_Cookbook_CookbookName unique
        constraint ck_CookbookName_cannot_be_blank check (CookbookName <> ''),
    CookbookPrice decimal(5,2) not null constraint ck_CookbookPrice_must_be_greater_then_zero check (CookBookPrice > 0),
    CreatedDate date not null default getdate() 
        constraint ck_CreatedDate_must_be_between_Feb10_2023_and_current_date check (CreatedDate between '02/10/2023' and getdate()),
    Active bit not null default 1,
    CookbookPic as concat('Cookbook_',replace(CookbookName,' ','_'),'.jpg')
)
go 

create table dbo.CookbookRecipe(
    CookbookRecipeId int not null identity primary key,
    CookbookId int not null constraint f_CookBook_CookbookRecipe foreign key references Cookbook(CookbookId),
    RecipeId int not null constraint f_Recipe_CookbookRecipe foreign key references Recipe(RecipeId),
    SequenceNum int not null constraint ck_CookBookRecipe_SequenceNum_must_be_greater_than_zero check (SequenceNum > 0),
    constraint u_CookbookRecipe_CookbookId_and_RecipeId unique (CookbookId, RecipeId)
)
go 
