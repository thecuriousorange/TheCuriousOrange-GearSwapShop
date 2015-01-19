function get_sets()
-- include
	include('boxes.lua')
-- include
-- Elements for skillchain names
skillchain_elements = {}
skillchain_elements.Light = S{'Light','Fire','Wind','Lightning'}
skillchain_elements.Darkness = S{'Dark','Ice','Earth','Water'}
skillchain_elements.Fusion = S{'Light','Fire'}
skillchain_elements.Fragmentation = S{'Wind','Lightning'}
skillchain_elements.Distortion = S{'Ice','Water'}
skillchain_elements.Gravitation = S{'Dark','Earth'}
skillchain_elements.Transfixion = S{'Light'}
skillchain_elements.Compression = S{'Dark'}
skillchain_elements.Liquification = S{'Fire'}
skillchain_elements.Induration = S{'Ice'}
skillchain_elements.Detonation = S{'Wind'}
skillchain_elements.Scission = S{'Earth'}
skillchain_elements.Impaction = S{'Lightning'}
skillchain_elements.Reverberation = S{'Water'}

--aliases
	send_command('alias ddset gs equip sets.aftercast.tp.multi')
	send_command('alias accset gs equip sets.aftercast.highacc.low')
--aliases

--keybinds
	send_command('bind #4 gs equip sets.aftercast.idle')
	send_command('bind #2 gs equip sets.aftercast.pdt')
	send_command('bind #8 gs equip sets.aftercast.mdt')
	send_command('bind #h gs equip sets.aftercast.hybrid')
	send_command('bind #t ddset')
	send_command('bind #a accset')
	send_command('bind @r gs c rr')
	send_command('bind @F1 gs c DD')
	send_command('bind @F2 gs c Hybrid')
	send_command('bind @F3 gs c PDT')
	send_command('bind @F4 gs c MDT')
	send_command('bind @f12 gs c ws_dmg_or_acc')
	send_command('bind #F1 gs c style1;alias ddset gs equip sets.aftercast.tp.multi')
	send_command('bind #F2 gs c style2;alias ddset gs equip sets.aftercast.tp.acc')
	send_command('bind #F3 gs c style3;alias ddset gs equip sets.aftercast.tp.xhit')
	send_command('bind #f4 gs c low;alias ddset gs equip sets.aftercast.tp.highacclow')
	send_command('bind #f5 gs c med;alias ddset gs equip sets.aftercast.tp.highaccmed')
	send_command('bind #f6 gs c high;alias ddset gs equip sets.aftercast.tp.highacchigh')
	send_command('bind #f7 gs c IVhit;alias ddset gs equip sets.aftercast.tp.IVhit')
--keybinds

--default text box setup
	send_command('text tpvariable text "DD MODE"')
	send_command('text idlevariable text "STYLE I"')
	send_command('text wsvariable text "WSMODE: DMG"')
	send_command('text pdtvariable text "RR UNLOCKED"')
--default text box setup

--macro selection
	send_command('input /macro book 4;input /macro set 1')
--macro selection

--variables	
	TPMode="DD"
	TPType="multi"	
	WSMode="damage"
	rrlock="rroff"
		
	sets.TPMode= T{}
	sets.TPType= T{}
	sets.WSMode= T{}
	sets.rrlock= T{}
--variables

--base names
	sets.precast={}
	sets.midcast={}
	sets.aftercast={}
	sets.aftercast.tp={}
	sets.aftercast.o={}
	sets.aftercast.highacc={}
	sets.precast.ja={}
	sets.precast.ws={}
	sets.precast.accws={}
	sets.idle={}
	sets.bloodrain={sub="Bloodrain Strap",}
	sets.polegrip={sub="Pole Grip",}
--base names

--ja sets
	sets.precast.ja["Meikyo Shisui"]={}
	
	sets.precast.ja["Warding Circle"]={head="Wakido Kabuto +1",}
	
	sets.precast.ja["Third Eye"]={}
	
	sets.precast.ja["Hasso"]={}
	
	sets.precast.ja["Meditate"]={head="Wakido Kabuto +1", hands="Sakonji Kote +1",}
	
	sets.precast.ja["Seigan"]={}
	
	sets.precast.ja["Konzen-ittai"]={}
	
	sets.precast.ja["Shikikoyo"]={}
	
	sets.precast.ja["Blade Bash"]={hands="Sakonji Kote +1",}
	
	sets.precast.ja["Sengikori"]={}
	
	sets.precast.ja["Hamanoha"]={}
	
	sets.precast.ja["Hagakure"]={}
	
	sets.precast.ja["Yaegasumi"]={}
