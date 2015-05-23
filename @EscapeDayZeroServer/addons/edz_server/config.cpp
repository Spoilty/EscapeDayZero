class DefaultEventhandlers;
class CfgPatches 
{
	class edz_server
	{
		units[] = {"C_man_1"};
		weapons[] = {};
		requiredAddons[] = {"A3_Data_F","A3_Soft_F","A3_Soft_F_Offroad_01","A3_Characters_F"};
		fileName = "edz_server.pbo";
		author[]= {"TAW_Tonic"}; 
	};
};

class CfgFunctions
{
	#include "FunctionsServer.h"
};
#include "infected\infectedsounds.hpp"