function get_sets()
-- includes	
	include('skillchain-elements.lua')
	include('organizer-lib.lua')
-- includes

-- keybinds, aliases, etc.
	windower.prim.create('TP_SET')
	windower.prim.create('ACC_SET')
	windower.prim.create('IDLE_SET')
	windower.prim.create('WS_SET')

	windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/ddmode.png')
	windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/lowacc.png')
	windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/standardidle.png')
	windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/dmg.png')

	windower.prim.set_size('TP_SET',200,30)
	windower.prim.set_size('ACC_SET',200,30)
	windower.prim.set_size('IDLE_SET',200,30)
	windower.prim.set_size('WS_SET',200,30)

	windower.prim.set_position('TP_SET',0.65*windower.get_windower_settings().x_res,50)
	windower.prim.set_position('ACC_SET',0.65*windower.get_windower_settings().x_res,90)
	windower.prim.set_position('IDLE_SET',0.65*windower.get_windower_settings().x_res,130)
	windower.prim.set_position('WS_SET',0.65*windower.get_windower_settings().x_res,170)

	windower.prim.set_color('TP_SET', 100, 255, 255, 255)
	windower.prim.set_color('ACC_SET', 100, 255, 255, 255)
	windower.prim.set_color('IDLE_SET', 100, 255, 255, 255)
	windower.prim.set_color('WS_SET', 100, 255, 255, 255)

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
	send_command('bind #f1 gs c idle')
	send_command('bind #f2 gs c kitemdt')
	send_command('bind #f3 gs c kitepdt') 
	send_command('bind #f4 gs c pdtidle')
	send_command('bind #f5 gs c mdtidle')
	send_command('bind #f6 gs c dtidle')
	send_command('bind #f7 gs c dtkite')
	send_command('bind #x gs equip sets.aftercast.dt')
	send_command('bind #h hybrid')
	send_command('bind #t tp')
	send_command('bind @r gs c rr')
	send_command('bind @f9 gs c lowacc')
	send_command('bind @f10 gs c medacc')
	send_command('bind @f11 gs c highacc')
	send_command('bind @f12 gs c wsacctoggle')
	
	send_command('alias tp gs equip sets.aftercast.tp.highacc')
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
	WSMode="damage"
	Acc="lowacc"
	oneiros="off"
	
	sets.Acc=T{}
	sets.WSMode=T{}
	sets.TPSet=T{}
	sets.IdleMode=T{}
-- variables

-- base names
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
-- base names

-- ja sets
	sets.precast.ja["Meikyo Shisui"]={feet="Sak. Sune-Ate +1",}
	
	sets.precast.ja["Warding Circle"]={head="Wakido Kabuto +1",}
	
	sets.precast.ja["Third Eye"]={}
	
	sets.precast.ja["Hasso"]={}
	
	sets.precast.ja["Meditate"]={head="Wakido Kabuto +1", hands="Sakonji Kote +1", back="Smertrios Mantle",}
	
	sets.precast.ja["Seigan"]={}
	
	sets.precast.ja["Konzen-ittai"]={}
	
	sets.precast.ja["Shikikoyo"]={legs="Sakonji Haidate +1"}
	
	sets.precast.ja["Blade Bash"]={hands="Sakonji Kote +1",}
	
	sets.precast.ja["Sengikori"]={feet="kas. Sune-Ate +1",}
	
	sets.precast.ja["Sekkanoki"]={hands="Kasuga Kote +1",}
	
	sets.precast.ja["Hamanoha"]={}
	
	sets.precast.ja["Hagakure"]={}
	
	sets.precast.ja["Yaegasumi"]={}
-- ja sets

