function get_sets()
-- include
	include('boxes.lua')
-- include
--aliases
	send_command('alias ddset gs equip sets.aftercast.tp.lowacc')
	send_command('alias tankset gs equip sets.aftercast.hybrid.lowacc')
--aliases

--text boxes
	send_command('text tpvariable text "DD MODE"')
	send_command('text idlevariable text "LOW-ACC"')
	send_command('text pdtvariable text "GS MODE"')
	send_command('text wsvariable text "{>RUNEFENCER<}"')
--text boxes

--keybinds
	send_command('bind #4 gs equip sets.aftercast.idle')
	send_command('bind #2 gs equip sets.aftercast.pdt')
	send_command('bind #5 aquaveil')
	send_command('bind #6 phalanx')
	send_command('bind #8 gs equip sets.aftercast.mdt')
	send_command('bind #h tankset')
	send_command('bind #t ddset')
	send_command('bind #x gs equip sets.aftercast.tanking')
	send_command('bind @F1 gs c DD')
	send_command('bind @F2 gs c Hybrid')
	send_command('bind @F3 gs c PDT')
	send_command('bind @F4 gs c MDT')
	send_command('bind @F5 gs c TANK')
	send_command('bind #F1 gs c lowacc')
	send_command('bind #F2 gs c medacc')
	send_command('bind #F3 gs c highacc')
	send_command('bind #F4 gs c vhighacc')
	send_command('bind @F9 gs c greatsword')
	send_command('bind @f10 gs c onesword')
	send_command('bind @f11 gs c twoswords')
	send_command('bind @3 input /item "Remedy" <me>')
	send_command('bind #1 input /item "Echo Drops" <me>')
	send_command('bind @p input /item "Holy Water" <me>')
	send_command('bind #c crusade')
--keybinds

--macros setup

--macros setup

--variables
	WeaponType="greatsword"
	TPSet="dd"
	TPType="lowacc"
	
	sets.WeaponType= T{}
	sets.TPSet= T{}
	sets.TPType= T{}
--variables

--base sets
	sets.precast={}
	sets.precast.ja={}
	sets.precast.ws={}	
	sets.midcast={}
	sets.midcast.ma={}
	sets.aftercast={}
	sets.aftercast.tp={}
	sets.aftercast.hybrid={}
	sets.weaponry={}
--base sets

--weaponry
	sets.weaponry.greatsword={main="Aettir", sub="Pole Grip",}
	
	sets.weaponry.onesword={main="Anahera Sword",}
	
	sets.weaponry.twoswords={main="Anahera Sword", sub="Halachuinic Sword",}

