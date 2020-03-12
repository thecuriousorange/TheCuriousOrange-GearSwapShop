function get_sets()
-- include
	include('boxes.lua')
	include('organizer-lib.lua')
-- include
--aliases
	send_command('alias tp gs equip sets.aftercast.tp.vlhaste')
	send_command('alias idle gs equip sets.aftercast.idle.day')	
--aliases

--keybinds
	send_command('bind @f1 gs c dd')
	send_command('bind @f2 gs c acc')
	send_command('bind @f3 gs c evasion')
	send_command('bind @f4 gs c pdt')
	send_command('bind @f5 gs c mdt')
	send_command('bind #f1 gs c vhh')
	send_command('bind #f2 gs c hh')
	send_command('bind #f3 gs c mhh')
	send_command('bind #f4 gs c mh')
	send_command('bind #f5 gs c mlh')
	send_command('bind #f6 gs c lh')
	send_command('bind #f7 gc c vlh')
	send_command('bind #2 gs equip sets.aftercast.pdt')
	send_command('bind #4 idle')
	send_command('bind #8 gs equip sets.aftercast.mdt')
	send_command('bind #t tp')
	
--keybinds

--macro setup

--macro setup

--variables
	TPSet="DD"
	TPType="vlhaste"	
	IdleMode="day"
	
	sets.TPSet= T{}
	sets.TPType= T{}	
	sets.IdleMode= T{}
--variables
--lists
	nin_utsu= S{"Utsusemi: Ichi", "Utsusemi: Ni"}
	nin_nukes= S{"Hyoton: Ichi", "Hyoton: Ni", "Hyoton: San", "Katon: Ichi", "Katon: Ni", "Katon: San", "Huton: Ichi", "Huton: Ni", "Huton: San", "Doton: Ichi", "Doton: Ni", "Doton: San", "Raiton: Ichi", "Raiton: Ni", "Raiton: San", "Suiton: Ichi", "Suiton: Ni", "Suiton: San",}
	nin_enfeeble= S{}
	nin_buff= S{}
--lists
--base sets	
	sets.precast={}
	sets.precast.ws={}
	sets.midcast={}
	sets.midcast.nin={}
	sets.aftercast={}
	sets.aftercast.tp={}
	sets.aftercast.idle={}
	sets.tp={}
--base sets

