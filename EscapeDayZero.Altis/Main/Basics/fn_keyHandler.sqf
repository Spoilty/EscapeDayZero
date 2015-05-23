_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;

_interruptionKeys = [17,30,31,32];
if(_code in _interruptionKeys) exitWith {};

switch (_code) do {
	case 34: {if (edz_inUse) exitWith {};closeDialog 0;createDialog "edz_inventory";};
	case 20: {if (edz_inUse) exitWith {};[cursorTarget] spawn EDZC_fnc_pickupItem;};
};

false;