--precast sets
	--ja sets
	sets.precast.ja["Valiance"]={body="Rune. Bandeau +1",}
	
	sets.precast.ja["Vallation"]={body="Rune. Bandeau +1",}
	
	sets.precast.ja["Gambit"]={hands="Runeist Mitons +1",}
	
	sets.precast.ja["Pflug"]={feet="Runeist Bottes +1",}
	
	sets.precast.ja["Battuta"]={head="Fu. Bandeau +1"}
	
	sets.precast.ja["Rayke"]={feet="Futhark Boots +1",}
	
	sets.precast.ja["Elemental Sforzo"]={body="Futhark Coat +1",}
	
	sets.precast.ja["Swordplay"]={hands="Futhark Mitons +1",}
	
	sets.precast.ja["Lunge"]={ammo="Honed Tathlum", head="A'as Circlet", body="Vanir Cotehardie", hands="Nilas Gloves",
	legs="Shned. Tights +1", feet="Qaaxo Leggings", neck="Eddy Necklace", waist="Windbuffet Belt +1", 
	left_ear="Crematio Earring", right_ear="Friomisi Earring", left_ring="Epona's Ring", right_ring="Rajas Ring",
    back="Evasionist's Cape",}
	
	sets.precast.ja["Swipe"]={ammo="Honed Tathlum", head="A'as Circlet", body="Vanir Cotehardie", hands="Nilas Gloves",
	legs="Shned. Tights +1", feet="Qaaxo Leggings", neck="Eddy Necklace", waist="Windbuffet Belt +1", 
	left_ear="Crematio Earring", right_ear="Friomisi Earring", left_ring="Epona's Ring", right_ring="Rajas Ring",
    back="Evasionist's Cape",}
	
	sets.precast.ja["Provoke"]={}
	
	sets.precast.ja["Berserk"]={}
	
	sets.precast.ja["Aggressor"]={}
	
	sets.precast.ja["Warcry"]={}
	
	sets.precast.ja["Ignirs"]={}
	
	sets.precast.ja["Gelus"]={}
	
	sets.precast.ja["Flabra"]={}
	
	sets.precast.ja["Tellus"]={}
	
	sets.precast.ja["Sulpor"]={}
	
	sets.precast.ja["Unda"]={}
	
	sets.precast.ja["Lux"]={}
	
	sets.precast.ja["Tenebrae"]={}
	--ja sets
	
	--ws sets
	sets.precast.ws["Resolution"]={ammo="Potestas Bomblet", head="Whirlpool Mask", body="Manibozho Jerkin",
	hands="Qaaxo Mitaines", legs="Manibozho Brais", feet="Qaaxo Leggings", neck="Light Gorget",
	waist="Light Belt", left_ear="Steelflash Earring", right_ear="Bladeborn Earring", 
	left_ring="Ifrit Ring", right_ring="Epona's Ring", back="Buquwik Cape",}
	
	sets.precast.ws["Requiescat"]= set_combine(sets.precast.ws["Resolution"], {neck="Shadow Gorget", waist="Shadow Belt", left_ring="Levia. Ring",})
	--ws sets
	
	--magic sets
	sets.precast.fc={head="Rune. Bandeau +1", neck="Jeweled Collar", left_ear="Loquac. Earring", body="Vanir Cotehardie",
	left_ring="Prolix Ring", hands="Thaumas Gloves", legs="Orvail Pants +1", feet="Chelona Boots",}
	
	sets.precast.enhancing= set_combine(sets.precast.fc, {waist="Siegel Sash", legs="Futhark Trousers +1",})
	--magic sets
--precast sets

--midcast sets
	sets.enhancing={head="Fu. Bandeau +1", body="Vanir Cotehardie", hands="Runeist Mitons +1", 
	legs="Futhark Trousers +1", feet="Chelona Boots", neck="Colossus's Torque", waist="Siegel Sash", 
	left_ear="Loquac. Earring", right_ear="Sanare Earring", left_ring="Levia. Ring", 
	right_ring="Shadow Ring", back="Merciful Cape",}
	
	sets.regen= set_combine(sets.precast.fc, {left_ring="Eihwaz Ring",})
	
	sets.midcast.regens= set_combine(sets.regen, {})
	
	sets.midcast.barspells= set_combine(sets.enhancing, {})
	
	sets.midcast.ma["Phalanx"]= set_combine(sets.enhancing, {})
	
	sets.midcast.ma["Stoneskin"]= set_combine(sets.enhancing, {})
	
	sets.midcast.ma["Refresh"]= set_combine(sets.enhancing, {})
	
	sets.midcast.ma["Foil"]= set_combine(sets.enhancing, {})
	
	sets.midcast.ma["Aquaveil"]= set_combine(sets.enhancing, {})
	
	sets.midcast.ma["Flash"]= set_combine(sets.precast.fc, {neck="Invidia Torque", hands="Futhark Mitons +1", left_ring="Eihwaz Ring",})	
--midcast sets