--ninjutsu precast sets
	sets.precast.fc={main={ name="Kanaria", augments={'Crit. hit damage +3%','DEX+7','Accuracy+19','Attack+18','DMG:+13',}},
    sub={ name="Ochu", augments={'STR+10','DEX+10','Ninjutsu skill +10','DMG:+15',}},
    ammo="Sapience Orb",
    head={ name="Herculean Helm", augments={'Accuracy+2','Damage taken-4%','STR+6','Attack+13',}},
    body={ name="Samnuha Coat", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+5','"Dual Wield"+5',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}},
    legs="Arjuna Breeches",
    feet={ name="Amm Greaves", augments={'HP+50','VIT+9','Accuracy+14','Damage taken-1%',}},
    neck="Voltsurge Torque",
    waist="Flume Belt",
    left_ear="Etiolation Earring",
    right_ear="Loquac. Earring",
    left_ring="Prolix Ring",
    right_ring="Kishar Ring",
    back="Shadow Mantle",}
	sets.precast.nin=set_combine(sets.precast.fc, {neck="Magoraga Beads",})
--ninjutsu precast sets

--ws sets
	sets.precast.ws["Blade: Rin"]={main="Raimitsukane", sub="Kaitsuburi", ammo="Qirmiz Tathlum", head="Skormoth Mask",
	neck="Rancor Collar", left_ear="Trux Earring", right_ear="Brutal Earring", body="Hachi. Chainmail", 
	hands="Hachiya Tekko", left_ring="Epona's Ring", right_ring="Rajas Ring", back="Bleating Mantle", 
	waist="Wanion Belt", legs="Hachiya Hakama", feet="Otronif Boots +1",}
	
	sets.precast.ws["Blade: Retsu"]={main="Raimitsukane", sub="Kaitsuburi", ammo="Qirmiz Tathlum", head="Skormoth Mask",
	neck="Rancor Collar", left_ear="Trux Earring", right_ear="Brutal Earring", body="Hachi. Chainmail", 
	hands="Hachiya Tekko", left_ring="Epona's Ring", right_ring="Rajas Ring", back="Bleating Mantle", 
	waist="Wanion Belt", legs="Hachiya Hakama", feet="Otronif Boots +1",}
	
	sets.precast.ws["Blade: Teki"]={main="Raimitsukane", sub="Kaitsuburi", ammo="Ginsen", head="Skormoth Mask",
	neck="Fotia Gorget", right_ear="Brutal Earring", left_ear="Trux Earring", body="Hachi. Chainmail", 
	hands="Otronif Gloves +1", left_ring="Epona's Ring", right_ring="Ifrit Ring", back="Bleating Mantle",
	waist="Wanion Belt", legs="Hachiya Hakama", feet="Otronif Boots +1",}
	
	sets.precast.ws["Blade: To"]={main="Raimitsukane", sub="Kaitsuburi", ammo="Ginsen", head="Skormoth Mask",
	neck="Fotia Gorget", right_ear="Brutal Earring", left_ear="Trux Earring", body="Hachi. Chainmail", 
	hands="Otronif Gloves +1", left_ring="Epona's Ring", right_ring="Ifrit Ring", back="Bleating Mantle",
	waist="Wanion Belt", legs="Hachiya Hakama", feet="Otronif Boots +1",}
	
	sets.precast.ws["Blade: Chi"]={main="Raimitsukane", sub="Kaitsuburi", ammo="Ginsen", head="Skormoth Mask",
	neck="Fotia Gorget", right_ear="Brutal Earring", left_ear="Trux Earring", body="Hachi. Chainmail", 
	hands="Otronif Gloves +1", left_ring="Epona's Ring", right_ring="Ifrit Ring", back="Bleating Mantle",
	waist="Wanion Belt", legs="Hachiya Hakama", feet="Otronif Boots +1",}
	
	sets.precast.ws["Blade: Ei"]={main="Raimitsukane", sub="Kaitsuburi", ammo="Ginsen", head="Skormoth Mask",
	neck="Fotia Gorget", right_ear="Brutal Earring", left_ear="Trux Earring", body="Hachi. Chainmail", 
	hands="Otronif Gloves +1", left_ring="Epona's Ring", right_ring="Ifrit Ring", back="Bleating Mantle",
	waist="Wanion Belt", legs="Hachiya Hakama", feet="Otronif Boots +1",}
	
	sets.precast.ws["Blade: Jin"]={main="Raimitsukane", sub="Kaitsuburi", ammo="Qirmiz Tathlum", head="Skormoth Mask",
	neck="Fotia Gorget", left_ear="Trux Earring", right_ear="Brutal Earring", body="Hachi. Chainmail", 
	hands="Hachiya Tekko", left_ring="Epona's Ring", right_ring="Rajas Ring", back="Rancorous Mantle", 
	waist="Fotia Belt", legs="Hachiya Hakama", feet="Otronif Boots +1",}
	
	sets.precast.ws["Blade: Ten"]={main="Raimitsukane", sub="Kaitsuburi", ammo="Ginsen", head="Skormoth Mask",
	neck="Fotia Gorget", right_ear="Brutal Earring", left_ear="Trux Earring", body="Hachi. Chainmail", 
	hands="Otronif Gloves +1", left_ring="Epona's Ring", right_ring="Ifrit Ring", back="Bleating Mantle",
	waist="Wanion Belt", legs="Hachiya Hakama", feet="Otronif Boots +1",}
	
	sets.precast.ws["Blade: Ku"]={main="Raimitsukane", sub="Kaitsuburi", ammo="Ginsen", head="Skormoth Mask",
	neck="Fotia Gorget", right_ear="Brutal Earring", left_ear="Trux Earring", body="Hachi. Chainmail", 
	hands="Otronif Gloves +1", left_ring="Epona's Ring", right_ring="Ifrit Ring", back="Bleating Mantle",
	waist="Wanion Belt", legs="Hachiya Hakama", feet="Otronif Boots +1",}
	
	sets.precast.ws["Blade: Yu"]={main="Raimitsukane", sub="Kaitsuburi", ammo="Ginsen", head="Skormoth Mask",
	neck="Fotia Gorget", right_ear="Brutal Earring", left_ear="Trux Earring", body="Hachi. Chainmail", 
	hands="Otronif Gloves +1", left_ring="Epona's Ring", right_ring="Ifrit Ring", back="Bleating Mantle",
	waist="Wanion Belt", legs="Hachiya Hakama", feet="Otronif Boots +1",}
	
	sets.precast.ws["Blade: Kamu"]={main={ name="Kanaria", augments={'Crit. hit damage +3%','DEX+7','Accuracy+19','Attack+18','DMG:+13',}},
    sub={ name="Ochu", augments={'STR+10','DEX+10','Ninjutsu skill +10','DMG:+15',}},
    ammo="Seeth. Bomblet +1",
    head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
        hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs="Hiza. Hizayoroi +2",
    feet="Mummu Gamash. +1",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Telos Earring",
    left_ring="Epona's Ring",
    right_ring="Regal Ring",
    back="Buquwik Cape",}
	
	sets.precast.ws["Blade: Hi"]={main={ name="Kanaria", augments={'Crit. hit damage +3%','DEX+7','Accuracy+19','Attack+18','DMG:+13',}},
    sub={ name="Ochu", augments={'STR+10','DEX+10','Ninjutsu skill +10','DMG:+15',}},
    ammo="Yetshila",
    head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands="Mummu Wrists +1",
    legs="Hiza. Hizayoroi +2",
    feet="Mummu Gamash. +1",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear="Telos Earring",
    left_ring="Ilabrat Ring",
    right_ring="Regal Ring",
    back="Rancorous Mantle",}
--ws sets

--ninjutsu midcast sets
	sets.midcast.nin.utsu=set_combine(sets.precast.nin, {hands="Mochizuki Tekko",back="Andartia's Mantle", feet="Hattori Kyahan",})
	
	sets.midcast.nin.buff=sets.midcast.nin.utsu
	
	sets.midcast.nin.enfeeble=sets.midcast.nin.utsu
	
	sets.midcast.nin.nuke=sets.midcast.nin.utsu
--ninjutsu midcast sets

--tp sets
	sets.tp.lowacc={main={ name="Kanaria", augments={'Crit. hit damage +3%','DEX+7','Accuracy+19','Attack+18','DMG:+13',}},
    sub={ name="Ochu", augments={'STR+10','DEX+10','Ninjutsu skill +10','DMG:+15',}},
    ammo="Ginsen",
    head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
        hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
    feet={ name="Herculean Boots", augments={'Accuracy+24','"Triple Atk."+3',}},
    neck="Moonbeam Nodowa",
    waist="Chiner's Belt +1",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Hetairoi Ring",
    right_ring="Regal Ring",
    back="Ground. Mantle +1",}
	
	sets.aftercast.tp.vhhaste={main="Raimitsukane", sub="Kaitsuburi", ammo="Qirmiz Tathlum", head="Skormoth Mask",
	body="Thaumas Coat", hands="Otronif Gloves +1", legs="Hachiya Hakama", feet="Otronif Boots +1",
	neck="Rancor Collar", waist="Windbuffet Belt +1", right_ear="Brutal Earring", left_ear="Trux Earring",
	left_ring="Epona's Ring", right_ring="Rajas Ring", back="Bleating Mantle",}
	
	sets.aftercast.tp.hhaste= set_combine(sets.aftercast.tp.vhhaste, {legs="Mochizuki Hakama",})
	
	sets.aftercast.tp.mhhaste= set_combine(sets.aftercast.tp.hhaste, {left_ear="Suppanomimi", 
	right_ear="Eabani Earring",})
	
	sets.aftercast.tp.mhaste= set_combine(sets.aftercast.tp.mhhaste, {head="Hattori Zukin ", 
	left_ear="Suppanomimi", right_ear="Brutal Earring",})
	
	sets.aftercast.tp.mlhaste= set_combine(sets.aftercast.tp.mhhaste, {body="Hachi. Chainmail",})
	
	sets.aftercast.tp.lhaste= set_combine(sets.aftercast.tp.mlhaste, {head="Hattori Zukin ", 
	left_ear="Suppanomimi", right_ear="Brutal Earring",})
	
	sets.aftercast.tp.vlhaste= set_combine(sets.aftercast.tp.lhaste, {left_ear="Suppanomimi", 
	right_ear="Eabani Earring",})
	
	sets.aftercast.acc={ammo="Jukukik Feather", head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','DEX+7','Accuracy+12','Attack+13',}}, left_ring="Beeline Ring", 
	right_ring="Portus Annulet", waist="Hurch'lan Sash", body="Abnoba Kaftan", back="Yokaze Mantle",}
	
	sets.aftercast.acc.vhhaste= set_combine(sets.aftercast.tp.vhhaste, sets.aftercast.acc)
	
	sets.aftercast.acc.hhaste= set_combine(sets.aftercast.tp.hhaste, sets.aftercast.acc)
	
	sets.aftercast.acc.mhhaste= set_combine(sets.aftercast.tp.mhhaste, sets.aftercast.acc)
	
	sets.aftercast.acc.mhaste= set_combine(sets.aftercast.tp.mhaste, sets.aftercast.acc)
	
	sets.aftercast.acc.mlhaste= set_combine(sets.aftercast.tp.mlhaste, sets.aftercast.acc)
	
	sets.aftercast.acc.lhaste= set_combine(sets.aftercast.tp.lhaste, sets.aftercast.acc)
	
	sets.aftercast.acc.vlhaste= set_combine(sets.aftercast.tp.vlhaste, sets.aftercast.acc)
--tp sets

--Evasion sets
	sets.aftercast.evasion={main="Raimitsukane", sub="Kaitsuburi", ammo="Qirmiz Tathlum", 
	head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','DEX+7','Accuracy+12','Attack+13',}}, neck="Combatant's Torque", left_ear="Ethereal Earring", right_ear="Iga Mimikazari",
	body="Otro. Harness +1", hands="Hachiya Tekko", left_ring="Portus Annulet", right_ring="Beeline Ring",
	back="Fravashi Mantle", waist="Sveltesse Gouriz", legs="Otronif Brais +1", feet="Otronif Boots +1",}
--Evasion sets

--dt sets
	sets.aftercast.pdt={main="Raimitsukane", sub="Kaitsuburi", ammo="Vanir Battery", head="Otronif Mask +1",
	body="Arhat's Gi +1", hands="Otronif Gloves +1", legs="Otronif Brais +1", feet="Otronif Boots +1", 
	neck="Loricate Torque +1", waist="Flume Belt", left_ear="Ethereal Earring", right_ear="Iga Mimikazari",
	left_ring="Patricius Ring", right_ring="Vocane Ring +1", back="Moonbeam Cape",}
	
	sets.aftercast.mdt={main="Raimitsukane", sub="Kaitsuburi", ammo="Vanir Battery", head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','DEX+7','Accuracy+12','Attack+13',}},
	body="Abnoba Kaftan", hands="Otronif Gloves +1", legs="Nahtirah Trousers", feet="Otronif Boots +1",
	neck="Loricate Torque +1", waist="Flume Belt", left_ear="Ethereal Earring", right_ear="Sanare Earring",
	left_ring="Shadow Ring", right_ring="Vocane Ring +1", back="Moonbeam Cape",}
--dt sets

--idle sets
	sets.aftercast.idle.day={
    main={ name="Kanaria", augments={'Crit. hit damage +3%','DEX+7','Accuracy+19','Attack+18','DMG:+13',}},
    sub={ name="Ochu", augments={'STR+10','DEX+10','Ninjutsu skill +10','DMG:+15',}},
    ammo="Vanir Battery",
    head="Oce. Headpiece +1",
    body="Hiza. Haramaki +2",
    hands={ name="Herculean Gloves", augments={'Attack+30','Damage taken-3%','AGI+8',}},
    legs="Arjuna Breeches",
    feet="Danzo Sune-Ate",
    neck="Sanctity Necklace",
    waist="Flume Belt",
    left_ear="Ethereal Earring",
    right_ear="Sanare Earring",
    left_ring="Shadow Ring",
    right_ring="Sheltered Ring",
    back="Shadow Mantle",
}
	sets.aftercast.idle.night= set_combine(sets.aftercast.idle.day, {feet="Hachiya Kyahan",})	
--idle sets
end

function precast(spell)
	if spell.type=="WeaponSkill" then
		equip(sets.precast.ws[spell.english])
	end
	if spell.type=="JobAbility" then
		equip(sets.precast.ja[spell.english])
	end
	if spell.type=="Ninjutsu" then
		equip(sets.precast.nin)
	end
end

function midcast(spell)
	if spell.type=="Ninjutsu" then
		if nin_nukes:contains(spell.english) then
			equip(sets.midcast.nin.nuke)
		end
		if nin_enfeeble:contains(spell.english) then
			equip(sets.midcast.nin.enfeeble)
		end
		if nin_buff:contains(spell.english) then
			equip(sets.midcast.nin.buff)
		end
		if nin_utsu:contains(spell.english) then
			equip(sets.midcast.nin.utsu)
		end
	end
end

function aftercast(spell)
	status_change(player.status)
end

function status_change(new,old)
	if new=='Engaged' then
		equip(sets.tp.lowacc)
		--[[if TPSet=="DD" then
			equip(sets.aftercast.tp[TPType])
		elseif TPSet=="ACC" then
			equip(sets.aftercast.acc[TPType])
		elseif TPSet=="EVASION" then
			equip(sets.aftercast.evasion)		
		elseif TPSet=="PDT" then
			equip(sets.aftercast.pdt)
		elseif TPSet=="MDT" then
			equip(sets.aftercast.mdt)
		end]]
	else
		equip(sets.aftercast.idle[IdleMode])
	end	
end

function self_command(command)
--tp type commands
	if command=="vhh" then
		TPType="vhhaste"
		if TPSet=="DD" then
			send_command('alias tp gs equip sets.aftercast.tp.vhhaste')
		elseif TPSet=="ACC" then
			send_command('alias tp gs equip sets.aftercast.acc.vhhaste')
		end
	elseif command=="hh" then
		TPType="hhhaste"
		if TPSet=="DD" then
			send_command('alias tp gs equip sets.aftercast.tp.hhaste')
		elseif TPSet=="ACC" then
			send_command('alias tp gs equip sets.aftercast.acc.hhaste')
		end
	elseif command=="mhh" then
		TPType="mhhaste"
		if TPSet=="DD" then
			send_command('alias tp gs equip sets.aftercast.tp.mhhaste')
		elseif TPSet=="ACC" then
			send_command('alias tp gs equip sets.aftercast.acc.mhhaste')
		end
	elseif command=="mh" then
		TPType="mhaste"
		if TPSet=="DD" then
			send_command('alias tp gs equip sets.aftercast.tp.mhaste')
		elseif TPSet=="ACC" then
			send_command('alias tp gs equip sets.aftercast.acc.mhaste')
		end
	elseif command=="mlh" then
		TPType="mlhaste"
		if TPSet=="DD" then
			send_command('alias tp gs equip sets.aftercast.tp.mlhaste')
		elseif TPSet=="ACC" then
			send_command('alias tp gs equip sets.aftercast.acc.mlhaste')
		end
	elseif command=="lh" then
		TPType="lhaste"
		if TPSet=="DD" then
			send_command('alias tp gs equip sets.aftercast.tp.lhaste')
		elseif TPSet=="ACC" then
			send_command('alias tp gs equip sets.aftercast.acc.lhaste')
		end
	elseif command=="vlh" then
		TPType="vlhaste"
		if TPSet=="DD" then
			send_command('alias tp gs equip sets.aftercast.tp.vlhaste')
		elseif TPSet=="ACC" then
			send_command('alias tp gs equip sets.aftercast.acc.vlhaste')
		end
	end
--tp type commands

--engaged set commands
	if command=="dd" then
		TPSet="DD"
	elseif command=="acc" then
		TPSet="ACC"
	elseif command=="evasion" then
		TPSet="EVASION"	
	elseif command=="PDT" then
		TPSet="PDT"
	elseif command=="MDT" then
		TPSet="MDT"
	end
--engaged set commands

--idle set commands
	if command=="day" then
		IdleMode="day"
	elseif command=="night" then
		IdleMode="day"
	end
--idle set commands
end

function file_unload(new_job)
	windower.send_command('boxesoff')
end