-- ws sets
	sets.strws={main="Dojikiri Yasutsuna", sub="Bloodrain Strap", range="Cibitshavore", ammo="Tulfaire Arrow", head="Rao Kabuto",
    body={ name="Despair Mail", augments={'STR+12','VIT+7','Haste+2%',}}, hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','Haste+2%',}}, neck="Fotia Gorget", 
	legs="Hiza. Hizayoroi +1", feet={ name="Despair Greaves", augments={'STR+12','VIT+7','Haste+2%',}}, waist="Fotia Belt",
	left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, right_ear="Brutal Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},}
	
	sets.accws=set_combine(sets.strws,{back=Takaha,})
	
	sets.raws={main="Dojikiri Yasutsuna", sub="Bloodrain Strap", range="Cibitshavore", ammo="Tulfaire Arrow", head="Sakonji Kabuto +1",
	body="Kyujutsugi", hands="Kasuga Kote +1", legs="Miki. Cuisses", feet="Sak. Sune-Ate +1",
	neck="Fotia Gorget", waist="Fotia Belt", left_ear="Moonshade Earring", right_ear="Drone Earring", 
	left_ring="Stormsoul Ring", right_ring="Bellona's Ring", back="Terebellum Mantle",}
	
	sets.magicws={main="Dojikiri Yasutsuna", sub="Bloodrain Strap", range={ name="Cibitshavore", augments={'STR+12','Rng.Acc.+10','"Store TP"+7',}},
	head={ name="Founder's Corona", augments={'DEX+6','Accuracy+10','Magic dmg. taken -3%',}}, body={ name="Found. Breastplate", augments={'Accuracy+7','Mag. Acc.+5','Attack+7',}},
    hands={ name="Founder's Gauntlets", augments={'STR+8','Attack+15','"Mag.Atk.Bns."+13','Phys. dmg. taken -3%',}}, legs={ name="Founder's Hose", augments={'MND+5','Mag. Acc.+13',}},
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
	sets.meikyoshisui={feet="Sak. Sune-Ate +1",}
-- ws meikyoshisui bonus

-- sub nin stuff
	sets.precast.nin=set_combine(sets.dt,{neck="Jeweled Collar", left_ear="Loquac. Earring", right_ear="Etiolation Earring", 
	body="Nuevo Coselete", left_ring="Prolix Ring", hands="Leyline Gloves", feet="Ejekamal Boots",})
	
	sets.midcast.nin={main="Dojikiri Yasutsuna", sub="Bloodrain Strap", range={ name="Cibitshavore", augments={'STR+12','Rng.Acc.+10','"Store TP"+7',}}, head="Loess Barbuta +1",
	body="Mekira Meikogai", hands={ name="Sakonji Kote +1", augments={'Enhances "Blade Bash" effect',}}, legs="Osmium Cuisses", right_ear="Sanare Earring",
	feet={ name="Amm Greaves", augments={'HP+50','VIT+9','Accuracy+14','Damage taken-1%',}}, neck="Loricate Torque +1", waist="Flume Belt", left_ear="Etiolation Earring",
	left_ring="Vocane Ring", right_ring="Defending Ring", back="Mollusca Mantle",}
-- sub nin stuff

-- tp sets
	sets.aftercast.tp.lowacc={main="Dojikiri Yasutsuna", sub="Bloodrain Strap", range={ name="Cibitshavore", augments={'STR+12','Rng.Acc.+10','"Store TP"+7',}},
	head=stphead, body="Kasuga Domaru +1", legs="Kasuga Haidate +1", hands=stphands, feet="ryuo Sune-Ate",
    neck="Ganesha's Mala", waist="Windbuffet Belt +1", left_ear="Brutal Earring", right_ear="Telos Earring", left_ring="Petrov Ring", right_ring="Hetairoi Ring",
    back={ name="Takaha Mantle", augments={'STR+3','"Zanshin"+4','"Store TP"+1','Meditate eff. dur. +5',}},}
	
	--body="Kasuga Domaru +1",
	
	sets.aftercast.tp.medacc=set_combine(sets.aftercast.tp.lowacc,{head=stphead, left_ring="Apate Ring",})

	sets.aftercast.tp.highacc={main="Dojikiri Yasutsuna", sub="Bloodrain Strap", range={ name="Cibitshavore", augments={'STR+12','Rng.Acc.+10','"Store TP"+7',}}, left_ring="Ramuh Ring +1",
	head={ name="Acro Helm", augments={'Accuracy+19 Attack+19','Haste+3','DEX+8',}}, body="Rao Togi", hands={ name="Ryuo Tekko", augments={'DEX+10','Accuracy+20','"Dbl.Atk."+3',}}, 
	feet={ name="Rao Sune-Ate", augments={'STR+10','DEX+10','Attack+15',}}, neck="Combatant's Torque", waist="Kentarch Belt +1", left_ear="Zennaroi Earring", right_ear="Telos Earring",
    legs="Kasuga Haidate +1",right_ring="Cacoethic Ring +1", back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10',}},}

	sets.aftercast.o.lowacc=set_combine(sets.aftercast.tp.lowacc,{left_ring="Oneiros Ring",})

	sets.aftercast.o.medacc=set_combine(sets.aftercast.tp.medacc,{left_ring="Oneiros Ring",})

	sets.aftercast.o.highacc=set_combine(sets.aftercast.tp.highacc,{left_ring="Oneiros Ring",})
-- tp sets

-- defensive sets
	sets.hybrid.lowacc=set_combine(sets.aftercast.tp.lowacc, {neck="Loricate Torque +1", back="Mollusca Mantle", left_ring="Vocane Ring", right_ring="Defending Ring",})
	
	sets.hybrid.medacc=set_combine(sets.hybrid.lowacc, {neck="Combatant's Torque", back=Takaha, waist="Olseni Belt"})
	
	sets.hybrid.highacc={main="Dojikiri Yasutsuna", sub="Bloodrain Strap", range={ name="Cibitshavore", augments={'STR+12','Rng.Acc.+10','"Store TP"+7',}},
	head={ name="Founder's Corona", augments={'DEX+6','Accuracy+10','Magic dmg. taken -3%',}}, neck="Combatant's Torque", waist="Dynamic Belt +1",
    body={ name="Found. Breastplate", augments={'Accuracy+7','Mag. Acc.+5','Attack+7',}}, left_ear="Zennaroi Earring", right_ear="Cessance Earring",
    hands={ name="Founder's Gauntlets", augments={'STR+8','Attack+15','"Mag.Atk.Bns."+13','Phys. dmg. taken -3%',}}, left_ring="Vocane Ring",
    legs={ name="Founder's Hose", augments={'MND+5','Mag. Acc.+13',}}, right_ring="Defending Ring", back=Takaha,
	feet={ name="Founder's Greaves", augments={'VIT+9','Accuracy+14','"Mag.Atk.Bns."+13','Mag. Evasion+15',}},}
	
	sets.pdt={main="Dojikiri Yasutsuna", sub="Bloodrain Strap", range={ name="Cibitshavore", augments={'STR+12','Rng.Acc.+10','"Store TP"+7',}}, left_ear="Genmei Earring", left_ring="Vocane Ring",
	head="Genmei Kabuto", body={ name="Valorous Mail", augments={'Accuracy+25 Attack+25','Crit. hit damage +2%','DEX+6','Accuracy+10','Attack+8',}}, right_ear="Telos Earring",
	hands={ name="Sakonji Kote +1", augments={'Enhances "Blade Bash" effect',}}, legs={ name="Valor. Hose", augments={'Accuracy+20 Attack+20','Crit.hit rate+4','DEX+6','Accuracy+11',}},
    feet={ name="Amm Greaves", augments={'HP+50','VIT+9','Accuracy+14','Damage taken-1%',}}, neck="Loricate Torque +1", waist="Flume Belt", right_ring="Defending Ring",
	back="Agema Cape",}
	
	sets.mdt={main="Dojikiri Yasutsuna",
    sub="Bloodrain Strap",
    range={ name="Cibitshavore", augments={'STR+12','Rng.Acc.+10','"Store TP"+7',}}, head={ name="Founder's Corona", augments={'DEX+7','Accuracy+11','Magic dmg. taken -3%',}},
	body="Kyujutsugi", hands="Kurys Gloves", legs="Osmium Cuisses", feet={ name="Amm Greaves", augments={'HP+50','VIT+9','Accuracy+14','Damage taken-1%',}}, waist="Flume Belt",
	neck="Loricate Torque +1", left_ear="Etiolation Earring", right_ear="Sanare Earring", left_ring="Shadow Ring", right_ring="Defending Ring", back="Engulfer Cape +1",}
	
	sets.dt={main="Dojikiri Yasutsuna", sub="Bloodrain Strap", range={ name="Cibitshavore", augments={'STR+12','Rng.Acc.+10','"Store TP"+7',}}, head="Loess Barbuta +1",
	body="Mekira Meikogai", hands={ name="Sakonji Kote +1", augments={'Enhances "Blade Bash" effect',}}, legs="Osmium Cuisses", right_ear="Sanare Earring",
	feet={ name="Amm Greaves", augments={'HP+50','VIT+9','Accuracy+14','Damage taken-1%',}}, neck="Loricate Torque +1", waist="Flume Belt", left_ear="Etiolation Earring",
	left_ring="Vocane Ring", right_ring="Defending Ring", back="Mollusca Mantle",}
-- defensive sets

-- other idle sets
	sets.idle.pdt=sets.pdt
	
	sets.idle.pdtkite=set_combine(sets.idle.pdt,{back="Shadow Mantle", feet="Danzo Sune-Ate",})
	
	sets.idle.mdt=sets.mdt
	
	sets.idle.mdtkite=set_combine(sets.idle.mdt,{feet="Danzo Sune-Ate"})
	
	sets.idle.dt=sets.dt
	
	sets.idle.dtkite=set_combine(sets.idle.dt,{back="Shadow Mantle", feet="Danzo Sune-Ate",})
	
	sets.idle.standard={main="Dojikiri Yasutsuna", sub="Bloodrain Strap", range={ name="Cibitshavore", augments={'STR+12','Rng.Acc.+10','"Store TP"+7',}},
	head="Rao Kabuto", body="Rao Togi", hands="Rao Kote",--[[hands={ name="Sakonji Kote +1", augments={'Enhances "Blade Bash" effect',}},]] legs="Osmium Cuisses",
	feet="Danzo Sune-Ate", neck="Sanctity Necklace", waist="Flume Belt", left_ear="Infused Earring", right_ear="Sanare Earring", left_ring="Paguroidea Ring",
	right_ring="Sheltered Ring", back="Shadow Mantle",}
-- other idle sets

-- seigan/thirdeye sets
	sets.seigan={head="Kasuga Kabuto", legs=stplegs,}
	sets.seiganthirdeye={head="Kasuga Kabuto", legs="Sakonji Haidate +1",}
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
		if WSMode=="damage" then
			equip(sets.ws.dmg[spell.english])
		elseif WSMode=="acc" then
			equip(sets.ws.acc[spell.english])
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
			if player.mp<99 and oneiros==on then
				equip(sets.aftercast.tp[Acc])
			else
				equip(sets.aftercast.o[Acc])
			end
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
end

function self_command(command)
	-- accuracy variable commands rule start
	if command == 'lowacc' then
		Acc="lowacc"
		add_to_chat(206, 'Low Accuracy Mode')
		send_command('alias tp gs equip sets.aftercast.tp.lowacc')
		windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/lowacc.png')
		windower.prim.set_size('ACC_SET',200,30)
		if TPSet=="hybrid" then
			send_command('alias hybrid gs equip sets.hybrid.lowacc')
		end
	elseif command == 'medacc' then
		Acc="medacc"
		add_to_chat(206, 'Medium Accuracy Mode')		
		send_command('alias tp gs equip sets.aftercast.tp.medacc')
		windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/medacc.png')
		windower.prim.set_size('ACC_SET',200,30)
		if TPSet=="hybrid" then
			send_command('alias hybrid gs equip sets.hybrid.medacc')
		end
	elseif command == 'highacc' then
		Acc="highacc"
		add_to_chat(206, 'High Accuracy Mode')
		send_command('alias tp gs equip sets.aftercast.tp.highacc')
		windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/highacc.png')
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
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/ddmode.png')
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/ddmode.wav')
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
			windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/hybridmode.png')
			windower.prim.set_size('TP_SET',200,30)
		end
	end
	if command == 'pdt' then
		TPSet="pdt"
		add_to_chat(206, 'PDT MODE')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/pdtmode.png')
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/dtsets.wav')
		windower.prim.set_size('TP_SET',200,30)
	end
	if command == 'mdt' then
		TPSet="mdt"
		add_to_chat(206, 'MDT MODE')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/mdtmode.png')
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/dtsets.wav')
		windower.prim.set_size('TP_SET',200,30)
	end
	if command == 'dt' then
		TPSet="dt"
		add_to_chat(206, 'DT MODE')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/dtmode.png')
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/dtsets.wav')
		windower.prim.set_size('TP_SET',200,30)
	end
	-- engage variable commands rule end
	
	-- ws variable rule
	if command=="wsacctoggle" then
		if WSMode=="dmg" then
			WSMode="acc"
			add_to_chat(206, 'WSMODE: ACCURACY')
			windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/acc.png')
			windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/acc.wav')
			windower.prim.set_size('WS_SET',200,30)
		else
			WSMode="dmg"
			add_to_chat(206, 'WSMODE: DAMAGE')
			windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/dmg.png')
			windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/dmg.wav')
			windower.prim.set_size('WS_SET',200,30)
		end
	end
	-- ws variable rule
	
	-- idle variable commands rule start
	if command == 'idle' then
		IdleMode="standard"
		add_to_chat(206, 'STANDARD IDLE MODE')
		send_command('alias idle gs equip sets.idle.standard')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/standardidle.png')
		windower.prim.set_size('IDLE_SET',200,30)
		status_change(player.status)
	end
	if command == 'kitepdt' then
		IdleMode="pdtkite"
		add_to_chat(206, 'PDT KITING MODE')
		send_command('alias idle gs equip sets.idle.pdtkite')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/pdtkite.png')
		windower.prim.set_size('IDLE_SET',200,30)
		status_change(player.status)
	end
	if command == 'kitemdt' then
		IdleMode="mdtkite"
		add_to_chat(206, 'MDT KITING MODE')
		send_command('alias idle gs equip sets.idle.mdtkite')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/mdtkite.png')
		windower.prim.set_size('IDLE_SET',200,30)
		status_change(player.status)
	end
	if command == 'pdtidle' then
		IdleMode="pdt"
		add_to_chat(206, 'PDT IDLE MODE')
		send_command('alias idle gs equip sets.idle.pdt')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/pdtidle.png')
		windower.prim.set_size('IDLE_SET',200,30)
		status_change(player.status)
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/dtsets.wav')
	end
	if command == 'mdtidle' then
		IdleMode="mdt"
		add_to_chat(206, 'MDT IDLE MODE')
		send_command('alias idle gs equip sets.idle.mdt')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/mdtidle.png')
		windower.prim.set_size('IDLE_SET',200,30)
		status_change(player.status)
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/dtsets.wav')
	end
	if command == 'dtidle' then
		IdleMode="dt"
		add_to_chat(206, 'DT IDLE MODE')
		send_command('alias idle gs equip sets.idle.dt')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/dtidle.png')
		status_change(player.status)
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/dtsets.wav')
	end
	if command == 'dtkite' then
		IdleMode="dtidle"
		add_to_chat(206, 'DT KITING MODE')
		send_command('alias idle gs equip sets.idle.dtkite')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/dtkite.png')
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
	
	if command == 'update' then
		status_change(player.status)		
	end
	if command=='primfix' then
		windower.prim.set_size('TP_SET',200,30)
		windower.prim.set_size('ACC_SET',200,30)
		windower.prim.set_size('IDLE_SET',200,30)
		windower.prim.set_size('WS_SET',200,30)		
	end
end