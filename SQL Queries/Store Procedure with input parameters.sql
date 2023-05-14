use SD_DMS 

/*** Geting the Last generarted identity column ***/
Select SCOPE_IDENTITY()

/*** Create Store Procedure Without Parameters**/
Create PROCEDURE spGetAllExpense
As 
Begin
     Select * from Expense
End

/** Executing **/
spGetAllExpense


/*** Create Store Procedure With Parameters**/
Create Proc spGetExpenseByID
@ID int
as
begin
   select ID, EmployeeID, ExpenseMonth from Expense where ID = @ID
end


spGetExpenseByID @ID = 2

/*** Viewing the text of Store Procedures **/
sp_helptext spGetExpenseByID

/*** Change the difinition of Store Procedure ***/
Alter Procedure spGetExpenseByID
@ID int
As 
begin
   select ID, EmployeeID from Expense where ID = @ID
end

/*** Deleting a Store Procedure ***/
Drop proc spGetAllExpense


/*** Encrypt the Store Procedure ***/
Alter Procedure spGetExpenseByID
@ID int
with Encryption
As 
begin
   select ID, EmployeeID from Expense where ID = @ID
end