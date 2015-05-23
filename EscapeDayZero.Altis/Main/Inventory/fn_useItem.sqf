disableSerialization;

_InventoryDialog = findDisplay 1000;
_InventoryListbox = _InventoryDialog displayCtrl 1002;
_curIndex = lbCurSel _InventoryListbox;
if (_curIndex == -1) exitWith {};

_itemName = _inventoryListbox lbData _curIndex;

switch (_itemName) do
{
	case "flare": {[] spawn EDZC_fnc_Flare;};
	case "lockpick": {[] spawn EDZC_fnc_Lockpick;};
	case "coca": {["coca"] spawn EDZC_fnc_Consume;};
	case "mountaindew": {["mountaindew"] spawn EDZC_fnc_Consume;};
	case "bakedbeans": {["bakedbeans"] spawn EDZC_fnc_Consume;};
	case "banana": {["banana"] spawn EDZC_fnc_Consume;};
	case "apple": {["apple"] spawn EDZC_fnc_Consume;};
	case "sardines": {["sardines"] spawn EDZC_fnc_Consume;};
	case "fuelcanister": {[true] spawn EDZC_fnc_FuelCanister;};
	case "fuelcanister_empty": {[false] spawn EDZC_fnc_FuelCanister;};
	case "morphine": {[] spawn EDZC_fnc_Morphine;};
	case "bandage": {["bandage"] spawn EDZC_fnc_Consume;};
	case "rice": {["rice"] spawn EDZC_fnc_Consume;};
	case "matches": {[] spawn EDZC_fnc_Matches;};
	case "generator": {[] spawn EDZC_fnc_Generator;};
	case "canteen": {["canteen"] spawn EDZC_fnc_Consume;};
	case "gascanister": {[] spawn EDZC_fnc_GasCanister;};
	case "cereals": {["cereals"] spawn EDZC_fnc_Consume;};
};

sleep 0.1;
[false] spawn EDZC_fnc_loadInventory;