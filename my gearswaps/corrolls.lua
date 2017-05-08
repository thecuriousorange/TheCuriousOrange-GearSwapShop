packets = require('packets')


rolls = L{97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,390,391} -- fill this with the ability ID of all rolls...

windower.register_event('incoming chunk', function(id,data)

	if id == 0x28 then
		local act = packets.parse('incoming', data)
		local me = windower.ffxi.get_player().id -- you can just use player.id in gearswap
		
		if act['Category'] == 6 and rolls:contains(act['Param']) then
			--check here if act['Actor'] is in your party if you want
			
			for i = 1, act['Target Count'], 1 do
				if act['Target %d ID':format(i)] == me then
					add_to_chat(207,"Rolls %d set to %d":format(act['Param'], act['Target %d Action 1 Param':format(i)]))
				end			
			end
		
		end
	end



end)