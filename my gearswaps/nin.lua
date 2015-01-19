function get_sets()
-- include
	include('boxes.lua')
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
--base sets

--ninjutsu precast sets
	sets.precast.nin={hands="Thaumas Gloves", neck="Magoraga Beads", left_ear="Loquac. Earring", 
	right_ring="Prolix Ring", }	
--ninjutsu precast sets

--ws sets
	sets.precast.ws["Blade: Rin"]={main="Raimitsukane", sub="Kaitsuburi", ammo="Qirmiz Tathlum", head="Felistris Mask",
	neck="Rancor Collar", left_ear="Trux Earring", right_ear="Brutal Earring", body="Hachi. Chainmail", 
	hands="Hachiya Tekko", left_ring="Epona's Ring", right_ring="Rajas Ring", back="Atheling Mantle", 
	waist="Wanion Belt", legs="Hachiya Hakama", feet="Otronif Boots +1",}
	
	sets.precast.ws["Blade: Retsu"]={main="Raimitsukane", sub="Kaitsuburi", ammo="Qirmiz Tathlum", head="Felistris Mask",
	neck="Rancor Collar", left_ear="Trux Earring", right_ear="Brutal Earring", body="Hachi. Chainmail", 
	hands="Hachiya Tekko", left_ring="Epona's Ring", right_ring="Rajas Ring", back="Atheling Mantle", 
	waist="Wanion Belt", legs="Hachiya Hakama", feet="Otronif Boots +1",}
	
	sets.precast.ws["Blade: Teki"]={main="Raimitsukane", sub="Kaitsuburi", ammo="Bomb Core", head="Felistris Mask",
	neck="Breeze Gorget", right_ear="Brutal Earring", left_ear="Trux Earring", body="Hachi. Chainmail", 
	hands="Otronif Gloves +1", left_ring="Epona's Ring", right_ring="Ifrit Ring", back="Atheling Mantle",
	waist="Wanion Belt", legs="Hachiya Hakama", feet="Otronif Boots +1",}
	
	sets.precast.ws["Blade: To"]={main="Raimitsukane", sub="Kaitsuburi", ammo="Bomb Core", head="Felistris Mask",
	neck="Breeze Gorget", right_ear="Brutal Earring", left_ear="Trux Earring", body="Hachi. Chainmail", 
	hands="Otronif Gloves +1", left_ring="Epona's Ring", right_ring="Ifrit Ring", back="Atheling Mantle",
	waist="Wanion Belt", legs="Hachiya Hakama", feet="Otronif Boots +1",}
	
	sets.precast.ws["Blade: Chi"]={main="Raimitsukane", sub="Kaitsuburi", ammo="Bomb Core", head="Felistris Mask",
	neck="Breeze Gorget", right_ear="Brutal Earring", left_ear="Trux Earring", body="Hachi. Chainmail", 
	hands="Otronif Gloves +1", left_ring="Epona's Ring", right_ring="Ifrit Ring", back="Atheling Mantle",
	waist="Wanion Belt", legs="Hachiya Hakama", feet="Otronif Boots +1",}
	
	sets.precast.ws["Blade: Ei"]={main="Raimitsukane", sub="Kaitsuburi", ammo="Bomb Core", head="Felistris Mask",
	neck="Breeze Gorget", right_ear="Brutal Earring", left_ear="Trux Earring", body="Hachi. Chainmail", 
	hands="Otronif Gloves +1", left_ring="Epona's Ring", right_ring="Ifrit Ring", back="Atheling Mantle",
	waist="Wanion Belt", legs="Hachiya Hakama", feet="Otronif Boots +1",}
	
	sets.precast.ws["Blade: Jin"]={main="Raimitsukane", sub="Kaitsuburi", ammo="Qirmiz Tathlum", head="Felistris Mask",
	neck="Breeze Gorget", left_ear="Trux Earring", right_ear="Brutal Earring", body="Hachi. Chainmail", 
	hands="Hachiya Tekko", left_ring="Epona's Ring", right_ring="Rajas Ring", back="Rancorous Mantle", 
	waist="Breeze Belt", legs="Hachiya Hakama", feet="Otronif Boots +1",}
	
	sets.precast.ws["Blade: Ten"]={main="Raimitsukane", sub="Kaitsuburi", ammo="Bomb Core", head="Felistris Mask",
	neck="Breeze Gorget", right_ear="Brutal Earring", left_ear="Trux Earring", body="Hachi. Chainmail", 
	hands="Otronif Gloves +1", left_ring="Epona's Ring", right_ring="Ifrit Ring", back="Atheling Mantle",
	waist="Wanion Belt", legs="Hachiya Hakama", feet="Otronif Boots +1",}
	
	sets.precast.ws["Blade: Ku"]={main="Raimitsukane", sub="Kaitsuburi", ammo="Bomb Core", head="Felistris Mask",
	neck="Breeze Gorget", right_ear="Brutal Earring", left_ear="Trux Earring", body="Hachi. Chainmail", 
	hands="Otronif Gloves +1", left_ring="Epona's Ring", right_ring="Ifrit Ring", back="Atheling Mantle",
	waist="Wanion Belt", legs="Hachiya Hakama", feet="Otronif Boots +1",}
	
	sets.precast.ws["Blade: Yu"]={main="Raimitsukane", sub="Kaitsuburi", ammo="Bomb Core", head="Felistris Mask",
	neck="Breeze Gorget", right_ear="Brutal Earring", left_ear="Trux Earring", body="Hachi. Chainmail", 
	hands="Otronif Gloves +1", left_ring="Epona's Ring", right_ring="Ifrit Ring", back="Atheling Mantle",
	waist="Wanion Belt", legs="Hachiya Hakama", feet="Otronif Boots +1",}
	
	sets.precast.ws["Blade: Kamu"]={main="Raimitsukane", sub="Kaitsuburi", ammo="Bomb Core", head="Felistris Mask",
	neck="Breeze Gorget", right_ear="Brutal Earring", left_ear="Trux Earring", body="Hachi. Chainmail", 
	hands="Otronif Gloves +1", left_ring="Epona's Ring", right_ring="Ifrit Ring", back="Atheling Mantle",
	waist="Wanion Belt", legs="Hachiya Hakama", feet="Otronif Boots +1",}
	
	sets.precast.ws["Blade: Hi"]={main="Raimitsukane", sub="Kaitsuburi", ammo="Qirmiz Tathlum", head="Uk'uxkaj Cap", 
	neck="Hope Torque", left_ear="Moonshade Earring", right_ear="Brutal Earring", body="Hachi. Chainmail", 
	hands="Hachiya Tekko", left_ring="Epona's Ring", right_ring="Dumakulem's Ring", back="Rancorous Mantle", 
	waist="Caudata Belt", legs="Nahtirah Trousers", feet="Otronif Boots +1",}
