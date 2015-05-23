_mode = _this select 0;
_message = _this select 1;

switch (_mode) do
{
	case 0: {hint parseText format ["%1",_message];};
	case 1: {systemChat format ["%1",_message];};
};