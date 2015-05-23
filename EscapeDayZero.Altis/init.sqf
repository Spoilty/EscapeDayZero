titleText ["","BLACK FADED"];
sleep 3;
enableSaving [false, false];
onPlayerDisconnected {[[player],"EDZS_fnc_logout",false,false] spawn BIS_fnc_MP;};
execVM "Main\Basics\fn_basicInit.sqf";