--ws sets

--ninjutsu midcast sets
	sets.midcast.nin.utsu={main="Raimitsukane", sub="kaitsuburi", ammo="Qirmiz Tathlum", head="Felistris Mask",
	neck="Torero Torque", left_ear="Loquac. Earring", right_ear="Iga Mimikazari", body="Hachi. Chainmail", 
	hands="Thaumas Gloves", left_ring="Portus Annulet", right_ring="Prolix Ring", back="Fravashi Mantle", 
	waist="Pya'ekue Belt", legs="Hachiya Hakama", feet="Iga Kyahan +2",}
	
	sets.midcast.nin.buff=sets.midcast.nin.utsu
	
	sets.midcast.nin.enfeeble=sets.midcast.nin.utsu
	
	sets.midcast.nin.nuke=sets.midcast.nin.utsu
--ninjutsu midcast sets

--tp sets
	sets.aftercast.tp.vhhaste={main="Raimitsukane", sub="Kaitsuburi", ammo="Qirmiz Tathlum", head="Felistris Mask",
	body="Thaumas Coat", hands="Otronif Gloves +1", legs="Hachiya Hakama", feet="Otronif Boots +1",
	neck="Rancor Collar", waist="Windbuffet Belt +1", right_ear="Brutal Earring", left_ear="Trux Earring",
	left_ring="Epona's Ring", right_ring="Rajas Ring", back="Atheling Mantle",}
	
	sets.aftercast.tp.hhaste= set_combine(sets.aftercast.tp.vhhaste, {legs="Mochizuki Hakama",})
	
	sets.aftercast.tp.mhhaste= set_combine(sets.aftercast.tp.hhaste, {left_ear="Dudgeon Earring", 
	right_ear="Heartseeker Earring",})
	
	sets.aftercast.tp.mhaste= set_combine(sets.aftercast.tp.mhhaste, {head="Iga Zukin +2", 
	left_ear="Suppanomimi", right_ear="Brutal Earring",})
	
	sets.aftercast.tp.mlhaste= set_combine(sets.aftercast.tp.mhhaste, {body="Hachi. Chainmail",})
	
	sets.aftercast.tp.lhaste= set_combine(sets.aftercast.tp.mlhaste, {head="Iga Zukin +2", 
	left_ear="Suppanomimi", right_ear="Brutal Earring",})
	
	sets.aftercast.tp.vlhaste= set_combine(sets.aftercast.tp.lhaste, {left_ear="Dudgeon Earring", 
	right_ear="Heartseeker Earring",})
	
	sets.aftercast.acc={ammo="Jukukik Feather", head="Whirlpool Mask", left_ring="Beeline Ring", 
	right_ring="Portus Annulet", waist="Hurch'lan Sash", body="Manibozho Jerkin", back="Yokaze Mantle",}
	
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
	head="Whirlpool Mask", neck="Torero Torque", left_ear="Ethereal Earring", right_ear="Iga Mimikazari",
	body="Otro. Harness +1", hands="Hachiya Tekko", left_ring="Portus Annulet", right_ring="Beeline Ring",
	back="Fravashi Mantle", waist="Sveltesse Gouriz", legs="Otronif Brais +1", feet="Otronif Boots +1",}
