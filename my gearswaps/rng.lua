function get_sets()
	
	sets.idle={head="Oce. Headpiece +1", body="Iuitl Vest +1", hands="Umuthi Gloves", legs="Iuitl Tights", 
	feet="Fajin Boots", neck="Wiglen Gorget", waist="Flume Belt", left_ear="Sanare Earring", 
	right_ear="Ethereal Earring", left_ring="Shadow Ring", right_ring="Sheltered Ring", 
	back="Shadow Mantle",}
	
	sets.preshot={head="Sylvan Gapette +2", body="Sylvan Caban +2", hands="Iuitl Wristbands", 
	legs="Nahtirah Trousers", feet="Wurrukatte Boots", neck="Ocachi Gorget", waist="Impulse Belt", 
	left_ear="Volley Earring", right_ear="Clearview Earring", left_ring="Paqichikaji Ring", 
	right_ring="Hajduk Ring", back="Terebellum Mantle",}
	
	sets.midshot={}
	
	sets.midshot.sixhit={head="Umbani Cap", body="Kyujutsugi", hands="Manibozho Gloves", 
	legs="Nahtirah Trousers", feet="Orion Socks", neck="Ocachi Gorget", waist="Elanid Belt",
	left_ear="Volley Earring", right_ear="Clearview Earring", left_ring="Paqichikaji Ring", 
	right_ring="Hajduk Ring", back="Terebellum Mantle",}
	
end

function precast(spell)
	if spell.prefix=="/range" then
		equip(sets.preshot)
	end
end

function midcast(spell)
	if spell.prefix=="/range" then
		equip(sets.midshot[TPType])
	end
end

function aftercast(spell)
	if player.status=="Engaged" then
		equip(sets.idle)
	else
		equip(sets.idle)
	end
end

function status_change()
	if new=="engaged" then
		equip(sets.idle)
	else
		equip(sets.idle)
	end
end