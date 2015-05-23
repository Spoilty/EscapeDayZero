_mode = _this select 0;
_item = _this select 1;
_itemAmount = _this select 2;

if (_mode) then
{
	_found = false;
	_index = -1;
	_amountOld = 0;
	{
		if (!_found) then {
			_index = _index + 1;
			if (_item == _x select 0) then {_found = true;_amountOld = _x select 1;};
		};
	} forEach edz_inventory;
	if (_found) then
	{
		edz_inventory set [_index,[_item,_amountOld+_itemAmount]];
	} else {
		edz_inventory pushBack [_item,_itemAmount];
	};
} else {
	_found = false;
	_index = -1;
	_amountOld = 0;
	{
		if (!_found) then {
			_index = _index + 1;
			if (_item == _x select 0) then {_found = true;_amountOld = _x select 1;};
		};
	} forEach edz_inventory;
	if (_found) then
	{
		edz_inventory set [_index,[_item,_amountOld-_itemAmount]];
		if (edz_inventory select _index select 1 <= 0) then {edz_inventory deleteAt _index;};
	};
};