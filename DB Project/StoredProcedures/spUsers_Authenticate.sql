CREATE PROCEDURE [dbo].[spUsers_Authenticate]
	@username nvarchar(50),
	@password nvarchar(50)
AS
begin
	set nocount on;
	SELECT [Id], [UserName], [FirstName], [LastName], [Password]
	from dbo.Users
	WHERE UserName = @username
	AND Password = @password;
end