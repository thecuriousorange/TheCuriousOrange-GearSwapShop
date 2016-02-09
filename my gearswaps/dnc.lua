function get_sets()
	include('organizer-lib.lua')
	--indecies
	sets.TPSet_Aray={}
	sets.TPSet_Aray.index={'DD','ACC','EVA','HYBRID','pdt','mdt'}
	TPSet_Array=1
	
	sets.TPType_Aray={}
	sets.TPType_Aray.index={'lowhaste','medhaste','highhaste'}
	TPType_Aray=1
	
	sets.IdleType_Aray={}
	sets.IdleType_Aray.index={'regen','pdt'}
	IdleType_Aray=1	
	--indecies
	
	--basesets
	sets.idle={}
	sets.tp={}
	sets.hybrid={}
	sets.acc={}
	sets.ws={}
	sets.eva={}
	sets.ja={}
	sets.precast={}
	sets.midcast={}
	--basesets
	
	--augmented gear
	taeonhead={ name="Taeon Chapeau", augments={'Accuracy+23','"Triple Atk."+2','VIT+10',}}
	taeonbody={ name="Taeon Tabard", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','Weapon skill damage +2%',}}
	taeonhands={ name="Taeon Gloves", augments={'Accuracy+16 Attack+16','"Triple Atk."+2','Crit. hit damage +3%',}}
	taeonlegs={ name="Taeon Tights", augments={'Accuracy+23','"Triple Atk."+2',}}
	taeonfeet={ name="Taeon Boots", augments={'Accuracy+19 Attack+19','"Triple Atk."+2','Crit. hit damage +2%',}}
	--augmented gear
	
	sets.tp.lowhaste={main="Izhiikoh", sub={ name="Atoyac", augments={'Occ. atk. twice+8','Weapon skill damage +2%',}},
	ammo="Ginsen", head=taeonhead, body=taeonbody, hands=taeonhands, legs=taeonlegs, feet=taeonfeet, neck="Asperity Necklace",
	waist="Shetal Stone", left_ear="Dudgeon Earring", right_ear="Heartseeker Earring", left_ring="Epona's Ring", right_ring="Rajas Ring",
	back={ name="Toetapper Mantle", augments={'"Store TP"+2','"Dual Wield"+2','"Rev. Flourish"+24','Weapon skill damage +4%',}},}
	
	sets.tp.medhaste= set_combine(sets.tp.lowhaste, {left_ear="Suppanomimi", right_ear="Brutal Earring", waist="Windbuffet Belt",})
	
	sets.tp.highhaste= set_combine(sets.tp.medhaste, {left_ear="Suppanomimi", right_ear="Brutal Earring", waist="Windbuffet Belt",})
	
	--ws sets
	sets.ws["Dancing Edge"]={ammo="Ginsen", waist="Fotia Belt", left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
	right_ear="Brutal Earring", left_ring="Epona's Ring", right_ring="Ramuh Ring", neck="Fotia Gorget", head=taeonhead, body=taeonbody,
    back={ name="Toetapper Mantle", augments={'"Store TP"+2','"Dual Wield"+2','"Rev. Flourish"+24','Weapon skill damage +4%',}},
	hands=taeonhands, legs=taeonlegs, feet=taeonfeet,}
	
	sets.ws["Evisceration"]={ammo="Ginsen", waist="Fotia Belt", left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
	right_ear="Brutal Earring", left_ring="Epona's Ring", right_ring="Ramuh Ring", neck="Fotia Gorget", head=taeonhead, body=taeonbody,
    back={ name="Toetapper Mantle", augments={'"Store TP"+2','"Dual Wield"+2','"Rev. Flourish"+24','Weapon skill damage +4%',}},
	hands=taeonhands, legs=taeonlegs, feet=taeonfeet,}
	
	sets.ws["Rudras Storm"]={ammo="Ginsen", waist="Fotia Belt", left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
	right_ear="Brutal Earring", left_ring="Epona's Ring", right_ring="Ramuh Ring", neck="Fotia Gorget", head=taeonhead, body=taeonbody,
    back={ name="Toetapper Mantle", augments={'"Store TP"+2','"Dual Wield"+2','"Rev. Flourish"+24','Weapon skill damage +4%',}},
	hands=taeonhands, legs=taeonlegs, feet=taeonfeet,}
	
	sets.ws["Pyrrhic Kleos"]={ammo="Ginsen", waist="Fotia Belt", left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
	right_ear="Brutal Earring", left_ring="Epona's Ring", right_ring="Ifrit Ring", neck="Fotia Gorget", head=taeonhead, body=taeonbody,
    back={ name="Toetapper Mantle", augments={'"Store TP"+2','"Dual Wield"+2','"Rev. Flourish"+24','Weapon skill damage +4%',}},
	hands=taeonhands, legs=taeonlegs, feet=taeonfeet,}
	--ws sets
	
	--ja sets
	
	--ja sets
	
	--idle sets
	sets.idle.regen={}
	
	sets.idle.pdt={}
	--idle sets
	
	--hybrid sets
	sets.hybrid.lowhaste={}
	
	sets.hybrid.medhaste={}
	
	sets.hybrid.highhaste={}
	--hybrid sets
	
	--magic/ninjutsu sets
	sets.precast.magic={}
	
	sets.precast.nin={}
	
	sets.midcast.magic={}
	
	sets.midcast.nin={}
	--magic/ninjutsu sets
	
	--damage mitigation sets
	
	--damage mitigation sets
end

function precast(spell)
	if spell.prefix=="/weaponskill" then
		equip(sets.ws[spell.english])
	elseif spell.prefix=="/jobability" then
		equip(sets.ja[spell.english])
	elseif spell.prefix=="/magic" then
		equip(sets.precast.magic)
	elseif spell.prefix=="/ninjutsu" then
		equip(sets.precast.nin)
	end
end

function midcast(spell)
	if spell.prefix=="/magic" then
		equip(sets.midcast.magic)
	elseif spell.prefix=="/ninjutsu" then
		equip(sets.midcast.nin)
	end
end

function aftercast(spell)
	status_change(player.status)
end

function status_change(new,old)
	if new=="Engaged" then
		if TPSet=="DD" then
			equip(sets.tp[sets.TPType_Aray[TPType_Aray]])
		elseif TPSet=="ACC" then
			equip(sets.acc[sets.TPType_Aray[TPType_Aray]])
		elseif TPSet=="EVA" then
			equip(sets.eva[sets.TPType_Aray[TPType_Aray]])
		elseif TPSet=="HYBRID" then
			equip(sets.hybrid[sets.TPType_Aray[TPType_Aray]])
		elseif TPSet=="PDT" then
			equip(sets.pdt)
		elseif TPSet=="MDT" then
			equip(sets.mdt)
		end
	else
		equip(sets.idle[IdleType])
	end
end

function self_command(command)
	
end