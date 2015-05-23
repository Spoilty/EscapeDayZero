_dontgoout = true;
_countdown = 0;
while {_dontgoout} do
{
	sleep 10;
	if (count players >= 1 && count players < 20) then
	{
		if (_countdown<=0) then {_dontgoout=false;};
		[[1,format ["%1 seconds until the mission starts",_countdown]],"EDZC_fnc_message",true,false] spawn BIS_fnc_MP;
		_countdown = _countdown - 10;
	} else {
		_countdown = 60;
	};
	if (count players == 20) then {_dontgoout=false;};
};

missionEnd = false;
missionEndHeli = CreateVehicle ["B_Heli_Transport_01_camo_F", [14185.5,16285.3,0.00145531], [], 0, "NONE"];
_mygroup1 = [[7950, 9667, 0], CIVILIAN, ["B_Soldier_02_f"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;
{_x moveInDriver missionEndHeli} forEach units _mygroup1;
[[missionEndHeli,_mygroup1],"EDZC_fnc_endingObjects",true,false] spawn BIS_fnc_MP;
[] spawn { while {true} do { (driver missionEndHeli) action ["lightOn", missionEndHeli];}; };

[] spawn EDZS_fnc_initRound;
[[0],"EDZC_fnc_sessionRecieved",true,false] call BIS_fnc_MP;