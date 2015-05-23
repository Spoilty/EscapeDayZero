gameStatus = 1;
_SideHQ = createCenter east;
//forceWeatherChange;
[] spawn EDZS_fnc_turnOffLights;
zombieCount = 0;
zombies = [];
_toSet = [];

_types = ["Land_i_House_Big_02_V1_F","Land_i_House_Big_02_V2_F","Land_i_House_Big_02_V3_F","Land_i_House_Big_01_V1_F","Land_i_House_Big_01_V2_F","Land_i_House_Big_01_V3_F","Land_i_Stone_HouseSmall_V1_F","Land_i_Stone_HouseSmall_V2_F","Land_i_Stone_HouseSmall_V3_F"];

for [{_i=0},{_i < (count _types)},{_i=_i+1}] do
{
	_houses = [0,0,0] nearObjects [_types select _i, 20000];
	{
		_r = floor(random 100);
		if (_r<=10 && zombieCount <= 5) then {
			if (count ([_x] call EDZS_fnc_getBuildingPositions) > 0) then
			{
				_spawns = [_x] call EDZS_fnc_getBuildingPositions;
				_group = createGroup east;
				_unit = _group createUnit ["O_G_Soldier_lite_F",_spawns select 0, [], 0, "FORM"];
				zombieCount = zombieCount + 1;
				zombies pushBack _unit;
				_unit spawn INF_fnc_infecthim;
				_r = floor (random 7)+1;
				if (_r==1) then {_toSet pushBack [_unit,"Infected\Textures\z1.jpg"];};
				if (_r==2) then {_toSet pushBack [_unit,"Infected\Textures\z2.jpg"];};
				if (_r==3) then {_toSet pushBack [_unit,"Infected\Textures\z3.jpg"];};
				if (_r==4) then {_toSet pushBack [_unit,"Infected\Textures\z4.jpg"];};
				if (_r==5) then {_toSet pushBack [_unit,"Infected\Textures\z5.jpg"];};
				if (_r==6) then {_toSet pushBack [_unit,"Infected\Textures\z6.jpg"];};
				if (_r==7) then {_toSet pushBack [_unit,"Infected\Textures\z7.jpg"];};
			};
		};
	} forEach _houses;
};
[[_toSet],"EDZC_fnc_setTexture",players select 0,false] spawn BIS_fnc_MP;