_mode = _this select 0;
_item = _this select 1;
_itemAmount = _this select 2;
_ret = true;

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
		if (_amountOld+_itemAmount > edz_maxInv) then {_ret = false;};
	} else {
		_inInv = 0;
		if (count edz_inventory > 0) then {
			{_inInv = _inInv + (_x select 1);} forEach edz_inventory;
		};
		if (_inInv+_itemAmount > edz_maxInv) then {_ret = false;};
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
		if (_amountOld-_itemAmount<0) then {_ret = false;};
	} else {_ret = false;};
};

_ret;