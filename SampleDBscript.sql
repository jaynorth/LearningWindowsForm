﻿CREATE DATABASE Sample
GO
CREATE TABLE [dbo].[People](
[id] [int] IDENTITY(1,1) NOT NULL,
[FirstName] [nvarchar](50) NOT NULL,
[LastName] [nvarchar](50) NOT NULL,
[EmailAddress] [nvarchar](100) NOT NULL,
[PhoneNumber] [varchar](20) NOT NULL,
CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE PROCEDURE [dbo].[People_GetByLastName]
@LastName nvarchar(50)
AS
BEGIN
SET NOCOUNT ON;
select *
from dbo.People
where LastName = @LastName;
END
GO
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
GO
USE [master]
GO