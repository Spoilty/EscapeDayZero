_itemName = _this select 0;
_toAdd = switch (_itemName) do {
	case "coca": {player setDamage ((damage player)-0.2);player say3D "drink";systemChat "I have drunk a Coke";edz_thirst = edz_thirst - 20;};
	case "mountaindew": {player setDamage ((damage player)-0.4);player say3D "drink";systemChat "I have drunk a Can of Mountain Dew";edz_thirst = edz_thirst - 20;};
	case "bakedbeans": {player setDamage ((damage player)-0.3);player say3D "eat";systemChat "I have consumed a Can of Baked Beans";edz_hunger = edz_hunger - 60;};
	case "banana": {player setDamage ((damage player)-0.05);player say3D "eat";systemChat "I have consumed a Banana";edz_hunger = edz_hunger - 15;};
	case "apple": {player setDamage ((damage player)-0.1);player say3D "eat";systemChat "I have consumed a Apple";edz_hunger = edz_hunger - 15;};
	case "sardines": {player setDamage ((damage player)-0.2);player say3D "eat";systemChat "I have consumed a Can of Sardines";edz_hunger = edz_hunger - 17;};
	case "bandage": {player setDamage 0;systemChat "I have bandaged myself";player say3D "bandage"};
	case "rice": {player setDamage ((damage player)-0.2);player say3D "eat";systemChat "I have consumed a bag of Rice";edz_hunger = edz_hunger - 80;};
	case "cereals": {player setDamage ((damage player)-0.3);player say3D "eat";systemChat "I have consumed a box of Cereals";edz_hunger = edz_hunger - 50;};
	case "canteen": {player setDamage ((damage player)-0.4);player say3D "drink";systemChat "I have drunk water from the canteen";edz_thirst = edz_thirst - 70;};
};
[false,_itemName,1] spawn EDZC_fnc_handleItem;