_answer = _this select 0;
_info = [_this, 1, ""] call BIS_fnc_param;
switch (_answer) do {
	case 0:
	{
		edz_clientReady = true;
		[] spawn EDZC_fnc_ambientloop;
		skipTime 12;
		1 setOvercast 1;
		1 setRain 1;
		1 setFog 0.7;
		1337 cutText ["ESCAPE DAY ZERO","BLACK IN",15];
		["ESCAPE DAY ZERO" ,
		"3:39 am, 02.10.2019" ,
		"Kavala City, Altis"
		] spawn BIS_fnc_infoText;
		[] spawn EDZC_fnc_survival;
		waitUntil {(player in missionEndHeli) || (missionEnd)};
		{[[],"EDZC_fnc_gameEndWinner",_x,false] spawn BIS_fnc_MP;} forEach crew missionEndHeli;
	};

	case 1:
	{
		titleText ["The lobby is already playing! Come back later!","BLACK FADED"];
	};

	case 2:
	{
		edz_playerCount = _info;
		while {!edz_clientReady} do {sleep 1;titleText [format ["Waiting for more players %1/20. The game will start if the lobby is full or atleast 5 players are connected and 60 seconds have passed. ",edz_playerCount],"BLACK FADED"];};waitUntil {edz_clientReady};titleFadeOut 0;
	};

	case 3:
	{
		edz_playerCount = _info;
	};
};