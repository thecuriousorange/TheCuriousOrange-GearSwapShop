function get_sets()
	-- include
		include('boxes.lua')
	-- include

	--variables
	Weaponry="club"
	
	sets.Weaponry= T{}
	--variables

	--baseset names
	sets.precast={}
	sets.midcast={}
	sets.tp={}
	--baseset names
	
	--precast sets
	sets.precast.fc={
	}
	
	sets.precast.cure={
	}
	--precast sets
	
	--midcast sets
	sets.midcast.curesolace={
	}
	
	sets.midcast.curemisery={
	}
	
	sets.midcast.bar={
	}
	
	sets.midcast.na={
	}
	
	sets.midcast.enhancing={
	}
	
	sets.midcast.nuke={
	}
	
	sets.midcast.intenfeeb={
	}
	
	sets.midcast.mndenfeeb={
	}
	
	sets.midcast.repose={
	}
	
	sets.midcast.divine={
	}	
	--midcast sets
	
	--aftercast sets
	sets.idle={
	}
	
	sets.tp.club={
	}
	
	sets.tp.staff={
	}
	--aftercast sets
	
	--dt sets
	sets.pdt={
	}
	
	sets.mdt={
	}
	--dt sets
end

function precast(spell)
	if spell.prefix=="/magic" then
		if spell.english:contains("Cure") or spell.english:contains("Cura") then
			equip(sets.precast.cure)
		else
			equip(sets.precast.fc)
		end
	end
	
end

function midcast(spell)
	if spell.prefix=="/magic" then
		if spell.type=="EnhancingMagic" then
			if spell.english:contains("Bar") then
				equip(sets.midcast.bar)
			else
				equip(sets.midcast.enhancing)
			end
		end
		if spell.english:contains("na") or spell.english:contains("Erase") or spell.english:contains("Sacrifice") or spell.english:contains("Esuna") then
			equip(sets.midcast.na)
		end
		if spell.english:contains("Cure") or spell.english:contains("Cura") then
			if buffactive['Afflaetus Solace'] then
				equip(sets.midcast.curesolace)
			else
				equip(sets.midcast.curemisery)
			end
		end
		if spell.type=="EnfeeblingMagic" then
			if spell.type=="BlackMagic" then
				equip(sets.midcast.intenfeeb)
			else
				equip(sets.midcast.mndenfeeb)
			end
		end
		if spell.type=="DivineMagic" then
			if spell.english=="Repose" then
				equip(sets.midcast.repose)
			else
				equip(sets.midcast.divine)
			end
		end
		if spell.type=="ElementalMagic" then
			equip(sets.midcast.nuke)
		end		
	end
end

function aftercast(spell)
	if player.status=="engaged" then
		equip(sets.tp[Weaponry])
	else
		equip(sets.idle)
	end
end

function status_change(new,old)
	if new=="engaged" then
		equip(sets.tp[Weaponry])
	else
		equip(sets.idle)
	end
end

function self_command(command)
	if command=="club" then
		Weaponry="club"
	elseif command=="staff" then
		Weaponry="staff"
	end
end

function unload(new_job)
	windower.send_command('boxesoff')
end