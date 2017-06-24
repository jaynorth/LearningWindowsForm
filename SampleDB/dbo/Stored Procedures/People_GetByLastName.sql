CREATE PROCEDURE [dbo].[People_GetByLastName]
@LastName nvarchar(50)
AS
BEGIN
SET NOCOUNT ON;
select *
from dbo.People
where LastName = @LastName;
END