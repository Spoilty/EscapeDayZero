group (driver vehicle player) addWaypoint [[2380.47,22267.8,0], 0];
sleep 5;
playSound "ending";
sleep 12;
missionEndHeli setVehicleLock "LOCKED";
sleep 30;
titleText ["Thanks for playing Escape Day Zero.","BLACK OUT",10];
sleep 10;
titleText ["Thanks for playing Escape Day Zero. (Made by OPTiX)","BLACK FADED",999999999999999];
sleep 40;
[[],"EDZC_fnc_endMissionMan",true,false] spawn BIS_fnc_MP;