--aftercast sets
	--tp sets
	sets.aftercast.tp.lowacc={ammo="Vanir Battery", head="Felistris Mask", 
	body="Thaumas Coat", hands="Qaaxo Mitaines", legs="Quiahuiz Trousers", feet="Qaaxo Leggings", neck="Asperity Necklace", waist="Windbuffet Belt +1",
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Epona's Ring",
	right_ring="Rajas Ring", back="Atheling Mantle",}
	
	sets.aftercast.tp.medacc= set_combine(sets.aftercast.tp.lowacc, {ammo="Honed Tathlum", legs="Manibozho Brais", feet="Manibozho Boots",})
	
	sets.aftercast.tp.highacc= set_combine(sets.aftercast.tp.medacc, {head="Whirlpool Mask", neck="Iqabi Necklace", back="Letalis Mantle",})
	
	sets.aftercast.tp.vhighacc= set_combine(sets.aftercast.tp.highacc, {waist="Dynamic Belt +1", legs="Ighwa Trousers",})
	--tp sets
	
	--hybrid sets
	sets.aftercast.hybrid.lowacc={ammo="Vanir Battery", head="Fu. Bandeau +1", body="Futhark Coat +1",
	hands="Umuthi Gloves", legs="Rune. Trousers +1", feet="Futhark Boots +1", neck="Twilight Torque",
	waist="Flume Belt", left_ear="Ethereal Earring", right_ear="Brutal Earring", left_ring="Dark Ring",
	right_ring="Defending Ring", back="Mollusca Mantle",}
	
	sets.aftercast.hybrid.medacc= set_combine(sets.aftercast.hybrid.lowacc, {ammo="Honed Tathlum", back="Letalis Mantle",})
	
	sets.aftercast.hybrid.highacc= set_combine(sets.aftercast.hybrid.medacc, {head="Whirlpool Mask", neck="Iqabi Necklace",})
	
	sets.aftercast.hybrid.vhighacc= set_combine(sets.aftercast.hybrid.highacc, {waist="Dynamic Belt +1", legs="Ighwa Trousers",})
	--hybrid sets
	
	--dt sets
	sets.aftercast.pdt={ammo="Vanir Battery", head="Fu. Bandeau +1", body="Futhark Coat +1", 
	hands="Umuthi Gloves", legs="Rune. Trousers +1", feet="Iuitl Gaiters +1", neck="Twilight Torque", waist="Flume Belt",
	left_ear="Ethereal Earring", right_ear="Sanare Earring", right_ring="Defending Ring", left_ring="Dark Ring",
	back="Mollusca Mantle",}
	
	sets.aftercast.mdt= set_combine(sets.aftercast.pdt, {left_ring="Shadow Ring",})
	--dt sets
	
	--tank set
	sets.aftercast.tanking={ammo="Vanir Battery", head="Fu. Bandeau +1", body="Futhark Coat +1", hands="Umuthi Gloves",
	legs="Rune. Trousers +1", feet="Iuitl Gaiters +1", neck="Twilight Torque", waist="Flume Belt", left_ear="Steelflash Earring",
	right_ear="Bladeborn Earring", left_ring="Epona's Ring", right_ring="Defending Ring", back="Evasionist's Cape",}
	--tank set
	
	--idle sets
	sets.aftercast.idle={ammo="Vanir Battery", head="Wivre Hairpin", body="Runeist Coat +1", hands="Umuthi Gloves",
	legs="Rune. Trousers +1", feet="Hermes' Sandals", neck="Twilight Torque", waist="Flume Belt",
	left_ear="Ethereal Earring", right_ear="Sanare Earring", right_ring="Shadow Ring",
	left_ring="Sheltered Ring", back="Shadow Mantle",}
	--idle sets
--aftercast sets
end

function precast(spell)
	if spell.prefix=="/magic" then
		if spell.type=="Enhancing Magic" then
			equip(sets.weaponry[WeaponType])
			equip(sets.precast.enhancing)
		else
			equip(sets.weaponry[WeaponType])
			equip(sets.precast.fc)
		end
	elseif spell.prefix=="/ninjutsu" then
		equip(sets.precast.fc)
	elseif spell.prefix=="/jobability" then
		equip(sets.weaponry[WeaponType])
		equip(sets.precast.ja[spell.english])
	elseif spell.prefix=="/weaponskill" then
		equip(sets.weaponry[WeaponType])
		equip(sets.precast.ws[spell.english])
	end	
end

function midcast(spell)
	if spell.prefix=="/magic" then
		if string.find(spell.english, 'Regen') then
			equip(sets.weaponry[WeaponType])
			equip(sets.midcast.regens)
		elseif string.find(spell.english, 'Bar') then
			equip(sets.weaponry[WeaponType])
			equip(sets.midcast.barspells)
		else
			equip(sets.weaponry[WeaponType])
			equip(sets.midcast.ma[spell.english])
		end
	end
end

function aftercast(spell)
	if player.status=="Engaged" then
		if TPSet=="dd" then
			equip(sets.weaponry[WeaponType])
			equip(sets.aftercast.tp[TPType])
		elseif TPSet=="hybrid" then
			equip(sets.weaponry[WeaponType])
			equip(sets.aftercast.hybrid[TPType])
		elseif TPSet=="pdt" then
			equip(sets.weaponry[WeaponType])
			equip(sets.aftercast.pdt)
		elseif TPSet=="mdt" then
			equip(sets.weaponry[WeaponType])
			equip(sets.aftercast.mdt)
		end
	else
		equip(sets.weaponry[WeaponType])
		equip(sets.aftercast.idle)
	end
