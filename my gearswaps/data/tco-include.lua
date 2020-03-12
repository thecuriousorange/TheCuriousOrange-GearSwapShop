include('boxes.lua')
include('skillchain-elements.lua')

function file_unload(new_job)
	windower.send_command('boxesoff')
end