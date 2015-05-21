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
	sets.precast.fc={main="Marin Staff", ammo="Incantor Stone", head="Nahtirah Hat", body="Anhur Robe",
	hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -1%','Song recast delay -1',}},
	legs={ name="Artsieq Hose", augments={'MP+30','Mag. Acc.+20','MND+7',}}, feet="Chelona Boots",
	neck="Orison Locket", waist="Fucho-no-Obi", left_ear="Ethereal Earring", right_ear="Loquac. Earring",
	left_ring="Prolix Ring", right_ring="Veneficium Ring", back="Swith Cape",}
	
	sets.precast.cure={main={ name="Tamaxchi", augments={'Occ. atk. twice+8','Enmity-10',}}, sub="Sors Shield",
	ammo="Incantor Stone", head="Nahtirah Hat", body="Heka's Kalasiris", legs="Orsn. Pantaln. +2",
	hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -1%','Song recast delay -1',}},
	feet="Hygieia Clogs", neck="Orison Locket", waist="Fucho-no-Obi", left_ear="Ethereal Earring",
	right_ear="Loquac. Earring", left_ring="Prolix Ring", right_ring="Veneficium Ring", back="Pahtli Cape",}
	--precast sets
	
	--midcast sets
	sets.midcast.curesolace={main={ name="Tamaxchi", augments={'Occ. atk. twice+8','Enmity-10',}}, sub="Sors Shield",
	ammo="Incantor Stone", head={ name="Gende. Caubeen +1", augments={'Phys. dmg. taken -1%',}},
	body="Orison Bliaud +2", hands="Bokwus Gloves", legs="Orsn. Pantaln. +2", feet="Hygieia Clogs",
	neck="Colossus's Torque", waist="Cascade Belt", left_ear="Lifestorm Earring", right_ear="Loquac. Earring",
	back={ name="Mending Cape", augments={'Healing magic skill +7','Enha.mag. skill +9','Mag. Acc.+9',}}, 
	left_ring="Ephedra Ring", right_ring="Sirona's Ring",}
	
	sets.midcast.curemisery=set_combine(sets.midcast.curesolace, {body="Vanir Cotehardie",})
	
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
	sets.idle={main="Bolelabunga", sub="Genbu's Shield", ammo="Vanir Battery", body="Respite Cloak",
	hands="Serpentes Cuffs", legs="Nares Trews", feet="Serpentes Sabots", neck="Twilight Torque",
	waist="Fucho-no-Obi", left_ear="Ethereal Earring", right_ear="Sanare Earring", left_ring="Shadow Ring",
	right_ring="Sheltered Ring", back="Shadow Mantle",}
	
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

function file_unload(new_job)
	windower.send_command('boxesoff')
end