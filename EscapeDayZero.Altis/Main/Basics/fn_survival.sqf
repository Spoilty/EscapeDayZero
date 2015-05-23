[] spawn
{
	while {true} do
	{
		sleep 60;
		edz_hunger = edz_hunger + 3;

		if (edz_hunger >= 0 AND edz_hunger < 30) then {};
		if (edz_hunger >= 30 AND edz_hunger < 60) then {systemChat "I am feeling hungry.";};
		if (edz_hunger >= 60 AND edz_hunger < 80) then {systemChat "I am very hungry.";};
		if (edz_hunger >= 80 AND edz_hunger < 100) then {systemChat "I am about to die of starvation.";};
		if (edz_hunger > 100) then {player setDamage ((damage player)+0.2)};
		if (edz_hunger > 150) then {player setDamage 1;};
	};
};
[] spawn
{
	while {true} do
	{
		sleep 60;
		edz_thirst = edz_thirst + 4;

		if (edz_thirst >= 0 AND edz_thirst < 30) then {};
		if (edz_thirst >= 30 AND edz_thirst < 60) then {systemChat "I am thristy.";};
		if (edz_thirst >= 60 AND edz_thirst < 80) then {systemChat "I am very thristy.";};
		if (edz_thirst >= 80 AND edz_thirst < 100) then {systemChat "I am about to die of dehydration.";};
		if (edz_thirst > 100) then {player setDamage ((damage player)+0.2)};
		if (edz_thirst > 150) then {player setDamage 1;};
	};
};

getStance = {
    private ["_result","_unit","_animState","_animStateChars","_animP"];
    _unit = _this;
    _animState = animationState _unit;
    _animStateChars = toArray _animState;
    _animP = toUpper (toString [_animStateChars select 5,_animStateChars select 6,_aniMStateChars select 7]);
    _result = "UP";
    switch (_animP) do {
        case "ERC": {_result = "UP"};
        case "KNL": {_result = "MIDDLE"};
        case "PNE": {_result = "DOWN"};
        default {_result = "UP"};
    };
    _result
};

[] spawn
{
	while {true} do
	{
		sleep 0.5;
		if ((player call getStance) in ["UP","MIDDLE"] && edz_brokeLeg) then {
			player switchMove "AmovPpneMstpSrasWrflDnon";
		};
	};
};