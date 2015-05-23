disableSerialization;
_sound = [_this, 0, true] call BIS_fnc_param;
if (_sound) then {player say3D "zipper";};

_InventoryDialog = findDisplay 1000;
_InventoryListbox = _InventoryDialog displayCtrl 1002;
lbClear _InventoryListbox;

{
	_itemArray = _x;
	_itemName = [_itemArray select 0] call EDZC_fnc_varToStr;
	_itemAmount = _x select 1;
	_InventoryListbox lbAdd format ["%2x %1",_itemName,_itemAmount];
	_InventoryListbox lbSetData [(lbSize _InventoryListbox)-1,_itemArray select 0];
} forEach edz_inventory;