--ja sets

--ws sets
	sets.strws={main="Tsurumaru", sub="Pole Grip", range="Cibitshavore", ammo="Tulfaire Arrow", head="Otomi Helm", body="Phorcys Korazin", hands="Miki. Gauntlets", 
	legs="Xaddi Cuisses", feet="Sak. Sune-Ate +1", neck="Justiciar's Torque", waist="Windbuffet Belt +1",
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", right_ring="Ifrit Ring",
    back="Buquwik Cape",}
	
	sets.accws={main="Tsurumaru", sub="Pole Grip", range="Cibitshavore", ammo="Tulfaire Arrow", head="Otomi Helm", body="Mes. Haubergeon", hands="Miki. Gauntlets", 
	legs="Miki. Cuisses", feet="Sak. Sune-Ate +1", neck="Justiciar's Torque", waist="Windbuffet Belt +1",
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", right_ring="Ifrit Ring",
    back="Buquwik Cape",}
	
	sets.raws={main="Tsurumaru", sub="Pole Grip", range="Cibitshavore", ammo="Tulfaire Arrow", head="Sakonji Kabuto +1",
	body="Kyujutsugi", hands="Unkai Kote +2", legs="Miki. Cuisses", feet="Sak. Sune-Ate +1",
	neck="Light Gorget", waist="Light Belt", left_ear="Moonshade Earring", right_ear="Drone Earring", 
	left_ring="Stormsoul Ring", right_ring="Bellona's Ring", back="Terebellum Mantle",}
	
	sets.precast.accws["Tachi: Enpi"]= set_combine(sets.accws, {neck="Snow Gorget", waist="Snow Belt",})
	
	sets.precast.accws["Tachi: Hobaku"]= sets.accws
	
	sets.precast.accws["Tachi: Goten"]= sets.accws
	
	sets.precast.accws["Tachi: Kagero"]= sets.accws
	
	sets.precast.accws["Tachi: Jinpu"]= sets.accws
	
	sets.precast.accws["Tachi: Koki"]= sets.accws
	
	sets.precast.accws["Tachi: Yukikaze"]= set_combine(sets.accws, {neck="Snow Gorget", waist="Snow Belt",})
	
	sets.precast.accws["Tachi: Gekko"]= set_combine(sets.accws, {neck="Snow Gorget", waist="Snow Belt",})
	
	sets.precast.accws["Tachi: Shoha"]= set_combine(sets.accws, {neck="Shadow Gorget", waist="Shadow Belt",})
	
	sets.precast.accws["Tachi: Kasha"]= set_combine(sets.accws, {neck="Shadow Gorget", waist="Shadow Belt",})
	
	sets.precast.accws["Tachi: Kaiten"]= set_combine(sets.accws, {neck="Light Gorget", waist="Light Belt",})
	
	sets.precast.accws["Tachi: Rana"]= set_combine(sets.accws, {neck="Shadow Gorget", waist="Shadow Belt",})
	
	sets.precast.accws["Tachi: Fudo"]= set_combine(sets.accws, {neck="Snow Gorget", waist="Snow Belt", feet="Ejekamal Boots",})
	
	sets.precast.ws["Tachi: Enpi"]= set_combine(sets.strws, {neck="Snow Gorget", waist="Snow Belt",})
	
	sets.precast.ws["Tachi: Hobaku"]= sets.strws
	
	sets.precast.ws["Tachi: Goten"]= sets.strws
	
	sets.precast.ws["Tachi: Kagero"]= sets.strws
	
	sets.precast.ws["Tachi: Jinpu"]= sets.strws
	
	sets.precast.ws["Tachi: Koki"]= sets.strws
	
	sets.precast.ws["Tachi: Yukikaze"]= set_combine(sets.strws, {neck="Snow Gorget", waist="Snow Belt",})
	
	sets.precast.ws["Tachi: Gekko"]= set_combine(sets.strws, {neck="Snow Gorget", waist="Snow Belt",})
	
	sets.precast.ws["Tachi: Shoha"]= set_combine(sets.strws, {neck="Shadow Gorget", waist="Shadow Belt",})
	
	sets.precast.ws["Tachi: Kasha"]= set_combine(sets.strws, {neck="Shadow Gorget", waist="Shadow Belt",})
	
	sets.precast.ws["Tachi: Kaiten"]= set_combine(sets.strws, {neck="Light Gorget", waist="Light Belt",})
	
	sets.precast.ws["Tachi: Rana"]= set_combine(sets.strws, {neck="Shadow Gorget", waist="Shadow Belt",})
	
	sets.precast.ws["Tachi: Fudo"]= set_combine(sets.strws, {neck="Snow Gorget", waist="Metalsinger Belt",})
	
	sets.precast.ws["Flaming Arrow"]= sets.raws
	
	sets.precast.ws["Piercing Arrow"]= sets.raws
	
	sets.precast.ws["Dulling Arrow"]= sets.raws
	
	sets.precast.ws["Sidewinder"]= sets.raws
	
	sets.precast.ws["Refulgent Arrow"]= sets.raws
	
	sets.precast.ws["Apex Arrow"]= sets.raws
