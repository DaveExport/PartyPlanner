CREATE TABLE [dbo].[PartyGuests]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [PartyID] INT NOT NULL, 
    [GuestID] INT NOT NULL, 
    [FavouriteDrink] INT NOT NULL
)
