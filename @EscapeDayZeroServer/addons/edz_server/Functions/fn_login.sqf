_sender = _this select 0;
if (isNil "gameStatus") then {
	gameStatus=0;
	players=[];
	[] spawn EDZS_fnc_waitForPlayers;
};

if (gameStatus==0) then {
	if (!(_sender in players)) then {players pushBack _sender;};
	[[2,count players],"EDZC_fnc_sessionRecieved",_sender,false] call BIS_fnc_MP;
	[[3,count players],"EDZC_fnc_sessionRecieved",true,false] call BIS_fnc_MP;
} else {
	[[1],"EDZC_fnc_sessionRecieved",_sender,false] call BIS_fnc_MP;
};