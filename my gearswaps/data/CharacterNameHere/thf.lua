function get_sets()
-- include
	include('organizer-lib.lua')
	include('lelubrdgkeys.lua')
	include('itchygeogkeys.lua')
-- include
--keybinds
	send_command('alias pf gs c primfix')
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

--base sets and indecies
	sets.precast={}
	sets.precast.ma={}
	sets.precast.ja={}
	sets.precast.ws={}
	sets.precast.ws.damage={}
	sets.precast.ws.accuracy={}
	sets.precast.pet={}

	sets.dexws={
		ammo="Yetshila +1",
    head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body="Abnoba Kaftan",
    hands="Meg. Gloves +2",
    legs={ name="Lustratio Subligar", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
    feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}},
    neck="Fotia Gorget",
    waist="Chiner's Belt +1",
    left_ear="Sherida Earring",
    right_ear="Mache Earring +1",
    left_ring="Ilabrat Ring",
    right_ring="Regal Ring",
    back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}

	sets.precast.ws.damage["Wasp Sting"]=set_combine(sets.dexws,{})
	sets.precast.ws.accuracy["Wasp Sting"]=set_combine(sets.dexws,{})

	sets.precast.ws.damage["Viper Bite"]=set_combine(sets.dexws,{})
	sets.precast.ws.accuracy["Viper Bite"]=set_combine(sets.dexws,{})

	sets.precast.ws.damage["Shadowstitch"]=set_combine(sets.dexws,{})
	sets.precast.ws.accuracy["Shadowstitch"]=set_combine(sets.dexws,{})

	sets.precast.ws.damage["Dancing Edge"]=set_combine(sets.dexws,{})
	sets.precast.ws.accuracy["Dancing Edge"]=set_combine(sets.dexws,{})

	sets.precast.ws.damage["Shark Bite"]=set_combine(sets.dexws,{})
	sets.precast.ws.accuracy["Shark Bite"]=set_combine(sets.dexws,{})

	sets.precast.ws.damage["Evisceration"]=set_combine(sets.dexws,{})
	sets.precast.ws.accuracy["Evisceration"]=set_combine(sets.dexws,{})

	sets.precast.ws.damage["Mandalic Stab"]=set_combine(sets.dexws,{})
	sets.precast.ws.accuracy["Mandalic Stab"]=set_combine(sets.dexws,{})

	sets.precast.ws.damage["Rudra's Storm"]=set_combine(sets.dexws,{feet={ name="Herculean Boots", augments={'Pet: "Mag.Atk.Bns."+28','Pet: STR+4','Weapon skill damage +10%','Mag. Acc.+13 "Mag.Atk.Bns."+13',}},})
	sets.precast.ws.accuracy["Rudra's Storm"]=set_combine(sets.dexws,{feet={ name="Herculean Boots", augments={'Pet: "Mag.Atk.Bns."+28','Pet: STR+4','Weapon skill damage +10%','Mag. Acc.+13 "Mag.Atk.Bns."+13',}},})

	sets.precast.ws.damage["Savage Blade"]=set_combine(sets.dexws,{feet={ name="Herculean Boots", augments={'Pet: "Mag.Atk.Bns."+28','Pet: STR+4','Weapon skill damage +10%','Mag. Acc.+13 "Mag.Atk.Bns."+13',}},})
	sets.precast.ws.accuracy["Savage Blade"]=set_combine(sets.dexws,{feet={ name="Herculean Boots", augments={'Pet: "Mag.Atk.Bns."+28','Pet: STR+4','Weapon skill damage +10%','Mag. Acc.+13 "Mag.Atk.Bns."+13',}},})

	sets.precast.fc={
		ammo="Sapience Orb",
    head={ name="Herculean Helm", augments={'Accuracy+30','"Triple Atk."+4','Attack+8',}},
    body={ name="Adhemar Jacket", augments={'HP+80','"Fast Cast"+7','Magic dmg. taken -3',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}},
    legs={ name="Rawhide Trousers", augments={'MP+50','"Fast Cast"+5','"Refresh"+1',}},
    feet="Nyame Sollerets",
    neck="Voltsurge Torque",
    waist="Ninurta's Sash",
    left_ear="Loquac. Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Rahab Ring",
    right_ring="Prolix Ring",
    back="Moonlight Cape",
	}

	sets.precast.nin=set_combine(sets.precast.fc, {
		neck="Magoraga Beads",
	})

	sets.midcast={}
	sets.midcast.ma={}
	sets.midcast.pet={}


	sets.aftercast={}

	sets.aftercast.offense={}
	sets.aftercast.offense.index={'lowacc','medacc','highacc'}
	offense_ind=1

	sets.aftercast.offense.lowacc={
    main="Aeneas",
    sub={ name="Taming Sari", augments={'STR+5','DEX+6','DMG:+10',}},
    ammo="Yamarang",
    head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
    feet={ name="Herculean Boots", augments={'Accuracy+16','"Triple Atk."+4','AGI+2','Attack+9',}},
    neck="Defiant Collar",
    waist="Chiner's Belt +1",
    left_ear="Suppanomimi",
    right_ear="Raider's Earring",
    left_ring="Hetairoi Ring",
    right_ring="Gere Ring",
    back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}

	sets.aftercast.offense.medacc= set_combine(sets.aftercast.offense.lowacc, {neck="Combatant's Torque",})

	sets.aftercast.offense.highacc= set_combine(sets.aftercast.offense.medacc, {left_ear="Mache Earring +1", right_ear="Telos Earring", left_ring="Ilabrat Ring", right_ring="Regal Ring", back="Ground. Mantle +1",})

	sets.aftercast.th=set_combine(sets.aftercast.offense.lowacc,{
		hands="Plun. Armlets +3",
		waist="Chaac Belt",
	})
	sets.aftercast.maxth=set_combine(sets.aftercast.offense.lowacc,{
		sub="Sandung",
		hands="Plun. Armlets +3",
		waist="Chaac Belt",
		feet="Skulk. Poulaines +1",
	})
	sets.aftercast.hybrid={}
	sets.aftercast.hybrid.index={'lowacc','medacc','highacc'}
	hybrid_ind=1

	sets.aftercast.hybrid.lowacc=set_combine(sets.aftercast.offense.lowacc,{left_ring="Defending Ring",})

	sets.aftercast.hybrid.medacc= set_combine(sets.aftercast.offense.medacc, {left_ring="Defending Ring",})

	sets.aftercast.hybrid.highacc= set_combine(sets.aftercast.offense.highacc, {left_ring="Defending Ring",})

	sets.aftercast.defense={}
	sets.aftercast.defense.index={'pdt','mdt','xdt'}
	defense_ind=1

	sets.aftercast.defense.pdt={
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Lissome Necklace",
		waist="Sailfi Belt +1",
		left_ear="Suppanomimi",
		right_ear="Sherida Earring",
		left_ring="Moonlight Ring",
		right_ring="Moonlight Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}

	sets.aftercast.defense.mdt=set_combine(sets.aftercast.defense.pdt, {left_ring="Shadow Ring",})

	sets.aftercast.defense.xdt={
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Ethereal Earring",
		right_ear="Sanare Earring",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
		back="Moonlight Cape",
	}

	sets.aftercast.idle={}
	sets.aftercast.idle.index={'regain','standard','refresh','regen'}
	idle_ind=1

	sets.aftercast.idle.standard={
		ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Jute Boots +1",
    neck="Loricate Torque +1",
    waist="Carrier's Sash",
    left_ear="Ethereal Earring",
    right_ear="Hearty Earring",
    left_ring="Defending Ring",
    right_ring="Shadow Ring",
    back="Shadow Mantle",
	}

	sets.aftercast.idle.regain={
		ammo="Staunch Tathlum +1",
    head="Turms Cap +1",
    body="Gleti's Cuirass",
    hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
    feet="Jute Boots +1",
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Suppanomimi",
    right_ear="Sanare Earring",
    left_ring="Defending Ring",
    right_ring="Vocane Ring +1",
    back="Moonlight Cape",
	}

	sets.aftercast.idle.regen={
		ammo="Yamarang",
    head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet="Jute Boots +1",
    neck="Sanctity Necklace",
    waist="Flume Belt +1",
    left_ear="Ethereal Earring",
    right_ear="Infused Earring",
    left_ring="Sheltered Ring",
    right_ring="Chirich Ring +1",
    back="Shadow Mantle",
	}

	sets.aftercast.idle.refresh={
		main={ name="Aeneas", augments={'Path: A',}},
    sub={ name="Taming Sari", augments={'STR+5','DEX+6','DMG:+10',}},
    ammo="Yamarang",
    head={ name="Rawhide Mask", augments={'HP+50','Accuracy+15','Evasion+20',}},
    body="Mekosu. Harness",
    hands={ name="Herculean Gloves", augments={'Blood Pact Dmg.+3','Attack+15','"Refresh"+1','Accuracy+8 Attack+8','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    legs={ name="Rawhide Trousers", augments={'MP+50','"Fast Cast"+5','"Refresh"+1',}},
    feet="Jute Boots +1",
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Ethereal Earring",
    right_ear="Infused Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Shadow Mantle",
	}

	sets.midcast.th=set_combine(sets.aftercast.offense.lowacc,{
		hands="Plun. Armlets +3",
		waist="Chaac Belt",
	})

	sets.TP_Array={}
	sets.TP_Array.index={'dd','th','hybrid','defense'}
	TP_Array=1

	sets.WS_Array={}
	sets.WS_Array.index={'dmg','acc'}
	WS_Array=1
--base sets and indecies

--gui setup
windower.prim.create('TP_SET')
windower.prim.create('ACC_SET')
windower.prim.create('IDLE_SET')
windower.prim.create('WS_SET')

windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/'..sets.TP_Array.index[TP_Array]..'mode.png')
windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/'..sets.aftercast.offense.index[offense_ind]..'.png')
windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/'..sets.aftercast.idle.index[idle_ind]..'idle.png')
windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/images/'..sets.WS_Array.index[WS_Array]..'.png')

windower.prim.set_size('TP_SET',200,30)
windower.prim.set_size('ACC_SET',200,30)
windower.prim.set_size('IDLE_SET',200,30)
windower.prim.set_size('WS_SET',200,30)

windower.prim.set_position('TP_SET',0.65*windower.get_windower_settings().ui_x_res,50)
windower.prim.set_position('ACC_SET',0.65*windower.get_windower_settings().ui_x_res,90)
windower.prim.set_position('IDLE_SET',0.65*windower.get_windower_settings().ui_x_res,130)
windower.prim.set_position('WS_SET',0.65*windower.get_windower_settings().ui_x_res,170)

windower.prim.set_color('TP_SET', 100, 255, 255, 255)
windower.prim.set_color('ACC_SET', 100, 255, 255, 255)
windower.prim.set_color('IDLE_SET', 100, 255, 255, 255)
windower.prim.set_color('WS_SET', 100, 255, 255, 255)

windower.prim.set_visibility('TP_SET',true)
windower.prim.set_visibility('ACC_SET',true)
windower.prim.set_visibility('IDLE_SET',true)
windower.prim.set_visibility('WS_SET',true)
--gui setup
end

function precast(spell)
	if spell.prefix=="/jobability" then
		equip(sets.precast.ja[spell.english])
	end
	if spell.prefix=="/magic" or spell.prefix=="/ninjutsu" or spell.prefix=="/song" then
		if not spell.english:contains('Utsusemi') then
			equip(sets.precast.fc)
		else
			equip(sets.precast.nin)
		end
	end
	if spell.prefix=="/weaponskill" then
		if WS_Array==1 then
			equip(sets.precast.ws.damage[spell.english])
		elseif WS_Array==2 then
			equip(sets.precast.ws.accuracy[spell.english])
		end
	end
end

function midcast(spell)
	if spell.prefix=="/magic" or spell.prefix=="/ninjutsu" or spell.prefix=="/song" then
		if not spell.english:contains('Utsusemi') then
			equip(sets.midcast.th)
		else
			equip(sets.midcast.nin)
		end
	end
end

function aftercast(spell)
	if not spell.interrupted then
		if spell.english=="sleepga" or spell.english=="poisonga" then
			windower.send_command("input /p TH has been cast upon the target")
		end
	end
	status_change(player.status)
end

function status_change(new,old)
	if new=="Engaged" then
		if TP_Array==1 then
			equip(sets.aftercast.offense[sets.aftercast.offense.index[offense_ind]])
		elseif TP_Array==2 then
			equip(sets.aftercast.th)
		elseif TP_Array==3 then
			equip(sets.aftercast.defense[sets.aftercast.offense.index[defense_ind]])
		end
	else
		equip(sets.aftercast.idle[sets.aftercast.idle.index[idle_ind]])
	end
	send_command('pf')
end

function self_command(command)
	if command=='primfix' then
		windower.prim.set_size('TP_SET',200,30)
		windower.prim.set_size('ACC_SET',200,30)
		windower.prim.set_size('IDLE_SET',200,30)
		windower.prim.set_size('WS_SET',200,30)
	end
	if command=="toggleoffensivemodes" then
		offense_ind = offense_ind +1
		if offense_ind > #sets.aftercast.offense.index then
			offense_ind = 1
		end
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/'..sets.TP_Array.index[TP_Array]..'mode.png')
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
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/'..sets.aftercast.idle.index[idle_ind]..'idle.png')
		status_change(player.status)
		add_to_chat(206, 'Idle Mode: '..sets.aftercast.idle.index[idle_ind])
	end
	if command=="toggletpmode" then
		TP_Array= TP_Array +1
		if TP_Array > #sets.TP_Array.index then
			TP_Array=1
		end
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/'..sets.TP_Array.index[TP_Array]..'mode.png')
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