--Evasion sets

--dt sets
	sets.aftercast.pdt={main="Raimitsukane", sub="Kaitsuburi", ammo="Demonry Stone", head="Otronif Mask +1",
	body="Arhat's Gi +1", hands="Otronif Gloves +1", legs="Otronif Brais +1", feet="Otronif Boots +1", 
	neck="Twilight Torque", waist="Flume Belt", left_ear="Ethereal Earring", right_ear="Iga Mimikazari",
	left_ring="Patricius Ring", right_ring="Dark Ring", back="Mollusca Mantle",}
	
	sets.aftercast.mdt={main="Raimitsukane", sub="Kaitsuburi", ammo="Demonry Stone", head="Whirlpool Mask",
	body="Manibozho Jerkin", hands="Otronif Gloves +1", legs="Nahtirah Trousers", feet="Otronif Boots +1",
	neck="Twilight Torque", waist="Flume Belt", left_ear="Ethereal Earring", right_ear="Sanare Earring",
	left_ring="Shadow Ring", right_ring="Dark Ring", back="Mollusca Mantle",}
--dt sets

--idle sets
	sets.aftercast.idle.day={main="Raimitsukane", sub="Kaitsuburi", ammo="Demonry Stone", head="Oce. Headpiece +1", 
	neck="Wiglen Gorget", left_ear="ethereal Earring", right_ear="Sanare Earring", body="Arhat's Gi +1", 
	hands="Otronif Gloves +1", left_ring="Shadow Ring", right_ring="Sheltered Ring", back="Shadow Mantle", waist="Flume Belt", legs="Otronif Brais +1", feet="Danzo Sune-ate",}
	
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
	if player.status== 'Engaged' then
		if TPSet=="DD" then
			equip(sets.aftercast.tp[TPType])
		elseif TPSet=="ACC" then
			equip(sets.aftercast.acc[TPType])
		elseif TPSet=="EVASION" then
			equip(sets.aftercast.evasion)		
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
	if new=='Engaged' then
		if TPSet=="DD" then
			equip(sets.aftercast.tp[TPType])
		elseif TPSet=="ACC" then
			equip(sets.aftercast.acc[TPType])
		elseif TPSet=="EVASION" then
			equip(sets.aftercast.evasion)		
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

function unload(new_job)
	windower.send_command('boxesoff')
end