CREATE PROCEDURE [dbo].[GetPartyGuests]
	@PartyID int
AS
BEGIN
	select 
	PartyGuests.Id,
	PartyGuests.PartyID,
	PartyGuests.GuestID,
	Guests.Name as GuestName,
	PartyGuests.FavouriteDrink,
	Drinks.Name as DrinkName
	from [dbo].[PartyGuests]
	join [dbo].[Guests] on PartyGuests.GuestID = Guests.Id
	join [dbo].[Drinks] on PartyGuests.FavouriteDrink = Drinks.Id
	where PartyID = @PartyID;
END
GO