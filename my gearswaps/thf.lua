function get_sets()
-- include
	include('boxes.lua')
	include('organizer-lib.lua')
-- include
--keybinds
	send_command('bind #f1 gs c toggleoffensivemodes')
	send_command('bind #f2 gs c togglehybridmodes')
	send_command('bind #f3 gs c toggledefensivemodes')
	send_command('bind #f4 gs c toggleidlemode')
	send_command('bind @f1 gs c toggletpmode')
	send_command('bind @f2 gs c togglewsmode')
	send_command('bind #2 gs equip sets.aftercast.defense.pdt')
	send_command('bind #4 gs equip ..sets.aftercast.idle[sets.aftercast.idle.index[idle_ind]]')
	send_command('bind #8 gs equip sets.aftercast.defense.mdt')
	send_command('bind #t gs equip ..sets.aftercast.offense[sets.aftercast.offense.index[offense_ind]]')
	send_command('bind #h gs equip ..sets.aftercast.hybrid[sets.aftercast.hybrid.index[hybrid_ind]]')
	send_command('bind #x gs equip sets.aftercast.defense.xdt')
--keybinds

	taeonhead={ name="Taeon Chapeau", augments={'Accuracy+17 Attack+17','"Triple Atk."+2','Crit. hit damage +3%',}}
	taeonbody={ name="Taeon Tabard", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','Weapon skill damage +2%',}}
	taeonhands={ name="Taeon Gloves", augments={'Accuracy+16 Attack+16','"Triple Atk."+2','Crit. hit damage +2%',}}
	taeonlegs={ name="Taeon Tights", augments={'Accuracy+23','"Triple Atk."+2',}}
	taeonfeet={ name="Taeon Boots", augments={'Accuracy+19 Attack+19','"Triple Atk."+2','Crit. hit damage +2%',}}
	
--base sets and indecies
	sets.precast={}	
	sets.precast.ma={}
	sets.precast.ja={}
	sets.precast.ws={}
	sets.precast.ws.damage={}
	sets.precast.ws.accuracy={}
	sets.precast.pet={}
	
	sets.dexws={main="Izhiikoh", sub="Sandung", range="Raider's Bmrng.", head="Uk'uxkaj Cap",
	body={ name="Qaaxo Harness", augments={'Attack+15','Evasion+15','"Dbl.Atk."+2',}}, hands="Umuthi Gloves",
	legs={ name="Iuitl Tights +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -2%','Accuracy+7',}},
    feet="Plun. Poulaines", neck="Asperity Necklace", waist="Windbuffet Belt +1", left_ear="Steelflash Earring", 
	right_ear="Bladeborn Earring", left_ring="Epona's Ring", right_ring="Ramuh Ring", back="Rancorous Mantle",}
	
	sets.precast.ws.damage["Wasp Sting"]= sets.dexws
	sets.precast.ws.accuracy["Wasp Sting"]= set_combine(sets.dexws, {neck="Subtlety Spec.", back="Letalis Mantle", waist="Anguinus Belt",})
	
	sets.precast.ws.damage["Viper Bite"]= sets.dexws
	sets.precast.ws.accuracy["Viper Bite"]= set_combine(sets.dexws, {neck="Subtlety Spec.", back="Letalis Mantle", waist="Anguinus Belt",})
	
	sets.precast.ws.damage["Shadowstitch"]= sets.dexws
	sets.precast.ws.accuracy["Shadowstitch"]= set_combine(sets.dexws, {neck="Subtlety Spec.", back="Letalis Mantle", waist="Anguinus Belt",})
	
	sets.precast.ws.damage["Dancing Edge"]= set_combine(sets.dexws, {neck="Fotia Gorget", waist="Fotia Belt",})
	sets.precast.ws.accuracy["Dancing Edge"]= set_combine(sets.dexws, {neck="Subtlety Spec.", back="Letalis Mantle", waist="Anguinus Belt",})
	
	sets.precast.ws.damage["Shark Bite"]= set_combine(sets.dexws, {neck="Fotia Gorget", waist="Fotia Belt",})
	sets.precast.ws.accuracy["Shark Bite"]= set_combine(sets.dexws, {neck="Subtlety Spec.", back="Letalis Mantle", waist="Anguinus Belt",})
	
	sets.precast.ws.damage["Evisceration"]= set_combine(sets.dexws, {neck="Fotia Gorget", waist="Fotia Belt",})
	sets.precast.ws.accuracy["Evisceration"]= set_combine(sets.dexws, {neck="Subtlety Spec.", back="Letalis Mantle", waist="Anguinus Belt",})
	
	sets.precast.ws.damage["Mandalic Stab"]= set_combine(sets.dexws, {neck="Fotia Gorget", waist="Fotia Belt",})
	sets.precast.ws.accuracy["Mandalic Stab"]= set_combine(sets.dexws, {neck="Subtlety Spec.", back="Letalis Mantle", waist="Anguinus Belt",})
	
	sets.precast.ws.damage["Rudra's Storm"]= set_combine(sets.dexws, {neck="Fotia Gorget", waist="Fotia Belt",})
	sets.precast.ws.accuracy["Rudra's Storm"]= set_combine(sets.dexws, {neck="Subtlety Spec.", back="Letalis Mantle", waist="Anguinus Belt",})
	
	sets.midcast={}
	sets.midcast.ma={}
	sets.midcast.pet={}
	
	sets.aftercast={}
	
	sets.aftercast.offense={}
	sets.aftercast.offense.index={'lowacc','medacc','highacc'}
	offense_ind=1
	
	sets.aftercast.offense.lowacc={main="Izhiikoh", sub="Sandung", range="Raider's Bmrng.", body="Thaumas Coat", 
	head=taeonhead, legs=taeonlegs, neck="Asperity Necklace", right_ear="Heartseeker Earring", left_ring="Epona's Ring",
	hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}}, feet=taeonfeet,
	waist="Chaac Belt", left_ear="Dudgeon Earring", right_ring="Rajas Ring", back="Canny Cape",}
	
	sets.aftercast.offense.medacc= set_combine(sets.aftercast.offense.lowacc, {neck="Subtlety Spec.",})
	
	sets.aftercast.offense.highacc= set_combine(sets.aftercast.offense.medacc, {head=taeonhead, left_ear="suppanomimi", right_ear="Zennaroi Earring",})
	
	sets.aftercast.hybrid={}
	sets.aftercast.hybrid.index={'lowacc','medacc','highacc'}
	hybrid_ind=1
	
	sets.aftercast.hybrid.lowacc={main="Izhiikoh", sub="Sandung", range="Raider's Bmrng.", hands="Umuthi Gloves",
	head={ name="Iuitl Headgear +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -4%','"Dbl.Atk."+1',}},
	body={ name="Qaaxo Harness", augments={'Attack+15','Evasion+15','"Dbl.Atk."+2',}},
	legs={ name="Iuitl Tights +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -2%','Accuracy+7',}},
	feet={ name="Iuitl Gaiters +1", augments={'Phys. dmg. taken -3%','Rng.Atk.+7',}}, neck="Twilight Torque",
	waist="Flume Belt", left_ear="Dudgeon Earring", right_ear="Heartseeker Earring", left_ring="Vocane Ring",
	right_ring="Defending Ring",back="Mollusca Mantle",}
	
	sets.aftercast.hybrid.medacc= set_combine(sets.aftercast.hybrid.lowacc, {back="Letalis Mantle",left_ring="Patricius Ring",})
	
	sets.aftercast.hybrid.highacc= set_combine(sets.aftercast.hybrid.medacc, {neck="Subtlety Spec.", waist="Hurch'lan Sash",})
	
	sets.aftercast.defense={}
	sets.aftercast.defense.index={'pdt','mdt','xdt'}
	defense_ind=1
	
	sets.aftercast.defense.pdt={main="Izhiikoh", sub="Sandung", range="Raider's Bmrng.", hands="Umuthi Gloves",
	head={ name="Iuitl Headgear +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -4%','"Dbl.Atk."+1',}},
	body={ name="Qaaxo Harness", augments={'Attack+15','Evasion+15','"Dbl.Atk."+2',}},
	legs={ name="Iuitl Tights +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -2%','Accuracy+7',}},
	feet={ name="Iuitl Gaiters +1", augments={'Phys. dmg. taken -3%','Rng.Atk.+7',}}, neck="Twilight Torque",
	waist="Flume Belt", left_ear="Ethereal Earring", right_ear="Sanare Earring", left_ring="Vocane Ring",
	right_ring="Defending Ring",back="Mollusca Mantle",}
	
	sets.aftercast.defense.mdt={main="Izhiikoh", sub="Sandung", range="Raider's Bmrng.", hands="Umuthi Gloves",
	head={ name="Iuitl Headgear +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -4%','"Dbl.Atk."+1',}},
	body={ name="Qaaxo Harness", augments={'Attack+15','Evasion+15','"Dbl.Atk."+2',}},
	legs={ name="Iuitl Tights +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -2%','Accuracy+7',}},
	feet={ name="Iuitl Gaiters +1", augments={'Phys. dmg. taken -3%','Rng.Atk.+7',}}, neck="Twilight Torque",
	waist="Flume Belt", left_ear="Ethereal Earring", right_ear="Sanare Earring", left_ring="Vocane Ring",
	right_ring="Defending Ring",back="Mollusca Mantle",}
	
	sets.aftercast.defense.xdt={main="Izhiikoh", sub="Sandung", range="Raider's Bmrng.", hands="Umuthi Gloves",
	head={ name="Iuitl Headgear +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -4%','"Dbl.Atk."+1',}},
	body={ name="Qaaxo Harness", augments={'Attack+15','Evasion+15','"Dbl.Atk."+2',}},
	legs={ name="Iuitl Tights +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -2%','Accuracy+7',}},
	feet={ name="Iuitl Gaiters +1", augments={'Phys. dmg. taken -3%','Rng.Atk.+7',}}, neck="Twilight Torque",
	waist="Flume Belt", left_ear="Ethereal Earring", right_ear="Sanare Earring", left_ring="Vocane Ring",
	right_ring="Defending Ring",back="Mollusca Mantle",}
	
	sets.aftercast.idle={}
	sets.aftercast.idle.index={'regen','standard'}
	idle_ind=1
	
	sets.aftercast.idle.standard= set_combine(sets.aftercast.defense.xdt, {back="Shadow Mantle", left_ring="Shadow Ring", feet="Fajin Boots",})
	
	sets.aftercast.idle.regen={main="Izhiikoh", sub="Sandung", range="Raider's Bmrng.", head="Oce. Headpiece +1",
	body={ name="Qaaxo Harness", augments={'Attack+15','Evasion+15','"Dbl.Atk."+2',}}, hands="Umuthi Gloves",
	legs={ name="Iuitl Tights +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -2%','Accuracy+7',}},
	feet="Fajin Boots", neck="Wiglen Gorget", waist="Flume Belt", left_ear="Ethereal Earring", 
	right_ear="Sanare Earring", left_ring="Sheltered Ring", right_ring="Paguroidea Ring",
	back="Shadow Mantle",}
	
	sets.TP_Array={}
	sets.TP_Array.index={'offense','hybrid','defense'}
	TP_Array=1
	
	sets.WS_Array={}
	sets.WS_Array.index={'damage','accuracy'}
	WS_Array=1
--base sets and indecies
end

function precast(spell)
	if spell.prefix=="/jobability" then
		equip(sets.precast.ja[spell.english])
	end
	if spell.prefix=="/magic" or spell.prefix=="/ninjutsu" or spell.prefix=="/song" then
		equip(sets.precast.ma[spell.skill])
	end
	if spell.prefix=="/weaponskill" then
		if WS_Array==1 then
			equip(sets.precast.ws.damage[spell.english])
		elseif WS_Array==2 then
			equip(sets.precast.ws.accuracy[spell.english])
		end
	end
end

function aftercast(spell)
	if player.status=="Engaged" then
		if TP_Array==1 then
			equip(sets.aftercast.offense[sets.aftercast.offense.index[offense_ind]])
		elseif TP_Array==2 then
			equip(sets.aftercast.hybrid[sets.aftercast.hybrid.index[hybrid_ind]])
		elseif TP_Array==3 then
			equip(sets.aftercast.defense[sets.aftercast.offense.index[defense_ind]])
		end
	else
		equip(sets.aftercast.idle[sets.aftercast.idle.index[idle_ind]])
	end
end

function status_change(new,old)
	if new=="Engaged" then
		if TP_Array==1 then
			equip(sets.aftercast.offense[sets.aftercast.offense.index[offense_ind]])
		elseif TP_Array==2 then
			equip(sets.aftercast.hybrid[sets.aftercast.hybrid.index[hybrid_ind]])
		elseif TP_Array==3 then
			equip(sets.aftercast.defense[sets.aftercast.offense.index[defense_ind]])
		end
	else
		equip(sets.aftercast.idle[sets.aftercast.idle.index[idle_ind]])
	end
end

function self_command(command)
	if command=="toggleoffensivemodes" then
		offense_ind = offense_ind +1
		if offense_ind > #sets.aftercast.offense.index then
			offense_ind = 1
		end
		status_change(player.status)
		add_to_chat(206, 'Offensive Mode: '..sets.aftercast.offense.index[offense_ind])
	end
	if command=="togglehybridmodes" then
		hybrid_ind = hybrid_ind +1
		if hybrid_ind > #sets.aftercast.hybrid.index then
			hybrid_ind = 1
		end
		status_change(player.status)
		add_to_chat(206, 'Hybrid Mode: '..sets.aftercast.hybrid.index[hybrid_ind])
	end
	if command=="toggledefensivemodes" then
		defense_ind = defense_ind +1
		if defense_ind > #sets.aftercast.defense.index then
			defense_ind = 1
		end
		status_change(player.status)
		add_to_chat(206, 'Defensive Mode: '..sets.aftercast.defense.index[defense_ind])
	end
	if command=="toggleidlemode" then
		idle_ind = idle_ind +1
		if idle_ind > #sets.aftercast.idle.index then
			idle_ind = 1
		end
		status_change(player.status)
		add_to_chat(206, 'Idle Mode: '..sets.aftercast.idle.index[idle_ind])
	end	
	if command=="toggletpmode" then
		TP_Array= TP_Array +1
		if TP_Array > #sets.TP_Array.index then
			TP_Array=1
		end
		status_change(player.status)
		add_to_chat(206, 'TP Mode: '..sets.TP_Array.index[TP_Array])
	end
	if command=="togglewsmode" then
		WS_Array= WS_Array +1
		if WS_Array > #sets.WS_Array.index then
			WS_Array=1
		end
		status_change(player.status)
		add_to_chat(206, 'WS Mode: '..sets.WS_Array.index[WS_Array])
	end
end

function file_unload(new_job)
	windower.send_command('boxesoff')
end