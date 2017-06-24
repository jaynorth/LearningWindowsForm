CREATE PROCEDURE [dbo].[People_Insert]
@FirstName nvarchar(50),
@LastName nvarchar(50),
@EmailAddress nvarchar(100),
@PhoneNumber varchar(20)
AS
BEGIN
SET NOCOUNT ON;
insert into dbo.People (FirstName, LastName, EmailAddress, PhoneNumber)
values (@FirstName, @LastName, @EmailAddress, @PhoneNumber);
END