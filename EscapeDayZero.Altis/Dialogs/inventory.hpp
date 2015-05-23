class edz_inventory {
	idd = 1000;
	name= "edz_inventory";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn EDZC_fnc_loadInventory;edz_inUse=true;";
	onUnload = "edz_inUse=false;";
	class controlsBackground {
	};
	
class controls {

class RscText_1000: EDZ_RscText
{
	idc = -1;
	x = -0.0100204 * safezoneW + safezoneX;
	y = 0.00510399 * safezoneH + safezoneY;
	w = 1.02004 * safezoneW;
	h = 1.01179 * safezoneH;
	colorBackground[] = {0,0,0,0.85};
};
class RscListbox_1500: EDZ_RscListbox
{
	idc = 1002;
	x = 0.329993 * safezoneW + safezoneX;
	y = 0.0820877 * safezoneH + safezoneY;
	w = 0.340014 * safezoneW;
	h = 0.71485 * safezoneH;
	sizeEx = 0.045;

};
class RscButtonMenu_2402: EDZ_RscButtonMenu
{
	idc = -1;
	text = "CLOSE INVENTORY"; //--- ToDo: Localize;
	x = 0.329993 * safezoneW + safezoneX;
	y = 0.796938 * safezoneH + safezoneY;
	w = 0.103218 * safezoneW;
	h = 0.0219954 * safezoneH;
	onButtonClick = "closeDialog 0;";
};
class RscButtonMenu_2400: EDZ_RscButtonMenu
{
	idc = -1;
	text = "DROP ITEM"; //--- ToDo: Localize;
	x = 0.447781 * safezoneW + safezoneX;
	y = 0.796938 * safezoneH + safezoneY;
	w = 0.104432 * safezoneW;
	h = 0.0219954 * safezoneH;
	onButtonClick = "[] spawn EDZC_fnc_dropItem;";
};
class RscButtonMenu_2401: EDZ_RscButtonMenu
{
	idc = -1;
	text = "USE ITEM"; //--- ToDo: Localize;
	x = 0.566785 * safezoneW + safezoneX;
	y = 0.796938 * safezoneH + safezoneY;
	w = 0.103218 * safezoneW;
	h = 0.0219954 * safezoneH;
	onButtonClick = "[] spawn EDZC_fnc_useItem;";
};

};
};