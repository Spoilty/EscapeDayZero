_types = ["Lamps_Base_F", "PowerLines_base_F","Land_PowerPoleWooden_L_F"];
_onoff = _this select 0;


[[1,"ATTENTION: YOUR GAME WILL START TO LAGG FOR A COUPLE OF SECONDS NOW!"],"EDZC_fnc_message",false,false] spawn BIS_fnc_MP;

for [{_i=0},{_i < (count _types)},{_i=_i+1}] do
{
	_lamps = [0,0,0] nearObjects [_types select _i, 5000000];
	{
		sleep 0.3;
		_x setHit ["light_1_hitpoint", 0.97];
		_x setHit ["light_2_hitpoint", 0.97];
		_x setHit ["light_3_hitpoint", 0.97];
		_x setHit ["light_4_hitpoint", 0.97];
	} forEach _lamps;
};
