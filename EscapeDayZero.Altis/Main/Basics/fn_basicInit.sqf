/* Setup variables needed for the game */
edz_inventory = [["flare",1]];
if (isNil {profileNamespace getVariable "edz_skill";}) then {profileNamespace setVariable ["edz_skill",0];};
edz_skill = profileNamespace getVariable "edz_skill";
edz_clientReady = false;
edz_playerCount = 0;
edz_usingFlare = false;
edz_inUse = false;
edz_maxInv = 40;
edz_hunger = 0;
edz_thirst = 0;
edz_brokeLeg = false;
missionEnd = false;
messageFromServerEnding = false;

/* Send request to server */
[[player],"EDZS_fnc_login",false,false] spawn BIS_fnc_MP;
waitUntil {edz_clientReady};
waitUntil {!(isNull (findDisplay 46))};
(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call EDZC_fnc_keyHandler"];