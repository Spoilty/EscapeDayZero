_itemsNormal = [
	["flare","Land_Suitcase_F",false,false,false,50],
	["lockpick","Land_Suitcase_F",false,false,false,20],
	["coca","Land_BottlePlastic_V1_F",false,false,false,15],
	["mountaindew","Land_BottlePlastic_V1_F",false,false,false,10],
	["bakedbeans","Land_BakedBeans_F",false,false,false,15],
	["banana","Land_BakedBeans_F",false,false,false,20],
	["apple","Land_BakedBeans_F",false,false,false,15],
	["sardines","Land_BakedBeans_F",false,false,false,15],
	["fuelcanister","Land_CanisterFuel_F",false,false,false,10],
	["fuelcanister_empty","Land_CanisterFuel_F",false,false,false,70],
	["morphine","Land_Suitcase_F",false,false,false,15],
	["bandage","Land_Bandage_F",false,false,false,16],
	["rice","Land_RiceBox_F",false,false,false,20],
	["matches","Land_Matches_F",false,false,false,40],
	["canteen","Land_Canteen_F",false,false,false,20],
	["canteen_empty","Land_Canteen_F",false,false,false,90],
	["gascanister","Land_GasCanister_F",false,false,false,30],
	["cereals","Land_CerealsBox_F",false,false,false,10],
	["battery","Land_Battery_F",false,false,false,7],
	["generator","Land_Portable_generator_F",false,false,false,10],

	// Weapons
	["srifle_DMR_06_camo_khs_F","",true,false,false,8],
	["hgun_PDW2000_Holo_F","",true,false,false,8],
	["arifle_MXC_Black_F","",true,false,false,8],
	["arifle_MXM_Hamr_pointer_F","",true,false,false,8],
	["arifle_Katiba_GL_ACO_pointer_snds_F","",true,false,false,8],
	["hgun_P07_F","",true,false,false,30],

	// Ammo
	["20Rnd_762x51_Mag","",false,true,false,35],
	["30Rnd_9x21_Mag","",false,true,false,35],
	["30Rnd_65x39_caseless_mag_Tracer","",false,true,false,35],
	["30Rnd_65x39_caseless_green_mag_Tracer","",false,true,false,35],
	["30Rnd_9x21_Mag","",false,true,false,35]
];

_count = count _itemsNormal;
_r = floor(random _count);
_ret = _itemsNormal select _r;
_ret;