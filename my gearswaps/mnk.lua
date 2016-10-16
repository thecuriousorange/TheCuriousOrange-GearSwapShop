function get_sets()
-- include
	include('boxes.lua')
	include('organizer-lib.lua')
-- include
-- aliases
	send_command('alias tp gs equip sets.aftercast.tp.styleI')
	send_command('alias hybrid gs equip sets.aftercast.hybridA')
	send_command('alias idle gs equip sets.aftercast.idle.regen')
	send_command('alias tpo gs equip sets.aftercast.tp.o.styleI')
-- aliases

-- keybinds
	send_command('bind #4 idle')
	send_command('bind #2 gs equip sets.aftercast.pdt')
	send_command('bind #8 gs equip sets.aftercast.mdt')
	send_command('bind #t tp')
	send_command('bind #g tpo')
	send_command('bind #h hybrid')
	send_command('bind @f1 gs c dd')
	send_command('bind @f2 gs c hybrid')
	send_command('bind @f3 gs c pdt')
	send_command('bind @f4 gs c mdt')
	send_command('bind #f1 gs c v1')
	send_command('bind #f2 gs c v2')
	send_command('bind #f3 gs c v3')
	send_command('bind #f4 gs c v4')
	send_command('bind #f5 gs c v5')
	send_command('bind #f6 gs c v6')
	send_command('bind #f7 gs c v7')
	send_command('bind #f8 gs c v8')
	send_command('bind @f9 gs c idle')
	send_command('bind @f10 gs c pdtidle')
	send_command('bind @f5 gs c HA')
	send_command('bind @f6 gs c HB')
	send_command('bind @f7 gs c HC')
	send_command('bind @f8 gs c HD')
	send_command('bind @f12 gs c impetustoggle')
-- keybinds

--default text box setup
	send_command('text tpvariable text "DD MODE";text idlevariable text "STYLE I";text wsvariable text "REGEN IDLE";text pdtvariable text "Hybrid-A"')
--default text box setup

-- macro selection
	send_command('input /macro book 9;input /macro set 1')
-- macro selection

