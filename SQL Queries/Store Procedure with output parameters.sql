use SD_DMS 


select * from ExpenseDetails

Alter Procedure spGetExpenseLocationIDByID
@ExpenseLocationID varchar(200)
as 
Begin
   Select Count(ExpenseLocationID) from ExpenseDetails where ExpenseLocationID = @ExpenseLocationID

End


Declare @TotalExpenseLocationID int
Execute spGetExpenseLocationIDByID @ExpenseLocationID='Ex.H.Q.'

print @TotalExpenseLocationID

/**declare
@ExpenseLocationID varchar(50)
set @ExpenseLocationID='Ex.H.Q.'
Begin
   Select Count(*) from ExpenseDetails where ExpenseLocationID = @ExpenseLocationID
End
select * from ExpenseDetails where ExpenseLocationID = 'Ex.H.Q.'**/


