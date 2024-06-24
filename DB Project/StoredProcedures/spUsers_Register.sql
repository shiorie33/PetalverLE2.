CREATE PROCEDURE [dbo].[spUsers_Register]
	@userName nvarchar(50),
	@firstName nvarchar(50),
	@lastName nvarchar(50),
	@password nvarchar(50)
AS
begin
	set nocount on;

	INSERT INTO dbo.Users
	(UserName, FirstName, LastName, Password)
	VALUES (@userName, @firstName, @lastName, @password)
end
