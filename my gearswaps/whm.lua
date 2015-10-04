function get_sets()
	-- include
		include('boxes.lua')
		include('organizer-lib.lua')
	-- include
	
	-- macro selection
	send_command('input /macro book 12;input /macro set 1')
	-- macro selection
	
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
	
	sets.precast.cure={main="Ababinili",
	ammo="Incantor Stone", head="Nahtirah Hat", body="Heka's Kalasiris", legs="Orsn. Pantaln. +2",
	hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -1%','Song recast delay -1',}},
	feet="Hygieia Clogs", neck="Orison Locket", waist="Fucho-no-Obi", left_ear="Nourish. Earring",
	right_ear="Nourish. Earring +1", left_ring="Prolix Ring", right_ring="Veneficium Ring", back="Pahtli Cape",}
	
	sets.precast.enhancing=set_combine(sets.precast.fc, {waist="Siegel Sash",})
	
	sets.precast.stoneskin=set_combine(sets.precast.enhancing, {head="Umuthi Hat",})
	--precast sets
	
	--midcast sets
	sets.midcast.curesolace={main="Ababinili",
	ammo="Incantor Stone", head={ name="Gende. Caubeen +1", augments={'Phys. dmg. taken -1%',}},
	body="Orison Bliaud +2", hands="Bokwus Gloves", legs="Orsn. Pantaln. +2", feet="Hygieia Clogs",
	neck="Colossus's Torque", waist="Cascade Belt", left_ear="Lifestorm Earring", right_ear="Loquac. Earring",
	back={ name="Mending Cape", augments={'Healing magic skill +7','Enha.mag. skill +9','Mag. Acc.+9',}}, 
	left_ring="Ephedra Ring", right_ring="Sirona's Ring",}
	
	sets.midcast.curemisery=set_combine(sets.midcast.curesolace, {body="Anhur Robe",})
	
	sets.midcast.enhancing={main="Beneficus", sub="Genbu's Shield", ammo="Incantor Stone", head="Umuthi Hat", body="Anhur Robe", hands="Dynasty Mitts",
	legs="Portent Pants", feet="Orsn. Duckbills +2", neck="Colossus's Torque", waist="Olympus Sash", 
	left_ear="Andoaa Earring", right_ear="Nourish. Earring +1", left_ring="Levia. Ring", right_ring="Levia. Ring",
	back={ name="Mending Cape", augments={'Healing magic skill +7','Enha.mag. skill +9','Mag. Acc.+9',}},}
	
	sets.midcast.bar=set_combine(sets.midcast.enhancing, {head="Orison Cap +2", body="Orison Bliaud +2", hands="Orison Mitts +2", legs="Cleric's Pantaln.", feet="Orsn. Duckbills +2",})
	
	sets.midcast.stoneskin=set_combine(sets.midcast.enhancing, {waist="Siegel Sash"})
	
	sets.midcast.na={main="Marin Staff", ammo="Incantor Stone", head="Orison Cap +2", body="Anhur Robe",
	hands={ name="Helios Gloves", augments={'Mag. Evasion+10','"Fast Cast"+5','INT+5 MND+5',}},
	legs={ name="Artsieq Hose", augments={'MP+30','Mag. Acc.+20','MND+7',}}, feet="Chelona Boots",
	neck="Orison Locket", waist="Ninurta's Sash", left_ear="Etiolation Earring", right_ear="Loquac. Earring",
	left_ring="Prolix Ring", right_ring="Veneficium Ring", back="Swith Cape",}
	
	sets.midcast.cursna={main="Beneficus", sub="Genbu's Shield", ammo="Incantor Stone", head="Orison Cap +2",
	body="Orison Bliaud +2", hands="Hlr. Mitts +1", legs="Cleric's Pantaln.", feet={ name="Gende. Galoshes", augments={'Phys. dmg. taken -1%',}},
	neck="Colossus's Torque", waist="Bishop's Sash", left_ear="Beatific Earring", right_ear="Loquac. Earring",
	left_ring="Ephedra Ring", right_ring="Sirona's Ring",
    back={ name="Mending Cape", augments={'Healing magic skill +7','Enha.mag. skill +9','Mag. Acc.+9',}},}
	
	sets.midcast.nuke={
	}
	
	sets.midcast.intenfeeb={main={ name="Twebuliij", augments={'MP+60','Mag. Acc.+15','MND+12',}}, sub="Mephitis Grip",
	ammo="Incantor Stone", head={ name="Artsieq Hat", augments={'MP+30','Mag. Acc.+20','MND+7',}}, body="Hlr. Briault +1",
	hands="Lurid Mitts", legs="Portent Pants", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}},
    neck="Enfeebling Torque", waist="Rumination Sash", left_ear="Lifestorm Earring", right_ear="Psystorm Earring", 
	left_ring="Globidonta Ring", right_ring="Sangoma Ring", back="Altruistic Cape",}
	
	sets.midcast.mndenfeeb={main={ name="Twebuliij", augments={'MP+60','Mag. Acc.+15','MND+12',}}, sub="Mephitis Grip",
	ammo="Incantor Stone", head={ name="Artsieq Hat", augments={'MP+30','Mag. Acc.+20','MND+7',}}, body="Vanir Cotehardie",
	hands="Lurid Mitts", legs={ name="Artsieq Hose", augments={'MP+30','Mag. Acc.+20','MND+7',}}, waist="Rumination Sash", 
	feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}}, neck="Enfeebling Torque",
	left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Globidonta Ring", right_ring="Sangoma Ring",
    back={ name="Mending Cape", augments={'Healing magic skill +7','Enha.mag. skill +9','Mag. Acc.+9',}},}
	
	sets.midcast.repose={main={ name="Twebuliij", augments={'MP+60','Mag. Acc.+15','MND+12',}}, sub="Mephitis Grip", 
	ammo="Incantor Stone", head={ name="Artsieq Hat", augments={'MP+30','Mag. Acc.+20','MND+7',}}, body="Vanir Cotehardie",
	hands="Lurid Mitts", legs="Hlr. Pantaln. +1", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}},
	neck="Divine Torque", waist="Bishop's Sash", left_ear="Beatific Earring", right_ear="Divine Earring",
	left_ring="Globidonta Ring", right_ring="Sangoma Ring", back="Altruistic Cape",}
	
	sets.midcast.divine={main={ name="Twebuliij", augments={'MP+60','Mag. Acc.+15','MND+12',}}, sub="Mephitis Grip", 
	ammo="Incantor Stone", head={ name="Artsieq Hat", augments={'MP+30','Mag. Acc.+20','MND+7',}}, body="Vanir Cotehardie",
	hands="Lurid Mitts", legs="Hlr. Pantaln. +1", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}},
	neck="Divine Torque", waist="Bishop's Sash", left_ear="Beatific Earring", right_ear="Divine Earring",
	left_ring="Globidonta Ring", right_ring="Sangoma Ring", back="Altruistic Cape",}
	--midcast sets
	
	--aftercast sets
	sets.idle={main="Bolelabunga", sub="Genbu's Shield", ammo="Vanir Battery", body="Respite Cloak",
	hands="Serpentes Cuffs", legs="Assid. Pants +1", feet="Serpentes Sabots", neck="Twilight Torque",
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
		elseif spell.type=="Enhancing Magic" and spell.english~="Stoneskin" then
			equip(sets.precast.enhancing)
		elseif spell.type=="Enhancing Magic" and spell.english=="Stoneskin" then
			equip(sets.precast.stoneskin)
		else
			equip(sets.precast.fc)
		end
	end
	
end

function midcast(spell)
	if spell.prefix=="/magic" then
		if spell.skill=="Enhancing Magic" then
			if spell.english:contains("Bar") then
				equip(sets.midcast.bar)
			elseif spell.english=="Stoneskin" then
				equip(sets.midcast.stoneskin)
			else
				equip(sets.midcast.enhancing)
			end
		end
		if spell.english:contains("na") or spell.english:contains("Erase") or spell.english:contains("Sacrifice") or spell.english:contains("Esuna") and spell.english~="Cursna" then
			equip(sets.midcast.na)
		elseif spell.english=="Cursna" then
			equip(sets.midcast.cursna)
		end
		if spell.english:contains("Cure") or spell.english:contains("Cura") then
			if buffactive['Afflaetus Solace'] then
				equip(sets.midcast.curesolace)
			else
				equip(sets.midcast.curemisery)
			end
		end
		if spell.skill=="Enfeebling Magic" then
			if spell.type=="Black Magic" then
				equip(sets.midcast.intenfeeb)
			else
				equip(sets.midcast.mndenfeeb)
			end
		end
		if spell.skill=="Divine Magic" then
			if spell.english=="Repose" then
				equip(sets.midcast.repose)
			else
				equip(sets.midcast.divine)
			end
		end
		if spell.type=="Elemental Magic" then
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