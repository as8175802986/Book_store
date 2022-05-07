
create table Feedback
(
         FeedbackId int not null identity (1,1) primary key,
		 UserId INT NOT NULL
		 FOREIGN KEY (UserId) REFERENCES Registeruser(UserId),
	     BookId INT NULL
		 FOREIGN KEY (BookId) REFERENCES Books(BookId),
		 Comments Varchar(max),
		 Ratings int		 
);

Select * from Feedback

create procedure Sp_AddFeedback(
	@UserId INT,
	@BookId INT,
	@Comments Varchar(max),
	@Ratings int)		
As 
Begin
	IF (EXISTS(SELECT * FROM RegisterUser WHERE @UserId = @UserId))
	Begin
	Insert into Feedback (UserId,BookId,Comments,Ratings )
		values (@UserId,@BookId,@Comments,@Ratings);
	End
	Else
	Begin
		Select 1
	End
End


create PROC sp_GetFeedback
	@BookId INT
AS
BEGIN
	select 
		Feedback.UserId,Feedback.Comments,Feedback.Ratings,RegisterUser.FullName,RegisterUser.Email
		FROM RegisterUser
		inner join Feedback
		on Feedback.UserId=RegisterUser.UserId
		where BookId=@BookId
END