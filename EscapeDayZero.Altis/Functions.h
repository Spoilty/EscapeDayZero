class Socket_Reciever
{
	tag = "EDZC";
	class Basic
	{
		file = "Main\Basics";
		class sessionRecieved {};
		class ambientloop {};
		class keyHandler {};
		class setTexture {};
		class gameEndWinner {};
		class endMissionMan {};
		class survival {};
	};
	class Inventory
	{
		file = "Main\Inventory";
		class useItem {};
		class dropItem {};
		class loadInventory {};
		class varToStr {};
		class handleItem {};
		class checkItem {};
		class pickupItem {};
	};
	class InventoryItems
	{
		file = "Main\Inventory\Items";
		class Flare {};
		class Lockpick {};
		class Consume {};
//		class Morphine {};
	};
	class Messages
	{
		file = "Main\Messages";
		class message {};
	};
};
