_code = _this select 0;

if (isNil "ort1") then {
ort1=false;
ort2=false;
ort3=false;
ort4=false;
ort5=false;
ort6=false;
ort7=false;
ort8=false;
ort9=false;
ort10=false;
ort11=false;
lootAmount=0;
};

_boolean = switch (_code) do {
	case "ort1": {ort1};
	case "ort2": {ort2};
	case "ort3": {ort3};
	case "ort4": {ort4};
	case "ort5": {ort5};
	case "ort6": {ort6};
	case "ort7": {ort7};
	case "ort8": {ort8};
	case "ort9": {ort9};
	case "ort10": {ort10};
	case "ort11": {ort11};
};

if(_boolean) exitWith {diag_log "Requested Lootupdate for already spawned region!";};

switch (_code) do {
	case "ort1": {ort1=true;};
	case "ort2": {ort2=true;};
	case "ort3": {ort3=true;};
	case "ort4": {ort4=true;};
	case "ort5": {ort5=true;};
	case "ort6": {ort6=true;};
	case "ort7": {ort7=true;};
	case "ort8": {ort8=true;};
	case "ort9": {ort9=true;};
	case "ort10": {ort10=true;};
	case "ort11": {ort11=true;};
};
//(call compileFinal _code) = true;

_backpacks = ["","","","",""];

_houseList = getMarkerPos _code nearObjects ["House",800];
{
	_r = floor(random 100);
    if (_r<70) then
    {
  		_c = 0;
  		while { format ["%1", _x buildingPos _c] != "[0,0,0]" } do {_c = _c + 1};
  		while {_c > 0} do {
  			_oneMore = floor(random 100);
  			if (_oneMore<=70) then
  			{
	  			if (_c > 0) then
	     		{
	     			_ranNum = floor(random _c);
	     			_randomItem = [_x] call EDZS_fnc_randomItem;
	     			_zItemName = _randomItem select 0;
	     			_zClassname = _randomItem select 1;
	     			_zIsWeapon = _randomItem select 2;
	     			_zIsMagazine = _randomItem select 3;
	     			_zIsItem = _randomItem select 4;
	     			_zChance = _randomItem select 5;
	     			_z = floor(random 100);
	     			if (_z<=_zChance) then {
	     				lootAmount = lootAmount + 1;
		      	  		if (!_zIsWeapon AND !_zIsMagazine AND !_zIsItem) then
		      	  		{
		      	  			_crate = _zClassname createVehicle [0,0,0];
			      	  		_crate setPos (_x buildingPos _ranNum);
			      	  		_crate setVariable ["classname",_zItemName, true];
			      	  		diag_log format ["Spawned item of type %2 at %1 [ID=%3]",getPos _crate,_randomItem select 0,lootAmount];
		      	  		};
		      	  		if (_zIsWeapon) then {
		      	  			_gwh = "groundweaponholder" createVehicle [0,0,0];
		      	  			_gwh setPos (_x buildingPos _ranNum);
		      	  			_gwh addWeaponCargoGlobal [_zItemName,1];
		      	  			diag_log format ["Spawned item of type %2 at %1 [ID=%3]",getPos _gwh,_randomItem select 0,lootAmount];
		      	  		};
		      	  		if (_zIsMagazine) then {
		      	  			_gwh = "groundweaponholder" createVehicle [0,0,0];
		      	  			_gwh setPos (_x buildingPos _ranNum);
		      	  			_gwh addMagazineCargoGlobal [_zItemName,1];
		      	  			diag_log format ["Spawned item of type %2 at %1 [ID=%3]",getPos _gwh,_randomItem select 0,lootAmount];
		      	  		};
		      	  		if (_zIsItem) then {
		      	  			_gwh = "groundweaponholder" createVehicle [0,0,0];
		      	  			_gwh setPos (_x buildingPos _ranNum);
		      	  			_gwh addItemCargoGlobal [_zItemName,1];
		      	  			_backpackchance = floor(random 100);
		      	  			if (_backpackchance<=20) then {
		      	  				_whichone = floor(random (count _backpacks));
		      	  				_backpackToAdd = _backpacks select _whichone;
		      	  				_gwh addBackPackCargoGlobal _backpackToAdd;
		      	  			};
		      	  			diag_log format ["Spawned item of type %2 at %1 [ID=%3]",getPos _gwh,_randomItem select 0,lootAmount];
		      	  		};
		      	  	};
	     		};
	     	};
     		_c = _c - 1;
     	};
   	};
  	//sleep 0.1;
} forEach _houseList;

diag_log "Spawning Loot...";