--ws sets

--ws day bonus
	sets.wsdaybonus={head="Gavialis Helm",}
--ws day bonus

--sub nin stuff
	sets.precast.nin={}
	
	sets.midcast.nin={}
--sub nin stuff

--tp sets
	sets.aftercast.tp.multi={main="Tsurumaru", sub="Pole Grip", range="Cibitshavore", ammo="Tulfaire Arrow", head="Otomi Helm", body="Mes. Haubergeon", hands="Wakido Kote +1", 
	legs="Otronif Brais +1", feet="Otronif Boots +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1", left_ear="Steelflash Earring", 
	right_ear="Bladeborn Earring", left_ring="K'ayres Ring", right_ring="Rajas Ring", back={ name="Takaha Mantle", augments={'STR+4','"Zanshin"+4','"Store TP"+1',}},}
	
	sets.aftercast.tp.acc= set_combine(sets.aftercast.tp.multi, {head="Yaoyotl Helm",})
	
	sets.aftercast.tp.IVhit={main="Tsurumaru", sub="Bloodrain Strap",
	range={ name="Cibitshavore", augments={'STR+12','Rng.Acc.+10','"Store TP"+7',}}, ammo="Tulfaire Arrow",
	head={ name="Sakonji Kabuto +1", augments={'Enhances "Ikishoten" effect',}},
    body={ name="Sakonji Domaru +1", augments={'Enhances "Overwhelm" effect',}},
    hands={ name="Sakonji Kote +1", augments={'Phys. dmg. taken -3%','Crit.hit rate+2',}},
    legs={ name="Otronif Brais +1", augments={'Phys. dmg. taken -3%','Crit.hit rate+1',}},
    feet={ name="Sak. Sune-Ate +1", augments={'Enhances "Meikyo Shisui" effect',}},
    neck="Asperity Necklace", waist="Goading Belt", left_ear="Tripudio Earring", right_ear="Brutal Earring",
    left_ring="K'ayres Ring", right_ring="Rajas Ring", back={ name="Takaha Mantle", augments={'STR+4','"Zanshin"+4','"Store TP"+1',}},}
	
	sets.aftercast.tp.xhit= set_combine(sets.aftercast.tp.acc, {head="Sakonji Kabuto +1", body="Sakonji Domaru +1", left_ear="Tripudio Earring", right_ear="Brutal Earring",})
	
	sets.aftercast.o.multi= set_combine(sets.aftercast.tp.multi, {left_ring="Oneiros Ring",})
	
	sets.aftercast.o.acc= set_combine(sets.aftercast.tp.acc, {left_ring="Oneiros Ring",})
	
	sets.aftercast.o.IVhit={main="Tsurumaru", sub="Bloodrain Strap",
	range={ name="Cibitshavore", augments={'STR+12','Rng.Acc.+10','"Store TP"+7',}}, ammo="Tulfaire Arrow",
	head={ name="Sakonji Kabuto +1", augments={'Enhances "Ikishoten" effect',}},
    body={ name="Sakonji Domaru +1", augments={'Enhances "Overwhelm" effect',}},
    hands={ name="Sakonji Kote +1", augments={'Phys. dmg. taken -3%','Crit.hit rate+2',}},
    legs={ name="Otronif Brais +1", augments={'Phys. dmg. taken -3%','Crit.hit rate+1',}},
    feet={ name="Sak. Sune-Ate +1", augments={'Enhances "Meikyo Shisui" effect',}},
    neck="Asperity Necklace", waist="Goading Belt", left_ear="Tripudio Earring", right_ear="Brutal Earring",
    left_ring="K'ayres Ring", right_ring="Rajas Ring", back={ name="Takaha Mantle", augments={'STR+4','"Zanshin"+4','"Store TP"+1',}},}
	
	sets.aftercast.o.xhit= set_combine(sets.aftercast.tp.xhit, {left_ring="Oneiros Ring",})
	
	sets.aftercast.hybrid={main="Tsurumaru", sub="Pole Grip", range="Cibitshavore", ammo="Tulfaire Arrow", head="Gavialis Helm", body="Mekira Meikogai", hands="Sakonji Kote +1", 
	legs="Otronif Brais +1", feet="Otronif Boots +1", neck="Twilight Torque", waist="Dynamic Belt +1", left_ear="Steelflash Earring",
	right_ear="Bladeborn Earring", left_ring="Patricius Ring", right_ring="Defending Ring", back="Mollusca Mantle",}
