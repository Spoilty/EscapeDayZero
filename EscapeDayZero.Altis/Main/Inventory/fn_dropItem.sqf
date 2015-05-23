disableSerialization;
_InventoryDialog = findDisplay 1000;
_InventoryListbox = _InventoryDialog displayCtrl 1002;
_curIndex = lbCurSel _InventoryListbox;
if (_curIndex == -1) exitWith {};

_item = _inventoryListbox lbData _curIndex;

[false,_item,1] spawn EDZC_fnc_handleItem;

_drinks  = ["coca","mountaindew"];
_food    = ["bakedbeans","sardines","banana"];
_done    = false;
_obj     = ObjNull;

// Custom Objects
if (_item in _drinks) then {_obj = "Land_BottlePlastic_V1_F" createVehicle position player;_done=true;};
if (_item in _food) then {_obj = "Land_BakedBeans_F" createVehicle position player;_done=true;};
if (_item == "battery") then {_obj = "Land_Battery_F" createVehicle position player;_done=true;};
if (_item == "canteen") then {_obj = "Land_Canteen_F" createVehicle position player;_done=true;};
if (_item == "cereals") then {_obj = "Land_CerealsBox_F" createVehicle position player;_done=true;};
if (_item == "rice") then {_obj = "Land_RiceBox_F" createVehicle position player;_done=true;};
if (_item == "bandage") then {_obj = "Land_Bandage_F" createVehicle position player;_done=true;};
if (_item == "gascanister") then {_obj = "Land_GasCanister_F" createVehicle position player;_done=true;};
if (_item == "matches") then {_obj = "Land_Matches_F" createVehicle position player;_done=true;};
if (_item == "generator") then {_obj = "Land_Portable_generator_F" createVehicle position player;_done=true;};
if (_item in ["fuelcanister","fuelcanister_empty"]) then {_obj = "Land_CanisterFuel_F" createVehicle position player;_done=true;};

// If not custom make a suitcase because fuck logic
if (!_done) then {_obj = "Land_Suitcase_F" createVehicle position player;};

_obj setVariable ["classname",_item,true];
[false] spawn EDZC_fnc_loadInventory;