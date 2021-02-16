--Config

Config              = {}

Config.Locale       = 'en'

Config.Zones = {
    DrugsCraft =	    {x = 3369.95,	y = 5490.37,	z= 22.32},
	DrugsCraft2 =	    {x = -486.07,	y = 1580.23,	z= 371.05},
	DrugsCraft3 =	    {x = 2864.71,	y = 1629.15,	z= 22.98},
	DrugsCraft4 =	    {x = -486.07,	y = 1580.23,	z= 371.05},
    DrugsPackage =		{x = -1618.35,	y = 3180.84,	z= 30.32},
	DrugsPackage2 =		{x = 2665.14,	y = -861.5,	    z= 26.83},
	DrugsPackage3 =		{x = -473.13,	y = 6098.57,	z= 29.74},
	DrugsPackage4 =		{x = 1570.44,	y = -2176.8,	z= 77.42}
}

Config.general_config_settings = {
	--ESX
	esx                      = 'hsuiwsdSAD587:479582sqeqesd_dbcuwq', -- default : esx:getSharedObject
	-- whitelist job ( see all drugs )
	acces_to_all_drugs       = {
		["lostmc"] = true,
		["rusmafie"] = true,
		["lafamilia"] = true,
		["taxi"] = true,
	},
    -- draw3dtext settings
    draw_text                = '[E] Interakce',
	-- marker settings
	marker_drawDistace       = 10,
	--big marker
	ZoneSize_bigMarker       = {x = 5.0, y = 5.0, z = 0.7},
	ZoneColorG_bigMarker     = {r = 100, g = 204, b = 100},
	MarkerType_bigMarker     = 1,
	--small marker
	ZoneSize_smallMarker     = {x = 0.7, y = 0.7, z = 0.7},
	ZoneColorO_smallMarker   = {r = 255, g = 204, b = 100},
	ZoneColorG_smallMarker   = {r = 100, g = 204, b = 100},
	MarkerType_smallMarker   = 22,
}