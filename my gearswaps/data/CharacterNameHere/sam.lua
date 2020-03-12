function get_sets()
-- includes
	include('skillchain-elements.lua')
	include('organizer-lib.lua')
	include('corrolls.lua')
	include('haste-include.lua')
	include('lelubrdgkeys.lua')
-- includes

-- keybinds, aliases, etc.
	send_command('alias pf gs c primfix')
	send_command('bind #4 idle')
	send_command('bind #2 gs equip sets.pdt')
	send_command('bind #8 gs equip sets.mdt')
	send_command('bind #g gs c ochain')
	send_command('bind @p gs c aegis')
	send_command('bind @f1 gs c dd')
	send_command('bind @f2 gs c hybrid')
	send_command('bind @f3 gs c pdt')
	send_command('bind @f4 gs c mdt')
	send_command('bind @f5 gs c dt')
	send_command('bind @f6 gs c masa')
	send_command('bind @f7 gs c doji')
	send_command('bind @f8 gs c shining')
	send_command('bind #f1 gs c idle')
	send_command('bind #f2 gs c kitemdt')
	send_command('bind #f3 gs c kitepdt')
	send_command('bind #f4 gs c pdtidle')
	send_command('bind #f5 gs c mdtidle')
	send_command('bind #f6 gs c dtidle')
	send_command('bind #f7 gs c dtkite')
	send_command('bind #x gs equip sets.aftercast.dt')
	send_command('bind #g gs c call')
	send_command('bind #h hybrid')
	send_command('bind #t tp')
	send_command('bind @r gs c rr')
	send_command('bind @f9 gs c lowacc')
	send_command('bind @f10 gs c medacc')
	send_command('bind @f11 gs c highacc')
	send_command('bind @f12 gs c wsacctoggle')

	send_command('alias tp gs equip sets.aftercast.tp.lowacc')
	send_command('alias hybrid gs equip sets.hybrid.highacc')
	send_command('alias idle gs equip sets.idle.standard')

-- keybinds, aliases, etc.

