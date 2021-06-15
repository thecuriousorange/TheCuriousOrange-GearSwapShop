local bit = require('bit')

windower.register_event('keyboard', function(dik, pressed, flags)
    if bit.band(flags, 0x04) ~= 0 then
        windower.prim.set_visibility('ctrl_macros',true)
	else
		windower.prim.set_visibility('ctrl_macros',false)
    end
	if bit.band(flags, 0x02) ~= 0 then
        windower.prim.set_visibility('alt_macros',true)
	else
		windower.prim.set_visibility('alt_macros',false)
    end
	if bit.band(flags, 0x08) ~= 0 then
        windower.prim.set_visibility('win_macros',true)
	else
		windower.prim.set_visibility('win_macros',false)
    end
	if bit.band(flags, 0x016) ~= 0 then
        windower.prim.set_visibility('apps_macros',true)
	else
		windower.prim.set_visibility('apps_macros',false)
    end
end)

windower.prim.create('ctrl_macros')
windower.prim.create('alt_macros')
windower.prim.create('win_macros')
windower.prim.create('apps_macros')

windower.prim.set_texture('ctrl_macros',''..windower.windower_path..'addons/gearswap/data/images/'..player.main_job..'_'..player.sub_job..'_ctrl_macros.png')
windower.prim.set_position('ctrl_macros',0.08*windower.get_windower_settings().ui_x_res,0.055*windower.get_windower_settings().ui_y_res)
windower.prim.set_visibility('ctrl_macros',false)
windower.prim.set_color('ctrl_macros', 255, 255, 255, 255)

windower.prim.set_texture('alt_macros',''..windower.windower_path..'addons/gearswap/data/images/'..player.main_job..'_'..player.sub_job..'_alt_macros.png')
windower.prim.set_position('alt_macros',0.08*windower.get_windower_settings().ui_x_res,0.055*windower.get_windower_settings().ui_y_res)
windower.prim.set_visibility('alt_macros',false)
windower.prim.set_color('alt_macros', 255, 255, 255, 255)

windower.prim.set_texture('win_macros',''..windower.windower_path..'addons/gearswap/data/images/'..player.main_job..'_'..player.sub_job..'_win_macros.png')
windower.prim.set_position('win_macros',0.08*windower.get_windower_settings().ui_x_res,0.055*windower.get_windower_settings().ui_y_res)
windower.prim.set_visibility('win_macros',false)
windower.prim.set_color('win_macros', 255, 255, 255, 255)

windower.prim.set_texture('apps_macros',''..windower.windower_path..'addons/gearswap/data/images/'..player.main_job..'_'..player.sub_job..'_apps_macros.png')
windower.prim.set_position('apps_macros',0.08*windower.get_windower_settings().ui_x_res,0.055*windower.get_windower_settings().ui_y_res)
windower.prim.set_visibility('apps_macros',false)
windower.prim.set_color('apps_macros', 255, 255, 255, 255)