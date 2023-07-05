--replace //loginname// and //password// with values from vault
--Create LOGIN in MASTER

create login //loginname// with PASSWORD = '//password//'

--must be in RecipeDB


create user dev_user from login //loginname//

alter role db_datawriter add member dev_user  
alter role db_datareader add member dev_user