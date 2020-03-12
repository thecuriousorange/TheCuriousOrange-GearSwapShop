packets = require('packets')
hastetype="none"
march=0
windower.raw_register_event('incoming chunk', function(id,original,modified,injected,blocked)
    if id == 0x28 then
        local action = packets.parse('incoming', original)
        if action['Category'] == 4 then -- Category 4 is spell finish
			--print(action['Param'])
            if player.id == action['Target 1 ID'] then				
                if action['Param'] == 57 then --haste
                    hastetype="Haste"
					add_to_chat(206,"hastetype:"..hastetype.."")
                elseif action['Param'] == 511 --[[haste II]] or action['Param'] == 710 --[[erratic flutter]]then
                    hastetype="Haste II"
					add_to_chat(206,"hastetype:"..hastetype.."")
				elseif action['Param'] == 845 --[[flurry]] then
					hastetype="Flurry"
					add_to_chat(206,"hastetype:"..hastetype.."")
				elseif action['Param'] == 846 --[[flurry II]] then
					hastetype="Flurry II"
					add_to_chat(206,"hastetype:"..hastetype.."")
                end				
            end
			
			for i,v in pairs(action) do
                if string.match(i, 'Target %d+ ID') then
                    if player.id == v then
                        if action['Param'] == 420 then
							march=march+1
							add_to_chat(206, "Victory March")							
						elseif action['Param'] == 419 then
							march=march+1
							add_to_chat(206, "Advancing March")
						elseif action['Param'] == 417 then
							march=march+1
							add_to_chat(206, "Honor March")
						end
					end
				end
			end
        elseif action['Category'] == 13 then -- Category 13 is Avatar TP finish
            for i,v in pairs(action) do
                if string.match(i, 'Target %d+ ID') then
                    if player.id == v then
                        if action['Param'] == 595 then -- Change 100 for whatever gets printed, then erase the print line when you get what you want
                            hastetype="Hastega"
							add_to_chat(206,"hastetype:"..hastetype.."")
						elseif action['Param'] == 602 then
							hastetype="Hastega II"
							add_to_chat(206,"hastetype:"..hastetype.."")
                        end
                    end
                end
            end
		end
    end	
end)

function effectiveHaste(equiphaste)
	local equiphaste=27
    local jahaste = 0
    local magichaste = 0

    if equiphaste > 25 then
        equiphaste = 25
    end

    --JA. Caps at 25
    if buffactive['Haste Samba'] then
        jahaste = jahaste + 5
    end
    if jahaste > 25 then
        jahaste = 25
    end

    -- Magical. Caps at 43.5
    if buffactive[33] then --Assume Haste2 since we have flutter
		if hastetype=="Haste" or hastetype=="Hastega" then
			magichaste = magichaste + 15
		elseif hastetype=="Haste II" or hastetype=="Hastega II" then
			magichaste = magichaste + 30		
		end
    end
    if buffactive.march then --12 per march as worst case, really scrub brd
        magichaste = magichaste + (15*buffactive.march)
    end
    if buffactive[580] then --Indihaste, assume Dunna/+5 at least
        magichaste = magichaste + 35
    end
    if buffactive['Mighty Guard'] then
        magichaste = magichaste + 15
    end
    if buffactive.embrava then
        magichaste = magichaste + 22
    end
    if magichaste > 43.5 then
        magichaste = 43.5
    end
    
    local totalHaste = equiphaste + jahaste + magichaste
    if totalHaste > 80 then
        totalHaste = 80
    end
	print(totalHaste)
    return totalHaste
	
end