-- augmented gear
	stphead={ name="Acro Helm", augments={'Accuracy+19 Attack+19','Haste+3%','DEX+8',}}
	stpbody={ name="Acro Surcoat", augments={'Accuracy+18 Attack+18','"Store TP"+6','Crit. hit damage +3% ',}}
	stphands={ name="Acro Gauntlets", augments={'Accuracy+20 Attack+20','"Store TP"+6','Crit. Hit Damage +3%',}}
	stplegs={ name="Acro Breeches", augments={'Accuracy+19 Attack+19','"Store TP"+6','Crit. Hit Damage +3%',}}
	stpfeet={ name="Acro Leggings", augments={'Accuracy+20 Attack+20','"Store TP"+6','Crit. Hit Damage +3%',}}

	dabody={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','Crit. Hit Damage +1%',}}
	dahands={ name="Acro Gauntlets", augments={'Accuracy+20 Attack+20','"Dbl.Atk."+3','Crit. Hit Damage +2%',}}
	dalegs={ name="Acro Breeches", augments={'Accuracy+18 Attack+18','"Dbl.Atk."+3','Crit. Hit Damage +2%',}}
	dafeet={ name="Acro Leggings", augments={'Accuracy+19 Attack+19','"Dbl.Atk."+3','Crit. Hit Damage +2%',}}

	takaha={ name="Takaha Mantle", augments={'STR+3','"Zanshin"+4','"Store TP"+1','Meditate eff. dur. +5',}}
-- augmented gear

--macro selection
	send_command('input /macro book 4;input /macro set 1')
--macro selection

-- variables
	IdleMode="standard"
	TPSet="dd"
	WSMode="dmg"
	Acc="lowacc"
	oneiros="off"
	call="on"
	weaponry="Masamune"

	sets.weaponry=T{}
	sets.call=T{}
	sets.Acc=T{}
	sets.WSMode=T{}
	sets.TPSet=T{}
	sets.IdleMode=T{}
-- variables

-- gui setup
	windower.prim.create('TP_SET')
	windower.prim.create('ACC_SET')
	windower.prim.create('IDLE_SET')
	windower.prim.create('WS_SET')
	windower.prim.create('weaponry')

	windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/ddmode.png')
	windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/lowacc.png')
	windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/standardidle.png')
	windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/images/dmg.png')
	windower.prim.set_texture('weaponry',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')

	windower.prim.set_size('TP_SET',200,30)
	windower.prim.set_size('ACC_SET',200,30)
	windower.prim.set_size('IDLE_SET',200,30)
	windower.prim.set_size('WS_SET',200,30)
	windower.prim.set_size('weaponry',300,40)

	windower.prim.set_position('TP_SET',0.65*windower.get_windower_settings().ui_x_res,50)
	windower.prim.set_position('ACC_SET',0.65*windower.get_windower_settings().ui_x_res,90)
	windower.prim.set_position('IDLE_SET',0.65*windower.get_windower_settings().ui_x_res,130)
	windower.prim.set_position('WS_SET',0.65*windower.get_windower_settings().ui_x_res,170)
	windower.prim.set_position('weaponry',0.65*windower.get_windower_settings().ui_x_res,210)

	windower.prim.set_color('TP_SET', 100, 255, 255, 255)
	windower.prim.set_color('ACC_SET', 100, 255, 255, 255)
	windower.prim.set_color('IDLE_SET', 100, 255, 255, 255)
	windower.prim.set_color('WS_SET', 100, 255, 255, 255)
	windower.prim.set_color('weaponry', 200, 255, 255, 255)
-- gui setup

-- base names
	sets.Masamune={Main="Masamune", sub="Utu Grip",}
	sets["Dojikiri Yasutsuna"]={main="Dojikiri Yasutsuna", sub="Utu Grip",}
	sets["Shining One"]={main="Shining One", sub="Utu Grip",}
	sets["Quint Spear"]={main="Quint Spear", sub="Utu Grip",}
	sets.precast={}
	sets.precast.ja={}
	sets.ws={}
	sets.ws.dmg={}
	sets.ws.acc={}
	sets.midcast={}
	sets.aftercast={}
	sets.aftercast.tp={}
	sets.aftercast.o={}
	sets.hybrid={}
	sets.idle={}
	sets.crits={
		head="Ken. Jinpachi",
    body="Dagon Breast.",
    hands="Ken. Tekko",
    legs="Ken. Hakama",
    feet="Ken. Sune-Ate",
    neck="Sam. Nodowa +1",
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Flamma Ring",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10',}},
	}
-- base names

-- ja sets
	sets.precast.ja["Meikyo Shisui"]={feet="Sak. Sune-Ate +3",}

	sets.precast.ja["Warding Circle"]={head="Wakido Kabuto +3",}

	sets.precast.ja["Third Eye"]={}

	sets.precast.ja["Hasso"]={}

	sets.precast.ja["Meditate"]={head="Wakido Kabuto +3", hands="Sakonji Kote +3", back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10',}},}

	sets.precast.ja["Seigan"]={}

	sets.precast.ja["Konzen-ittai"]={}

	sets.precast.ja["Shikikoyo"]={legs="Sakonji Haidate +1"}

	sets.precast.ja["Blade Bash"]={hands="Sakonji Kote +3",}

	sets.precast.ja["Sengikori"]={feet="kas. Sune-Ate +1",}

	sets.precast.ja["Sekkanoki"]={hands="Kasuga Kote +1",}

	sets.precast.ja["Hamanoha"]={}

	sets.precast.ja["Hagakure"]={}

	sets.precast.ja["Yaegasumi"]={}
-- ja sets

-- ws sets
	sets.strws={sub="Utu Grip", ammo="Knobkierrie", head={ name="Valorous Mask", augments={'Attack+16','Weapon skill damage +4%','STR+8','Accuracy+14',}},
    body="Sakonji Domaru +3", hands={ name="Valorous Mitts", augments={'Accuracy+10','Weapon skill damage +2%','STR+13','Attack+6',}}, neck="Fotia Gorget",
	legs="Wakido Haidate +3", feet={ name="Valorous Greaves", augments={'Accuracy+18','Weapon skill damage +3%','STR+7','Attack+12',}}, waist="Fotia Belt",
	left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, right_ear="Ishvara Earring", left_ring="Niqmaddu Ring", right_ring="Regal Ring", back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}

	sets.accws=set_combine(sets.strws,{back=Takaha,})

	sets.msfeet={feet="Sak. Sune-Ate +3",}

	sets.raws={ sub="Utu Grip", ammo="Knobkierrie", head="Sakonji Kabuto +1",
	body="Kyujutsugi", hands="Kasuga Kote +1", legs="Miki. Cuisses", feet="Sak. Sune-Ate +3",
	neck="Fotia Gorget", waist="Fotia Belt", left_ear="Moonshade Earring", right_ear="Drone Earring",
	left_ring="Stormsoul Ring", right_ring="Bellona's Ring", back="Terebellum Mantle",}

	sets.magicws={ sub="Utu Grip", ammo="Knobkierrie",
	head={ name="Founder's Corona", augments={'DEX+7','Accuracy+11','Magic dmg. taken -3%',}}, body={ name="Found. Breastplate", augments={'Accuracy+7','Mag. Acc.+5','Attack+7',}},
    hands={ name="Founder's Gauntlets", augments={'STR+8','Attack+15','"Mag.Atk.Bns."+13','Phys. dmg. taken -3%',}}, legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}},
	feet={ name="Founder's Greaves", augments={'VIT+9','Accuracy+14','"Mag.Atk.Bns."+13','Mag. Evasion+15',}}, neck="Fotia Gorget", waist="Fotia Belt", left_ear="Crematio Earring",
	right_ear="Hecate's Earring", left_ring="Sangoma Ring", right_ring="Vertigo Ring", back="Toro Cape",}

	sets.ws.dmg["Tachi: Enpi"]=sets.strws

	sets.ws.acc["Tachi: Enpi"]=sets.accws

	sets.ws.dmg["Tachi: Hobaku"]=sets.strws

	sets.ws.acc["Tachi: Hobaku"]=sets.accws

	sets.ws.dmg["Tachi: Goten"]=sets.magicws

	sets.ws.acc["Tachi: Goten"]=sets.magicws

	sets.ws.dmg["Tachi: Kagero"]=sets.magicws

	sets.ws.acc["Tachi: Kagero"]=sets.magicws

	sets.ws.dmg["Tachi: Jinpu"]=sets.magicws

	sets.ws.acc["Tachi: Jinpu"]=sets.magicws

	sets.ws.dmg["Tachi: Koki"]=sets.magicws

	sets.ws.acc["Tachi: Koki"]=sets.magicws

	sets.ws.dmg["Tachi: Yukikaze"]=sets.strws

	sets.ws.acc["Tachi: Yukikaze"]=sets.accws

	sets.ws.dmg["Tachi: Gekko"]=sets.strws

	sets.ws.acc["Tachi: Gekko"]=sets.accws

	sets.ws.dmg["Tachi: Kasha"]=sets.strws

	sets.ws.acc["Tachi: Kasha"]=sets.accws

	sets.ws.dmg["Tachi: Rana"]=sets.strws

	sets.ws.acc["Tachi: Rana"]=sets.accws

	sets.ws.dmg["Tachi: Fudo"]=sets.strws

	sets.ws.acc["Tachi: Fudo"]=sets.accws

	sets.ws.dmg["Tachi: Shoha"]=sets.strws

	sets.ws.acc["Tachi: Shoha"]=sets.accws

	sets.ws.dmg["Tachi: Ageha"]=sets.strws

	sets.ws.acc["Tachi: Ageha"]=sets.accws

	sets.ws.dmg["Flaming Arrow"]=sets.raws

	sets.ws.acc["Flaming Arrow"]=sets.raws

	sets.ws.dmg["Piercing Arrow"]=sets.raws

	sets.ws.acc["Piercing Arrow"]=sets.raws

	sets.ws.dmg["Dulling Arrow"]=sets.raws

	sets.ws.acc["Dulling Arrow"]=sets.raws

	sets.ws.dmg["Sidewinder"]=sets.raws

	sets.ws.acc["Sidewinder"]=sets.raws

	sets.ws.dmg["Apex Arrow"]=sets.raws

	sets.ws.acc["Apex Arrow"]=sets.raws

	sets.ws.dmg["Double Thrust"]=sets.strws

	sets.ws.acc["Double Thrust"]=sets.accws

	sets.ws.dmg["Thunder Thrust"]=sets.magicws

	sets.ws.acc["Thunder Thrust"]=sets.magicws

	sets.ws.dmg["Raiden Thrust"]=sets.magicws

	sets.ws.acc["Raiden Thrust"]=sets.magicws

	sets.ws.dmg["Leg Sweep"]=sets.strws

	sets.ws.acc["Leg Sweep"]=sets.accws

	sets.ws.dmg["Penta Thrust"]=sets.strws

	sets.ws.acc["Penta Thrust"]=sets.accws

	sets.ws.dmg["Impulse Drive"]=sets.strws

	sets.ws.acc["Impulse Drive"]=sets.accws

	sets.ws.dmg["Sonic Thrust"]=sets.strws

	sets.ws.acc["Sonic Thrust"]=sets.accws

	sets.ws.dmg["Stardiver"]=sets.strws

	sets.ws.acc["Stardiver"]=sets.accws
-- ws sets

-- ws day bonus
	sets.wsdaybonus={head="Gavialis Helm",}
-- ws day bonus

-- ws sekkanoki bonus
	sets.sekkanoki={hands="Kasuga Kote +1",}
-- ws sekkanoki bonus

-- ws sengikori bonus
	sets.sengikori={feet="Kas. Sune-Ate +1",}
-- ws sengikori bonus

-- ws meikyoshisui bonus
	sets.meikyoshisui={feet="Sak. Sune-Ate +3",}
-- ws meikyoshisui bonus

-- sub nin stuff
	sets.precast.nin=set_combine(sets.dt,{neck="Voltsurge Torque", left_ear="Loquac. Earring", right_ear="Etiolation Earring",
	body="Nuevo Coselete", left_ring="Prolix Ring", hands="Leyline Gloves", feet="Ejekamal Boots",})

	sets.midcast.nin={ sub="Utu Grip", ammo="Ginsen", head="Loess Barbuta +1",
	body="Tartarus Platemail", hands={ name="Sakonji Kote +3", augments={'Enhances "Blade Bash" effect',}}, legs={ name="Valor. Hose", augments={'Mag. Acc.+9','Damage taken-3%','DEX+1','Attack+3',}}, right_ear="Sanare Earring",
	feet={ name="Amm Greaves", augments={'HP+50','VIT+9','Accuracy+14','Damage taken-1%',}}, neck="Loricate Torque +1", waist="Flume Belt", left_ear="Etiolation Earring",
	left_ring="Vocane Ring +1", right_ring="Defending Ring", back="Moonbeam Cape",}
-- sub nin stuff

-- tp sets
	sets.aftercast.tp.lowacc={
	ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body="Kasuga Domaru +1",
    hands="Wakido Kote +3",
    legs={ name="Ryuo Hakama +1", augments={'Accuracy+25','"Store TP"+5','Phys. dmg. taken -4',}},
    feet={ name="Ryuo Sune-Ate +1", augments={'HP+65','"Store TP"+5','"Subtle Blow"+8',}},
    neck="Sam. Nodowa +1",
    waist="Ioskeha Belt +1",
    left_ear="Dedition Earring",
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Flamma Ring",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10',}},
	}

	sets.aftercast.tp.medacc=set_combine(sets.aftercast.tp.lowacc,{left_ear="Cessance Earring",})

	sets.aftercast.tp.highacc=set_combine(sets.aftercast.tp.medacc,{})

	sets.aftercast.o.lowacc=set_combine(sets.aftercast.tp.lowacc,{left_ring="Oneiros Ring",})

	sets.aftercast.o.medacc=set_combine(sets.aftercast.tp.medacc,{left_ring="Oneiros Ring",})

	sets.aftercast.o.highacc=set_combine(sets.aftercast.tp.highacc,{left_ring="Oneiros Ring",})
-- tp sets

-- defensive sets
	sets.hybrid.lowacc=set_combine(sets.aftercast.tp.lowacc, {neck="Loricate Torque +1", body="Tartarus Platemail", left_ring="Vocane Ring +1", right_ring="Defending Ring",})

	sets.hybrid.medacc=set_combine(sets.hybrid.lowacc, {neck="Combatant's Torque",})

	sets.hybrid.highacc=set_combine(sets.hybrid.medacc, {neck="Sam. Nodowa +1",})

	sets.pdt={ sub="Utu Grip", ammo="Staunch Tathlum +1", left_ear="Genmei Earring", left_ring="Vocane Ring +1",
	head="Genmei Kabuto", body="Tartarus Platemail", right_ear="Telos Earring",
	hands={ name="Sakonji Kote +3", augments={'Enhances "Blade Bash" effect',}}, legs="Ryuo Hakama +1",
    feet={ name="Amm Greaves", augments={'HP+50','VIT+9','Accuracy+14','Damage taken-1%',}}, neck="Loricate Torque +1", waist="Flume Belt", right_ring="Defending Ring",
	back="Agema Cape",}

	sets.mdt={ sub="Utu Grip", ammo="Staunch Tathlum +1",
	head={ name="Founder's Corona", augments={'DEX+7','Accuracy+11','Magic dmg. taken -3%',}},
	body="Tartarus Platemail", hands="Kurys Gloves", legs={ name="Valor. Hose", augments={'Mag. Acc.+9','Damage taken-3%','DEX+1','Attack+3',}}, feet={ name="Amm Greaves", augments={'HP+50','VIT+9','Accuracy+14','Damage taken-1%',}}, waist="Flume Belt",
	neck="Loricate Torque +1", left_ear="Etiolation Earring", right_ear="Sanare Earring", left_ring="Shadow Ring", right_ring="Defending Ring", back="Engulfer Cape +1",}

	sets.dt={ sub="Utu Grip", ammo="Staunch Tathlum +1", head="Loess Barbuta +1",
	body="Tartarus Platemail", hands="Kurys Gloves", legs={ name="Valor. Hose", augments={'Mag. Acc.+9','Damage taken-3%','DEX+1','Attack+3',}}, right_ear="Sanare Earring",
	feet={ name="Amm Greaves", augments={'HP+50','VIT+9','Accuracy+14','Damage taken-1%',}}, neck="Loricate Torque +1", waist="Flume Belt", left_ear="Etiolation Earring",
	left_ring="Vocane Ring +1", right_ring="Defending Ring", back="Moonbeam Cape",}
-- defensive sets

-- other idle sets
	sets.idle.pdt=sets.pdt

	sets.idle.pdtkite=set_combine(sets.idle.pdt,{back="Shadow Mantle", feet="Danzo Sune-Ate",})

	sets.idle.mdt=sets.mdt

	sets.idle.mdtkite=set_combine(sets.idle.mdt,{feet="Danzo Sune-Ate"})

	sets.idle.dt=sets.dt

	sets.idle.dtkite=set_combine(sets.idle.dt,{back="Shadow Mantle", feet="Danzo Sune-Ate",})

	sets.idle.standard={
	sub="Utu Grip",
    ammo="Ginsen",
    head={ name="Rao Kabuto +1", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
    body="Hiza. Haramaki +2",
    hands={ name="Rao Kote +1", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
    legs={ name="Rao Haidate +1", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
    feet="Danzo Sune-Ate",
    neck="Sanctity Necklace",
    waist="Flume Belt",
    left_ear="Infused Earring",
    right_ear="Sanare Earring",
    left_ring="Paguroidea Ring",
    right_ring="Sheltered Ring",
    back="Shadow Mantle",
	}
-- other idle sets

-- seigan/thirdeye sets
	sets.seigan={head="Kasuga Kabuto +1", legs=stplegs,}
	sets.seiganthirdeye={head="Kasuga Kabuto +1", legs="Sakonji Haidate +1",}
-- seigan/thirdeye sets
end

function is_sc_element_today(spell)
    if spell.type ~= 'WeaponSkill' then
        return
    end

    local weaponskill_elements = S{}:
        union(skillchain_elements[spell.skillchain_a]):
        union(skillchain_elements[spell.skillchain_b]):
        union(skillchain_elements[spell.skillchain_c])

    if weaponskill_elements:contains(world.day_element) then
        return true
    else
        return false
    end
end

function precast(spell)
	if spell.type=='JobAbility' then
		equip(sets.precast.ja[spell.english])
	elseif spell.type=='WeaponSkill' then
		if WSMode=="dmg" then
			equip(sets.ws.dmg[spell.english])
		elseif WSMode=="acc" then
			equip(sets.ws.acc[spell.english])
		end
		if call=="on" then
			send_command('input /p WS:'..spell.english..'<<<<just used it')
		end
		if buffactive["Meikyo Shisui"] then
			equip(sets.msfeet)
		end
	end
	if spell.prefix=='/ranged' then
		equip(sets.raws)
	end
	if spell.type == 'WeaponSkill' then
		if is_sc_element_today(spell) then
			equip(sets.wsdaybonus)
		end
		if buffactive['Sekkanoki'] then
			equip(sets.sekkanoki)
		end
		if buffactive['Sengikori'] then
			equip(sets.sengikori)
		end
		if buffactive['Meikyo Shisui'] then
			equip(sets.meikyoshisui)
		end
	end
	if spell.type=="Ninjutsu" then
		equip(sets.precast.nin)
	end
end

function midcast(spell)
	if spell.prefix=='/ranged' then
		equip(sets.raws)
	end
	if spell.type=='Ninjutsu' then
		equip(sets.midcast.nin)
	end
end

function aftercast(spell)
	status_change(player.status)
end

function status_change(new,old)
	if new=="Engaged" then
		if TPSet=="dd" then
			--if player.mp<99 and oneiros=="on" then
				equip(sets.aftercast.tp[Acc])
			--else
				--equip(sets.aftercast.o[Acc])
			--end
			if buffactive["Seigan"] then
				equip(sets.seigan)
			end
			if buffactive["Seigan"] and buffactive["Third Eye"] then
				equip(sets.seiganthirdeye)
			end
		elseif TPMode=="hybrid" then
			equip(sets.hybrid[Acc])
		elseif TPMode=="pdt" then
			equip(sets.pdt)
		elseif TPMode=="mdt" then
			equip(sets.mdt)
		elseif TPMode=="dt" then
			equip(sets.dt)
		end
	else
		equip(sets.idle[IdleMode])
	end
	equip(sets[weaponry])
	send_command("gs c primfix")
end

function buff_change(buff,gain)
	buff = string.lower(buff)
	if (buff == "haste" or buff == "flurry") and not gain then
		hastetype="none"
		add_to_chat(206, "hastetype:"..hastetype.."")
	end
	if buff == "march" and not gain then
		march=march -1
		add_to_chat(206, "lost a march")
	end
	--osd() --uncomment to use osd
end

function self_command(command)
	-- accuracy variable commands rule start
	if command == 'lowacc' then
		Acc="lowacc"
		add_to_chat(206, 'Low Accuracy Mode')
		send_command('alias tp gs equip sets.aftercast.tp.lowacc')
		windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/lowacc.png')
		windower.prim.set_size('ACC_SET',200,30)
		if TPSet=="hybrid" then
			send_command('alias hybrid gs equip sets.hybrid.lowacc')
		end
	elseif command == 'medacc' then
		Acc="medacc"
		add_to_chat(206, 'Medium Accuracy Mode')
		send_command('alias tp gs equip sets.aftercast.tp.medacc')
		windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/medacc.png')
		windower.prim.set_size('ACC_SET',200,30)
		if TPSet=="hybrid" then
			send_command('alias hybrid gs equip sets.hybrid.medacc')
		end
	elseif command == 'highacc' then
		Acc="highacc"
		add_to_chat(206, 'High Accuracy Mode')
		send_command('alias tp gs equip sets.aftercast.tp.highacc')
		windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/highacc.png')
		windower.prim.set_size('ACC_SET',200,30)
		if TPSet=="hybrid" then
			send_command('alias hybrid gs equip sets.hybrid.highacc')
		end
	end
	-- accuracy variable commands rule end

	-- engage variable commands rule start
	if command == 'dd' then
		TPSet="dd"
		add_to_chat(206, 'DD Mode')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/ddmode.png')
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/ddmode.wav')
		windower.prim.set_size('TP_SET',200,30)
		if Acc=="lowacc" then
			send_command('alias tp gs equip sets.aftercast.tp.lowacc')
		elseif Acc=="medacc" then
			send_command('alias tp gs equip sets.aftercast.tp.medacc')
		elseif Acc=="highacc" then
			send_command('alias tp gs equip sets.aftercast.tp.medacc')
		end
	end
	if command == 'hybrid' then
		if TPSet~= "hybrid" then
			TPSet="hybrid"
			add_to_chat(206, 'HYBRID MODE')
			if Acc=="lowacc" then
				send_command('alias hybrid gs equip sets.hybrid.lowacc')
			elseif Acc=="medacc" then
				send_command('alias hybrid gs equip sets.hybrid.medacc')
			elseif Acc=="highacc" then
				send_command('alias hybrid gs equip sets.hybrid.highacc')
			end
			windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/hybridmode.png')
			windower.prim.set_size('TP_SET',200,30)
		end
	end
	if command == 'pdt' then
		TPSet="pdt"
		add_to_chat(206, 'PDT MODE')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/pdtmode.png')
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
		windower.prim.set_size('TP_SET',200,30)
	end
	if command == 'mdt' then
		TPSet="mdt"
		add_to_chat(206, 'MDT MODE')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/mdtmode.png')
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
		windower.prim.set_size('TP_SET',200,30)
	end
	if command == 'dt' then
		TPSet="dt"
		add_to_chat(206, 'DT MODE')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/dtmode.png')
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
		windower.prim.set_size('TP_SET',200,30)
	end
	-- engage variable commands rule end

	-- ws variable rule
	if command=="wsacctoggle" then
		if WSMode=="dmg" then
			WSMode="acc"
			add_to_chat(206, 'WSMODE: ACCURACY')
			windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/images/acc.png')
			windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/acc.wav')
			windower.prim.set_size('WS_SET',200,30)
		else
			WSMode="dmg"
			add_to_chat(206, 'WSMODE: DAMAGE')
			windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/images/dmg.png')
			windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dmg.wav')
			windower.prim.set_size('WS_SET',200,30)
		end
	end
	-- ws variable rule

	-- idle variable commands rule start
	if command == 'idle' then
		IdleMode="standard"
		add_to_chat(206, 'STANDARD IDLE MODE')
		send_command('alias idle gs equip sets.idle.standard')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/standardidle.png')
		windower.prim.set_size('IDLE_SET',200,30)
		status_change(player.status)
	end
	if command == 'kitepdt' then
		IdleMode="pdtkite"
		add_to_chat(206, 'PDT KITING MODE')
		send_command('alias idle gs equip sets.idle.pdtkite')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/pdtkite.png')
		windower.prim.set_size('IDLE_SET',200,30)
		status_change(player.status)
	end
	if command == 'kitemdt' then
		IdleMode="mdtkite"
		add_to_chat(206, 'MDT KITING MODE')
		send_command('alias idle gs equip sets.idle.mdtkite')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/mdtkite.png')
		windower.prim.set_size('IDLE_SET',200,30)
		status_change(player.status)
	end
	if command == 'pdtidle' then
		IdleMode="pdt"
		add_to_chat(206, 'PDT IDLE MODE')
		send_command('alias idle gs equip sets.idle.pdt')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/pdtidle.png')
		windower.prim.set_size('IDLE_SET',200,30)
		status_change(player.status)
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
	end
	if command == 'mdtidle' then
		IdleMode="mdt"
		add_to_chat(206, 'MDT IDLE MODE')
		send_command('alias idle gs equip sets.idle.mdt')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/mdtidle.png')
		windower.prim.set_size('IDLE_SET',200,30)
		status_change(player.status)
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
	end
	if command == 'dtidle' then
		IdleMode="dt"
		add_to_chat(206, 'DT IDLE MODE')
		send_command('alias idle gs equip sets.idle.dt')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/dtidle.png')
		status_change(player.status)
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
	end
	if command == 'dtkite' then
		IdleMode="dtidle"
		add_to_chat(206, 'DT KITING MODE')
		send_command('alias idle gs equip sets.idle.dtkite')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/dtkite.png')
		status_change(player.status)
	end
	-- idle variable commands rule end

	-- reraise lock toggle command rule start
	if command == 'rr' then
		if rrlock== "rroff" then
			equip(sets.rr)
			send_command('gs disable body;gs disable head')
			rrlock= "rron"
			add_to_chat(206, 'TWILIGHT SET LOCKED IN FOR RERAISE')
		else
			send_command('gs enable body;gs enable head')
			status_change(player.status)
			rrlock= "rroff"
			add_to_chat(206, 'REMOVED RERAISE GEAR LOCK: RESUMING NORMAL GEARSWAPING')
		end
	end
	-- reraise lock toggle command rule end

	if command=='calltoggle' then
		if call=="on" then
			call="off"
			add_to_chat(206,"WS CALL: OFF")
		else
			call="on"
			add_to_chat(206,"WS CALL: ON")
		end
	end
	if command == 'update' then
		status_change(player.status)
	end
	if command=="masa" then
		weaponry="Masamune"
		windower.prim.set_texture('weaponry',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		status_change(player.status)
	end
	if command=="doji" then
		weaponry="Dojikiri Yasutsuna"
		windower.prim.set_texture('weaponry',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		status_change(player.status)
	end
	if command=="shining" then
		weaponry="Shining One"
		windower.prim.set_texture('weaponry',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		status_change(player.status)
	end
	if command=="quint" then
		weaponry="Quint Spear"
		windower.prim.set_texture('weaponry',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		status_change(player.status)
	end
	if command=='primfix' then
		windower.prim.set_size('TP_SET',200,30)
		windower.prim.set_size('ACC_SET',200,30)
		windower.prim.set_size('IDLE_SET',200,30)
		windower.prim.set_size('WS_SET',200,30)
		windower.prim.set_size('weaponry',300,40)
	end
end
