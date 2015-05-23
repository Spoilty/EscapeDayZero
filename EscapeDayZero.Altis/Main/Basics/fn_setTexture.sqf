_texturesToSet = _this select 0;

{
	(_x select 0) setObjectTextureGlobal [0,_x select 1];
} forEach _texturesToSet;