--tp sets

--high acc sets
	sets.aftercast.tp.highacclow= set_combine(sets.aftercast.tp.acc, {neck="Iqabi Necklace", legs="Xaddi Cuisses",})
	
	sets.aftercast.tp.highaccmed= set_combine(sets.aftercast.tp.highacclow, {neck="Iqabi Necklace", waist="Anguinus Belt",})
	
	sets.aftercast.tp.highacchigh= set_combine(sets.aftercast.tp.highaccmed, {left_ear="Zennaroi Earring", right_ear="Tripudio Earring",})
	
	sets.aftercast.o.highacclow= set_combine(sets.aftercast.tp.highacclow, {left_ring="Oneiros Ring",})
	
	sets.aftercast.o.highaccmed= set_combine(sets.aftercast.tp.highaccmed, {left_ring="Oneiros Ring",})
	
	sets.aftercast.o.highacchigh= set_combine(sets.aftercast.tp.highacchigh, {left_ring="Oneiros Ring",})
--high acc sets
--
--dt sets
	sets.aftercast.pdt={main="Tsurumaru", sub="Pole Grip", range="Cibitshavore", ammo="Tulfaire Arrow", head="Otronif Mask +1", body="Mekira Meikogai", hands="Sakonji Kote +1", 
	legs="Otronif Brais +1", feet="Otronif Boots +1", neck="Twilight Torque", waist="Flume Belt", right_ear="Sanare Earring",
	left_ring="Patricius Ring", right_ring="Defending Ring", back="Mollusca Mantle",}
	
	sets.aftercast.mdt= set_combine(sets.aftercast.pdt, {left_ring="Shadow Ring",})
--dt sets
--
--idle sets
	sets.aftercast.idle={main="Tsurumaru", sub="Pole Grip", range="Cibitshavore", ammo="Tulfaire Arrow", head="Twilight Helm", body="Twilight Mail", hands="Sakonji Kote +1", 
	legs="Otronif Brais +1", feet="Danzo Sune-Ate", neck="Twilight Torque", waist="Flume Belt", left_ear="Ethereal Earring",
	right_ear="Sanare Earring", right_ring="Sheltered Ring", left_ring="Shadow Ring", back="Shadow Mantle",}
--idle sets

--special case sets
	sets.rr={head="Twilight Helm", body="Twilight Mail",}
--special case sets

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
			equip(sets.precast.ws[spell.english])
		elseif WSMode=="acc" then
			equip(sets.precast.accws[spell.english])
		end
	end
	if spell.prefix=='/ranged' then
		equip(sets.raws)
	end
	if spell.type == 'WeaponSkill' then
		if is_sc_element_today(spell) then
			equip(sets.wsdaybonus)
		end
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
	if player.status=='Engaged' then		
		if TPMode=='DD' then
			if player.mp<99 then
				equip(sets.aftercast.tp[TPType])
			else
				equip(sets.aftercast.o[TPType])
			end
		elseif TPMode=='Hybrid' then
			equip(sets.aftercast.hybrid)
		elseif TPMode=='PDT' then
			equip(sets.aftercast.pdt)
		elseif TPMode=='MDT' then
			equip(sets.aftercast.mdt)			
		end
	else
		equip(sets.aftercast.idle)
	end
end

function status_change(new,old)
	if new=='Engaged' then
		if TPMode=='DD' then
			if player.mp<99 then
				equip(sets.aftercast.tp[TPType])
			else
				equip(sets.aftercast.o[TPType])
			end
		elseif TPMode=='Hybrid' then
			equip(sets.aftercast.hybrid)
		elseif TPMode=='PDT' then
			equip(sets.aftercast.pdt)
		elseif TPMode=='MDT' then
			equip(sets.aftercast.mdt)		
		end
	else
		equip(sets.aftercast.idle)
	end