end

function status_change(new,old)
	if new=="Engaged" then
		if TPSet=="dd" then
			equip(sets.weaponry[WeaponType])
			equip(sets.aftercast.tp[TPType])
		elseif TPSet=="hybrid" then
			equip(sets.weaponry[WeaponType])
			equip(sets.aftercast.hybrid[TPType])
		elseif TPSet=="pdt" then
			equip(sets.weaponry[WeaponType])
			equip(sets.aftercast.pdt)
		elseif TPSet=="mdt" then
			equip(sets.weaponry[WeaponType])
			equip(sets.aftercast.mdt)
		end
	else
		equip(sets.weaponry[WeaponType])
		equip(sets.aftercast.idle)
	end
end

function self_command(command)
	--tpset commands
	if command=="DD" then
		TPSet="dd"
		add_to_chat(206, 'DD MODE')
		send_command('text tpvariable text "DD MODE"')
		status_change(player.status)
	elseif command=="Hybrid" then
		TPSet="hybrid"
		add_to_chat(206, 'HYBRID MODE')
		send_command('text tpvariable text "HYBRID MODE"')
		status_change(player.status)
	elseif command=="PDT" then
		TPSet="pdt"
		add_to_chat(206, 'PDT MODE')
		send_command('text tpvariable text "PDT MODE"')
		status_change(player.status)
	elseif command=="MDT" then
		TPSet="mdt"
		add_to_chat(206, 'MDT MODE')
		send_command('text tpvariable text "MDT MODE"')
		status_change(player.status)
	elseif command=="TANK" then
		TPSet="tanking"
		add_to_chat(206, 'TANK MODE')
		send_command('text tpvariable text "TANK MODE"')
		status_change(player.status)
	end
	--tpset commands
	
	--accuracy commands
	if command == 'lowacc' then
		TPType="lowacc"
		add_to_chat(206, 'Low Accuracy Mode')
		send_command('text idlevariable text "LOW-ACC"')
		send_command('alias ddset gs equip sets.aftercast.tp.lowacc')
		send_command('alias tankset gs equip sets.aftercast.hybrid.lowacc')
		status_change(player.status)
	elseif command == 'medacc' then
		TPType="medacc"
		add_to_chat(206, 'Medium Accuracy Mode')
		send_command('text idlevariable text "MEDIUM-ACC"')
		send_command('alias ddset gs equip sets.aftercast.tp.medacc')
		send_command('alias tankset gs equip sets.aftercast.hybrid.medacc')
		status_change(player.status)
	elseif command == 'highacc' then
		TPType="highacc"
		add_to_chat(206, 'High Accuracy Mode')
		send_command('text idlevariable text "HIGH-ACC"')
		send_command('alias ddset gs equip sets.aftercast.tp.highacc')
		send_command('alias tankset gs equip sets.aftercast.hybrid.highacc')
		status_change(player.status)
	elseif command == 'vhighacc' then
		TPType="highacc"
		add_to_chat(206, 'Very High Accuracy Mode')
		send_command('text idlevariable text "V.HIGH-ACC"')
		send_command('alias ddset gs equip sets.aftercast.tp.vhighacc')
		send_command('alias tankset gs equip sets.aftercast.hybrid.vhighacc')
		status_change(player.status)
	end
	--accuracy commands
	
	--weapon set commands
	if command=='greatsword' then
		WeaponType="greatsword"
		add_to_chat(206, 'GREATSWORD SELECTED')
		send_command('text pdtvariable text "GS MODE"')
		status_change(player.status)
	elseif command=="onesword" then
		WeaponType="onesword"
		send_command('text pdtvariable text "1-SWORD MODE"')
		status_change(player.status)
	elseif command=="twoswords" then
		WeaponType="twoswords"
		send_command('text pdtvariable text "2-SWORDS MODE"')
		status_change(player.status)
	end		
	--weapon set commands
end

function unload(new_job)
	windower.send_command('boxesoff')
end