--
	taeonhead={ name="Taeon Chapeau", augments={'Accuracy+17 Attack+17','"Triple Atk."+2','Crit. hit damage +3%',}}
	taeonbody={ name="Taeon Tabard", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','Crit. hit damage +3%',}}
	taeonhands={ name="Taeon Gloves", augments={'Accuracy+16 Attack+16','"Triple Atk."+2','Crit. hit damage +3%',}}
	taeonlegs={ name="Taeon Tights", augments={'Accuracy+17 Attack+17','"Triple Atk."+2','Crit. hit damage +2%',}}
	taeonfeet={ name="Taeon Boots", augments={'Accuracy+19 Attack+19','"Triple Atk."+2','Crit. hit damage +2%',}}
--

-- variables
	TPSet="DD"
	TPType="styleI"
	HybridType="hybridA"
	IdleMode="regen"
	Impetus_Mode="0"
	
	sets.TPSet= T{}
	sets.TPType= T{}
	sets.HybridType= T{}
	sets.IdleMode= T{}	
-- variables

-- base names
	sets.precast={}
	sets.precast.ja={}
	sets.precast.ws={}	
	sets.midcast={}
	sets.aftercast={}
	sets.aftercast.tp={}
	sets.aftercast.tp.o={}	
	sets.aftercast.hybrid={}
	sets.aftercast.idle={}
-- base names
	
-- ja sets
	sets.precast.ja['Boost']={hands="Anch. Gloves +1",}
	sets.precast.ja['Chakra']={head="Genmei Kabuto", body="Anch. Cyclas +1", hands="Hes. Gloves +1", legs="Nahtirah Trousers", feet="Otronif Boots +1", }
	sets.precast.ja['Chi Blast']={}
	sets.precast.ja['Focus']={head="Anchor. Crown +1",}
	sets.precast.ja['Dodge']={feet="Anch. Gaiters +1",}
	sets.precast.ja['Mantra']={feet="Hes. Gaiters",}
	sets.precast.ja['Hundred Fists']={legs="Hes. Hose +1",}
	sets.precast.ja['Counterstance']={feet="Hes. Gaiters",}
	sets.precast.ja['Formless Strikes']={body="Hes. Cyclas",}
	sets.precast.ja['Impetus']={Body="Bhikku Cyclas",}
	sets.precast.ja['Inner Strength']={}
-- ja sets

-- ws sets	
	sets.dex={ammo="Honed Tathlum", left_ear="Bladeborn Earring", head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','DEX+7','Accuracy+12','Attack+13',}}, neck="Justiciar's Torque", 
	left_ring="Ramuh Ring +1", left_ear="Steelflash Earring", hands="Anch. Gloves +1", right_ring="Rajas Ring", 
	body="Abnoba Kaftan", back="Bleating Mantle", waist="Wanion Belt", legs="Samnuha Tights", 
	feet="Taeon Boots",}
	
	sets.crit={right_ring="Ifrit Ring", ammo="Potestas Bomblet", head="Uk'uxkaj Cap", neck="Rancor Collar",
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", body="Anch. Cyclas +1", hands="Anch. Gloves +1",
	back="Buquwik Cape", waist="Caudata Belt", legs="Otronif Brais +1", feet="Adhemar Gamashes", 
	left_ring="Epona's Ring",}
	
	sets.multi={ammo="Honed Tathlum", neck="Asperity Necklace", head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','DEX+7','Accuracy+12','Attack+13',}}, body="Rawhide Vest",
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", hands="Adhemar Wristbands", left_ring="Epona's Ring",
	right_ring="Rajas Ring", back="Bleating Mantle", waist="Windbuffet Belt +1", legs="Samnuha Tights",  
	feet="Taeon Boots",}
	
	sets.kicks={ammo="Honed Tathlum", head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','DEX+7','Accuracy+12','Attack+13',}}, neck="Fotia Gorget", left_ear="Steelflash Earring",
	right_ear="Bladeborn Earring", body="Bhikku Cyclas", hands="Hes. Gloves +1", left_ring="Ifrit Ring +1",
	right_ring="Rajas Ring", back="Bleating Mantle", waist="Fotia Belt", legs="Samnuha Tights", 
	feet="Samnuha Tights",}
	
	sets.precast.ws["Combo"]= sets.multi
	
	sets.precast.ws["Shoulder Tackle"]= sets.multi
	
	sets.precast.ws["One Inch Punch"]= sets.multi
	
	sets.precast.ws["Backhand Blow"]= sets.multi
	
	sets.precast.ws["Raging Fists"]= sets.multi
	
	sets.precast.ws["Spinning Attack"]= sets.multi
	
	sets.precast.ws["Howling Fist"]= sets.crit
	
	sets.precast.ws["Dragon Kick"]= sets.kicks
	
	sets.precast.ws["Asuran Fists"]= sets.multi
	
	sets.precast.ws["Ascetic's Fury"]= sets.crit
	
	sets.precast.ws["Tornado Kick"]= sets.kicks
	
	sets.precast.ws["Victory Smite"]= sets.crit
	
	sets.precast.ws["Shijin Spiral"]= sets.dex
-- ws sets

-- impetus tp
	sets.impetustp={head="Uk'uxkaj Cap", body="Bhikku Cyclas",}
-- impetus tp
	
-- sub nin stuff
	sets.precast.nin={main="Denouements", ammo="Vanir Battery", head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','DEX+7','Accuracy+12','Attack+13',}},
    body={ name="Samnuha Coat", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+5','"Dual Wield"+5',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}},
    legs={ name="Rawhide Trousers", augments={'MP+50','"Fast Cast"+5','"Refresh"+1',}},
    neck="Magoraga Beads",
    waist="Windbuffet Belt +1",
    left_ear="Loquac. Earring",
    right_ear="Etiolation Earring",
    left_ring="Prolix Ring",
    right_ring="Rahab Ring",
    back="Mollusca Mantle",}
	
	sets.midcast.nin={head="Haruspex Hat",
    body="Samnuha Coat",
    hands="Leyline Gloves",
    legs="Samnuha Tights",
    feet="Adhemar Gamashes",
    neck="Magoraga Beads",
    waist="Black Belt",
    left_ear="Loquac. Earring",
    right_ear="Sanare Earring",
    left_ring="Prolix Ring",
    right_ring="Defending Ring",
    back="Shadow Mantle",}
-- sub nin stuff

-- tp sets	
	sets.aftercast.tp.styleI={main="Denouements", ammo="Focal Orb",
	head="Skormoth Mask", body="Thaumas Coat",
	hands=taeonhands,
    legs="Samnuha Tights", waist="Windbuffet Belt +1",
    feet=taeonfeet, neck="Asperity Necklace",
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Epona's Ring", right_ring="Petrov Ring",
	back="Bleating Mantle",}
	
	
	
	sets.aftercast.tp.styleII= set_combine(sets.aftercast.tp.styleI, {body="Rawhide Vest",})
	
	sets.aftercast.tp.styleIII= set_combine(sets.aftercast.tp.styleII, {head=taeonhead, ammo="Honed Tathlum", neck="Combatant's Torque", waist="Olseni Belt", back="Anchoret's Mantle", left_ear="Zennaroi Earring", right_ear="Cessance Earring",})
	
	sets.aftercast.tp.styleIV= set_combine(sets.aftercast.tp.styleIII, {left_ring="Mars's Ring", right_ring="Patricius Ring",})
	
	sets.aftercast.tp.styleV= set_combine(sets.aftercast.tp.styleIV, {body="Otro. Harness +1",})
	
	sets.aftercast.tp.styleVI= set_combine(sets.aftercast.tp.styleV, {feet="Taeon Boots",})
	
	sets.aftercast.tp.styleVII= set_combine(sets.aftercast.tp.styleVI, {hands="Hes. Gloves +1",})
	
	sets.aftercast.tp.styleVIII= set_combine(sets.aftercast.tp.styleVII, {body="Mekosu. Harness", back="Anchoret's Mantle", waist="Grunfeld Rope",})
	
	sets.aftercast.tp.o.styleI= set_combine(sets.aftercast.tp.styleI, {right_ring="Oneiros Ring",})
	
	sets.aftercast.tp.o.styleII= set_combine(sets.aftercast.tp.styleII, {right_ring="Oneiros Ring",})
	
	sets.aftercast.tp.o.styleIII= set_combine(sets.aftercast.tp.styleIII, {right_ring="Oneiros Ring",})
	
	sets.aftercast.tp.o.styleIV= set_combine(sets.aftercast.tp.styleIV, {right_ring="Oneiros Ring",})
	
	sets.aftercast.tp.o.styleV= set_combine(sets.aftercast.tp.styleV, {right_ring="Oneiros Ring",})
	
	sets.aftercast.tp.o.styleVI= set_combine(sets.aftercast.tp.styleVI, {right_ring="Oneiros Ring",})
	
	sets.aftercast.tp.o.styleVII= set_combine(sets.aftercast.tp.styleVII, {right_ring="Oneiros Ring",})
	
	sets.aftercast.tp.o.styleVIII= set_combine(sets.aftercast.tp.styleVIII, {right_ring="Oneiros Ring",})

	sets.aftercast.hybridA={head="Otronif Mask +1", body="Otro. Harness +1", hands="Otronif Gloves +1", 
	waist="Windbuffet Belt +1", legs="Otronif Brais +1", feet="Otronif Boots +1", left_ear="Bladeborn Earring", 
	right_ear="Steelflash Earring", neck="Asperity Necklace", back="Bleating Mantle", left_ring="Epona's Ring", 
	right_ring="Rajas Ring",}
	
	sets.aftercast.hybridB= set_combine(sets.aftercast.hybridA, {body="Arhat's Gi +1", 
	neck="Loricate Torque +1", back="Mollusca Mantle", waist="Black Belt",})
	
	sets.aftercast.hybridC= set_combine(sets.aftercast.hybridB, {left_ring="Patricius Ring", 
	right_ring="Defending Ring",})
	
	sets.aftercast.hybridD= set_combine(sets.aftercast.hybridC, {feet="Otronif Boots +1",})
-- tp sets	
	
-- DT sets	
	sets.aftercast.pdt={head="Genmei Kabuto", body="Onca Suit", neck="Loricate Torque +1", waist="Black Belt",
	left_ear="Genmei Earring", right_ear="Ethereal Earring", left_ring="Vocane Ring", right_ring="Defending Ring",
	back="Mollusca Mantle",}
	
	sets.aftercast.mdt= set_combine(sets.aftercast.pdt, {left_ring="Shadow Ring",})
-- DT sets

-- idle sets	
	sets.aftercast.idle.pdt={ammo="Vanir Battery", head="Otronif Mask +1", neck="Loricate Torque +1", 
	left_ear="Ethereal Earring", right_ear="Sanare Earring", body="Arhat's Gi +1", hands="Otronif Gloves +1", 
	lring="Sheltered Ring", ring="Shadow Ring", back="Shadow Mantle", waist="Black Belt", 
	legs="Otronif Brais +1", feet="Hermes' Sandals",}
	
	sets.aftercast.idle.regen= set_combine(sets.aftercast.idle.pdt, {head="Rao Kabuto", right_ear="Infused Earring",
	neck="Sanctity Necklace", body="Rao Togi", hands="Rao Kote", right_ring="Paguroidea Ring",})
-- idle sets
end

function precast(spell)	
	if spell.type=='WeaponSkill' then
		equip(sets.precast.ws[spell.english])
		if buffactive.Impetus then
			equip(sets.precast.ja["Impetus"])
		end
	elseif spell.type=='JobAbility' then
		equip(sets.precast.ja[spell.english])
	elseif spell.type=='Ninjutsu' then
		equip(sets.precast.nin)
	end
end

function midcast(spell)
	if spell.type=='Ninjutsu' then
		equip(sets.midcast.nin)
	end
end

function aftercast(spell)
	if player.status== 'Engaged' then
		if TPSet=="DD" then
			if player.mp<99 then
				equip(sets.aftercast.tp[TPType])
			else
				equip(sets.aftercast.tp.o[TPType])
			end
			if buffactive.Impetus then
				if Impetus_Mode=="1" then
					equip(sets.impetustp)
				end
			end
		elseif TPSet=="Hybrid" then
			equip(sets.aftercast[HybridType])
		elseif TPSet=="PDT" then
			equip(sets.aftercast.pdt)
		elseif TPSet=="MDT" then
			equip(sets.aftercast.mdt)
		end		
	else
		equip(sets.aftercast.idle[IdleMode])
	end
end

function status_change(new,old)
	if new== 'Engaged' then		
		if TPSet=="DD" then			
			if player.mp<99 then
				equip(sets.aftercast.tp[TPType])
			else
				equip(sets.aftercast.tp.o[TPType])
			end
			if buffactive.Impetus then
				if Impetus_Mode=="1" then
					equip(sets.impetustp)
				end
			end
		elseif TPSet=="Hybrid" then
			equip(sets.aftercast[HybridType])
		elseif TPSet=="PDT" then
			equip(sets.aftercast.pdt)
		elseif TPSet=="MDT" then
			equip(sets.aftercast.mdt)
		end
	else
		equip(sets.aftercast.idle[IdleMode])
	end
end

function self_command(command)
	--DD set variable commands rule start
	if command == 'v1' then
		TPType="styleI"
		add_to_chat(206, 'DD STYLE I SET')
		send_command('text idlevariable text "STYLE I";alias tp gs equip sets.aftercast.tp.styleI;alias tpo gs equip sets.aftercast.tp.o.styleI')
	elseif command == 'v2' then
		TPType="styleII"
		add_to_chat(206, 'DD STYLE II SET')
		send_command('text idlevariable text "STYLE II";alias tp gs equip sets.aftercast.tp.styleII;alias tpo gs equip sets.aftercast.tp.o.styleII')
	elseif command == 'v3' then
		TPType="styleIII"
		add_to_chat(206, 'DD STYLE III SET')
		send_command('text idlevariable text "STYLE III";alias tp gs equip sets.aftercast.tp.styleIII;alias tpo gs equip sets.aftercast.tp.o.styleIII')
	elseif command == 'v4' then
		TPType="styleIV"
		add_to_chat(206, 'DD STYLE IV SET')
		send_command('text idlevariable text "STYLE IV";alias tp gs equip sets.aftercast.tp.styleIV;alias tpo gs equip sets.aftercast.tp.o.styleIV')
	elseif command == 'v5' then
		TPType="styleV"
		add_to_chat(206, 'DD STYLE V SET')
		send_command('text idlevariable text "STYLE V";alias tp gs equip sets.aftercast.tp.styleV;alias tpo gs equip sets.aftercast.tp.o.styleV')
	elseif command == 'v6' then
		TPType="styleVI"
		add_to_chat(206, 'DD STYLE VI SET')
		send_command('text idlevariable text "STYLE VI";alias tp gs equip sets.aftercast.tp.styleVI;alias tpo gs equip sets.aftercast.tp.o.styleVI')
	elseif command == 'v7' then
		TPType="styleVII"
		add_to_chat(206, 'DD STYLE VII SET')
		send_command('text idlevariable text "STYLE VII";alias tp gs equip sets.aftercast.tp.styleVII;alias tpo gs equip sets.aftercast.tp.o.styleVII')
	elseif command == 'v8' then
		TPType="styleVIII"
		add_to_chat(206, 'DD STYLE VIII SET')
		send_command('text idlevariable text "STYLE VIII";alias tp gs equip sets.aftercast.tp.styleVIII;alias tpo gs equip sets.aftercast.tp.o.styleVIII')
	end
	--DD set variable commands rule end
	
	--Hybrid variable commands rule start
	if command == 'HA' then
		HybridType="hybridA"
		add_to_chat(206, 'HYBRID MODE A SET')
		send_command('text pdtvariable text "Hybrid-A"')
		send_command('alias hybrid gs equip sets.aftercast.hybridA')
	elseif command == 'HB' then
		HybridType="hybridB"
		add_to_chat(206, 'HYBRID MODE B SET')
		send_command('text pdtvariable text "Hybrid-B"')
		send_command('alias hybrid gs equip sets.aftercast.hybridB')
	elseif command == 'HC' then
		HybridType="hybridC"
		add_to_chat(206, 'HYBRID MODE C SET')
		send_command('text pdtvariable text "Hybrid-C"')
		send_command('alias hybrid gs equip sets.aftercast.hybridC')
	elseif command == 'HD' then
		HybridType="hybridD"
		add_to_chat(206, 'HYBRID MODE D SET')
		send_command('text pdtvariable text "Hybrid-D"')
		send_command('alias hybrid gs equip sets.aftercast.hybridD')
	end
	--Hybrid variable commands rule end
	
	-- engage variable commands rule start
	if command == 'dd' then
		TPSet="DD"
		add_to_chat(206, 'DD Mode')
		send_command('text tpvariable text "DD MODE"')
	elseif command == 'hybrid' then
		TPSet="Hybrid"
		add_to_chat(206, 'HYBRID MODE')
		send_command('text tpvariable text "Hybrid MODE"')
	elseif command == 'pdt' then
		TPSet="PDT"
		add_to_chat(206, 'PDT MODE')
		send_command('text tpvariable text "PDT MODE"')
	elseif command == 'mdt' then
		TPSet="MDT"
		add_to_chat(206, 'MDT MODE')
		send_command('text tpvariable text "MDT MODE"')
	end
	-- engage variable commands rule end
	
	-- impetus toggle
	if command=='impetustoggle' then
		if Impetus_Mode=="0" then
			Impetus_Mode="1"
			status_change(player.status)
			add_to_chat(206, 'IMPETUS MODE ON')
		else
			Impetus_Mode="0"
			status_change(player.status)
			add_to_chat(206, 'IMPETUS MODE OFF')
		end
	end
	-- impetus toggle
	
	-- idle variable commands rule start
	if command == 'idle' then
		IdleMode="regen"
		add_to_chat(206, 'REGEN IDLE MODE')
		send_command('text wsvariable text "REGEN IDLE";alias idle gs equip sets.aftercast.idle.regen')
	elseif command == 'pdtidle' then
		IdleMode="pdt"
		add_to_chat(206, 'PDT IDLE MODE')
		send_command('text wsvariable text "PDT IDLE";alias idle gs equip sets.aftercast.idle.pdt')
	end
	-- idle variable commands rule end	
end

function file_unload(new_job)
	windower.send_command('boxesoff')
end