end

function self_command(command)
	if command=="DD" then
		if TPMode=="DD" then
			add_to_chat(206, 'DD MODE ALREADY ACTIVE')
		else
			TPMode="DD"
			add_to_chat(206, 'DD MODE')
			send_command('text tpvariable text "DD MODE"')
		end
	end
	if command=="ws_dmg_or_acc" then
		if WSMode=="damage" then
			WSMode="acc"
			add_to_chat(206, 'WSMODE: ACCURACY')
			send_command('text wsvariable text "WSMODE: ACC"')			
		else
			WSMode="damage"
			add_to_chat(206, 'WSMODE: DAMAGE')
			send_command('text wsvariable text "WSMODE: DMG"')			
		end
	end
	if command=="low" then
		TPType="highacclow"
		send_command('text idlevariable text "low-acc"')
		add_to_chat(206, 'ACCURACY UP SET: LOW')
		enable('sub')
		equip(sets.polegrip)
	end
	if command=="med" then
		TPType="highaccmed"
		send_command('text idlevariable text "med-acc"')
		add_to_chat(206, 'ACCURACY UP SET: MED')
		enable('sub')
		equip(sets.polegrip)
	end
	if command=="high" then
		TPType="highacchigh"
		send_command('text idlevariable text "high-acc"')
		add_to_chat(206, 'ACCURACY UP SET: HIGH')
		enable('sub')
		equip(sets.polegrip)
	end
	if command=="IVhit" then
		TPType="IVhit"
		send_command('text idlevariable text "IV-hit"')
		add_to_chat(206, '4 HIT MODE')
		equip(sets.bloodrain)
		disable('sub')
	end
	if command=="Hybrid" then
		if TPMode=="Hybrid" then
			add_to_chat(206, 'Hybrid MODE ALREADY ACTIVE')
		else
			TPMode="Hybrid"
			add_to_chat(206, 'HYBRID MODE')
			send_command('text tpvariable text "HYBRID MODE"')
		end
	end
	if command=="PDT" then
		if TPMode=="PDT" then
			add_to_chat(206, 'PDT MODE ALREADY ACTIVE')
		else
			TPMode="PDT"
			add_to_chat(206, 'PDT MODE')
			send_command('text tpvariable text "PDT MODE"')
		end
	end
	if command=="MDT" then
		if TPMode=="MDT" then
			add_to_chat(206, 'MDT MODE ALREADY ACTIVE')
		else
			TPMode="MDT"
			add_to_chat(206, 'MDT MODE')
			send_command('text tpvariable text "MDT MODE"')
		end
	end
	if command=="style1" then
		if TPType=="multi" then
			add_to_chat(206, 'multi hit style I tp set already in use')
		else
			TPType="multi"
			add_to_chat(206, 'MULTIHIT STYLE 1 SET')
			send_command('text idlevariable text "STYLE I"')
			enable('sub')
			equip(sets.polegrip)
		end
	end
	if command=="style2" then
		if TPType=="acc" then
			add_to_chat(206, 'multi hit style II tp set already in use')
		else
			TPType="acc"
			add_to_chat(206, 'MULTIHIT STYLE 2 SET')
			send_command('text idlevariable text "STYLE II"')
			enable('sub')
			equip(sets.polegrip)
		end
	end
	if command=="style3" then
		if TPType=="xhit" then
			add_to_chat(206, 'multi hit style III tp set already in use')
		else
			TPType="xhit"
			add_to_chat(206, 'MULTIHIT STYLE 3 SET')
			send_command('text idlevariable text "STYLE III"')
			enable('sub')
			equip(sets.polegrip)
		end
	end
	-- reraise lock toggle command rule start
	if command == 'rr' then
		if rrlock== "rroff" then
			equip(sets.rr)
			send_command('gs disable body;gs disable head')
			rrlock= "rron"
			send_command('text pdtvariable text "RR LOCKED"')
			add_to_chat(206, 'TWILIGHT SET LOCKED IN FOR RERAISE')
		else
			send_command('gs enable body;gs enable head')
			rrlock="rroff"
			status_change(player.status)
			send_command('text pdtvariable text "RR UNLOCKED"')
			add_to_chat(206, 'REMOVED RERAISE GEAR LOCK: RESUMING NORMAL GEARSWAPING')
		end
	end
	-- reraise lock toggle command rule end
end

function unload(new_job)
	windower.send_command('boxesoff')
end