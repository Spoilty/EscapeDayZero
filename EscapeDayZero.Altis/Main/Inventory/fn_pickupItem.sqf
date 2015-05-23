_cur = _this select 0;
if (isNull _cur) exitWith {};
if (isNil {_cur getVariable "classname"}) exitWith {};
if (player distance _cur > 2) exitWith {};

_classname = _cur getVariable "classname";
if (_classname=="") exitWith {};

if ([true,_classname,1] call EDZC_fnc_checkItem) then
{
	[true,_classname,1] call EDZC_fnc_handleItem;
	deleteVehicle _cur;
	playSound "takeitem";
	hintSilent format ["I have picked up a item! (%1)",[_classname] call EDZC_fnc_varToStr];
} else {hint "There is no more space in my inventory!";};