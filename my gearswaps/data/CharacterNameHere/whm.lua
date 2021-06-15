function get_sets()
	-- include
		include('organizer-lib.lua')
	-- include

	-- macro selection
	send_command('input /macro book 1;input /macro set 2')
	-- macro selection

	--keybinds
	send_command('bind @1 barelera')
	send_command('bind @2 barstatusra')
	send_command('bind @3 boostspell')
	send_command('bind @4 Cursna')
	send_command('bind @5 Paralyna')
	send_command('bind @6 Erase')
	send_command('bind @8 Silena')
	send_command('bind @9 Blindna')
	send_command('bind @0 Poisona')
	send_command('bind @- Stona')
	send_command('bind @= Viruna')
	send_command('bind #1 Curevi')
	send_command('bind #6 sublimation')
	send_command('bind #f1 gs c cycle_barelera')
	send_command('bind #f2 gs c cycle_barstatusra')
	send_command('bind #f3 gs c cycle_boostspell')
	send_command('bind ~numpad0 c4 me')
	send_command('bind ~numpad1 c5 me')
	send_command('bind ~numpad2 c6 me')
	send_command('bind ^z gs c fbuffs')
	send_command('bind !z gs c mfbuffs')
	send_command('bind @z gs c rbuffs')
	send_command('bind #z gs c mrbuffs')
	send_command('bind @x gs c stance')
	--keybinds

	--variables
	Weaponry="club"
	stance="Solace"

	sets.Weaponry= T{}
	sets.stance= T{}
	--variables

	sets.elemental={}
	sets.elemental.index={"thundra","fira","stonra","blizzara","aera","watera"}
	elemental_ind=1

	sets.status={}
	sets.status.index={"sleepra","amnesra","petra","paralyzra","silencera","vira","poisonra","blindra"}
	status_ind=1

	sets.boost={}
	sets.boost.index={"str","dex","vit","agi","mnd","int","chr"}
	boost_ind=1

	send_command('alias barelera bar'..sets.elemental.index[elemental_ind])
	send_command('alias barstatusra bar'..sets.status.index[status_ind])
	send_command('alias boostspell boost-'..sets.boost.index[boost_ind])
	--baseset names
	sets.precast={}
	sets.midcast={}
	sets.tp={}
	--baseset names
	gui()
	--precast sets
	sets.precast.fc={
		main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    sub="Sors Shield",
    ammo="Incantor Stone",
    head="Nahtirah Hat",
    body="Inyanga Jubbah +2",
    hands="Gendewitha Gages",
    legs="Aya. Cosciales +1",
    feet="Navon Crackows",
    neck="Sanctity Necklace",
    waist="Embla Sash",
    left_ear="Ethereal Earring",
    right_ear="Loquac. Earring",
    left_ring="Inyanga Ring",
    right_ring="Defending Ring",
    back={ name="Alaunus's Cape", augments={'"Fast Cast"+10',}},
	}

	sets.precast.cure={
		main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    sub="Sors Shield",
    ammo="Incantor Stone",
    head="Nahtirah Hat",
    body="Inyanga Jubbah +2",
    hands="Gendewitha Gages",
    legs="Ebers Pant +1",
    feet="Navon Crackows",
    neck="Imbodla Necklace",
    waist="Embla Sash",
    left_ear="Mendi. Earring",
    right_ear="Nourish. Earring +1",
    left_ring="Inyanga Ring",
    right_ring="Defending Ring",
    back={ name="Alaunus's Cape", augments={'"Fast Cast"+10',}},
	}

	sets.precast.enhancing=set_combine(sets.precast.fc,{

	})

	sets.precast.stoneskin=set_combine(sets.precast.enhancing, {head="Umuthi Hat",})
	--precast sets

	--midcast sets
	sets.midcast.curesolace={
		main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    sub="Sors Shield",
    ammo="Staunch Tathlum",
    head="Theophany Cap +2",
    body="Ebers Bliaud +1",
    hands="Theophany Mitts +2",
    legs="Ebers Pant. +1",
    feet={ name="Vanya Clogs", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
    neck={ name="Clr. Torque +2", augments={'Path: A',}},
    waist="Fucho-no-Obi",
    left_ear="Mendi. Earring",
    right_ear="Glorious Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Cure" potency +10%','Phys. dmg. taken-10%',}},
	}

	sets.midcast.curemisery=set_combine(sets.midcast.curesolace, {body="Theo. Briault +2",})

	sets.midcast.curaga={
	main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    sub="Sors Shield",
    ammo="Staunch Tathlum",
    head="Ebers Cap +1",
    body="Theo. Briault +2",
    hands="Theophany Mitts +2",
    legs="Ebers Pant. +1",
    feet={ name="Kaykaus Boots", augments={'MP+60','"Cure" spellcasting time -5%','Enmity-5',}},
    neck="Twilight Torque",
    waist="Rumination Sash",
    left_ear="Glorious Earring",
    right_ear="Nourish. Earring +1",
    left_ring="Sirona's Ring",
    right_ring="Defending Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Cure" potency +10%','Phys. dmg. taken-10%',}},
	}

	sets.midcast.enhancing={
		main={ name="Gada", augments={'Enh. Mag. eff. dur. +5','Mag. Acc.+3','DMG:+5',}},
    sub="Ammurapi Shield",
    ammo="Staunch Tathlum",
    head={ name="Telchine Cap", augments={'Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
    neck="Sanctity Necklace",
    waist="Embla Sash",
    left_ear="Ethereal Earring",
    right_ear="Adnoha's Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back="Fi Follet Cape +1",
	}

	sets.midcast.protectra=set_combine (sets.midcast.enhancing, {feet="Piety Duckbills",})

	sets.midcast.shellra=set_combine (sets.midcast.enhancing, {legs="Piety Pantaloons",})

	sets.midcast.bar={
		main="Beneficus",
    sub="Ammurapi Shield",
    ammo="Staunch Tathlum",
    head={ name="Telchine Cap", augments={'Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
    legs={ name="Piety Pantaln. +3", augments={'Enhances "Afflatus Misery" effect',}},
    feet={ name="Telchine Pigaches", augments={'Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
    neck="Sanctity Necklace",
    waist="Embla Sash",
    left_ear="Andoaa Earring",
    right_ear="Infused Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back="Fi Follet Cape +1",
	}

	sets.midcast.regens={
		main="Bolelabunga",
    sub="Ammurapi Shield",
    ammo="Staunch Tathlum",
    head="Inyanga Tiara +2",
    body={ name="Piety Briault +3", augments={'Enhances "Benediction" effect',}},
    hands={ name="Telchine Gloves", augments={'Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
    legs="Th. Pantaloons +2",
    feet={ name="Telchine Pigaches", augments={'Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
    neck="Sanctity Necklace",
    waist="Embla Sash",
    left_ear="Ethereal Earring",
    right_ear="Infused Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back="Fi Follet Cape +1"
	}

	sets.midcast.stoneskin=set_combine(sets.midcast.enhancing, {waist="Siegel Sash"})

	sets.midcast.na={
		--main="Yagrush", --soon my pretty
    sub="Ammurapi Shield",
    ammo="Staunch Tathlum",
    head="Ebers Cap +1",
    body={ name="Piety Briault +3", augments={'Enhances "Benediction" effect',}},
    hands="Ebers Mitts +1",
    legs={ name="Piety Pantaln. +3", augments={'Enhances "Afflatus Misery" effect',}},
    feet="Battlecast Gaiters",
    neck={ name="Clr. Torque +2", augments={'Path: A',}},
    waist="Cetl Belt",
    left_ear="Ethereal Earring",
    right_ear="Infused Earring",
    left_ring="Gelatinous Ring +1",
    right_ring="Defending Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Cure" potency +10%','Phys. dmg. taken-10%',}},
	}

	sets.midcast.cursna={
		main={ name="Gada", augments={'Enh. Mag. eff. dur. +5','Mag. Acc.+3','DMG:+5',}}, --main="Yagrush", --soon my pretty
    sub="Ammurapi Shield",
    ammo="Staunch Tathlum",
    head="Ebers Cap +1",
    body="Ebers Bliaud +1",
    hands="Inyan. Dastanas +2",
    legs="Th. Pantaloons +2",
    feet={ name="Vanya Clogs", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
    neck="Debilis Medallion",
    waist="Bishop's Sash",
    left_ear="Meili Earring",
    right_ear="Infused Earring",
    left_ring="Menelaus's Ring",
    right_ring="Haoma's Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Cure" potency +10%','Phys. dmg. taken-10%',}},
	}

	sets.midcast.nuke={
	}

	sets.midcast.intenfeeb={main={ name="Twebuliij", augments={'MP+60','Mag. Acc.+15','MND+12',}}, sub="Mephitis Grip",
	ammo="Incantor Stone", head="Befouled Crown", body="Theo. Briault +2",
	hands="Lurid Mitts", legs="Portent Pants", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}},
    neck="Incanter's Torque", waist="Rumination Sash", left_ear="Lifestorm Earring", right_ear="Psystorm Earring",
	left_ring="Globidonta Ring", right_ring="Sangoma Ring", back="Altruistic Cape",}

	sets.midcast.mndenfeeb={main={ name="Twebuliij", augments={'MP+60','Mag. Acc.+15','MND+12',}}, sub="Mephitis Grip",
	ammo="Incantor Stone", head="Befouled Crown", body="Shango Robe",
	hands="Lurid Mitts", legs={ name="Artsieq Hose", augments={'MP+30','Mag. Acc.+20','MND+7',}}, waist="Rumination Sash",
	feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}}, neck="Incanter's Torque",
	left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Globidonta Ring", right_ring="Sangoma Ring",
    back={ name="Mending Cape", augments={'Healing magic skill +7','Enha.mag. skill +9','Mag. Acc.+9',}},}

	sets.midcast.repose={main={ name="Twebuliij", augments={'MP+60','Mag. Acc.+15','MND+12',}}, sub="Mephitis Grip",
	ammo="Incantor Stone", head="Befouled Crown", body="Shango Robe",
	hands="Lurid Mitts", legs="Hlr. Pantaln. +1", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}},
	neck="Incanter's Torque", waist="Bishop's Sash", left_ear="Beatific Earring", right_ear="Divine Earring",
	left_ring="Globidonta Ring", right_ring="Sangoma Ring", back="Altruistic Cape",}

	sets.midcast.divine={main={ name="Twebuliij", augments={'MP+60','Mag. Acc.+15','MND+12',}}, sub="Mephitis Grip",
	ammo="Incantor Stone", head="Befouled Crown", body="Shango Robe",
	hands="Lurid Mitts", legs="Hlr. Pantaln. +1", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}},
	neck="Incanter's Torque", waist="Bishop's Sash", left_ear="Beatific Earring", right_ear="Divine Earring",
	left_ring="Globidonta Ring", right_ring="Sangoma Ring", back="Altruistic Cape",}
	--midcast sets

	--aftercast sets
	sets.idle={
		main="Bolelabunga",
    sub="Ammurapi Shield",
    ammo="Staunch Tathlum",
    head="Inyanga Tiara +2",
    body={ name="Piety Briault +3", augments={'Enhances "Benediction" effect',}},
    hands="Inyan. Dastanas +2",
    legs="Assid. Pants +1",
    feet="Inyan. Crackows +1",
    neck="Sanctity Necklace",
    waist="Fucho-no-Obi",
    left_ear="Ethereal Earring",
    right_ear="Infused Earring",
    left_ring="Inyanga Ring",
    right_ring="Defending Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Cure" potency +10%','Phys. dmg. taken-10%',}},
	}

	sets.tp.club={
	main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    sub={ name="Genbu's Shield", augments={'"Cure" potency +3%','"Cure" spellcasting time -6%',}},
    ammo="Vanir Battery",
    head="Aya. Zucchetto +2",
    body="Ayanmo Corazza +2",
    hands="Aya. Manopolas +2",
    legs="Aya. Cosciales +2",
    feet="Aya. Gambieras +2",
    neck="Sanctity Necklace",
    waist="Windbuffet Belt",
    left_ear="Mache Earring",
    right_ear="Mache Earring",
    left_ring="Ilabrat Ring",
    right_ring="Rajas Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}

	sets.tp.staff={
	}
	--aftercast sets

	--dt sets
	sets.pdt={
	}

	sets.mdt={
	}
	--dt sets

	--utility
	sets.sublimation={
		waist="Embla Sash",
	}
end

function precast(spell)
	if spell.prefix=="/magic" then
		if spell.english:find("Cure") or spell.english:find("Cura") then
			equip(sets.precast.cure)
		elseif spell.type=="EnhancingMagic" and spell.english~="Stoneskin" then
			equip(sets.precast.enhancing)
		elseif spell.type=="EnhancingMagic" and spell.english=="Stoneskin" then
			equip(sets.precast.stoneskin)
		else
			equip(sets.precast.fc)
		end
	end
	pf()
end

function midcast(spell)
	if spell.prefix=="/magic" then
		if spell.skill=="Enhancing Magic" then
			if spell.english:find("Bar") then
				equip(sets.midcast.bar)
			elseif spell.english=="Stoneskin" then
				equip(sets.midcast.stoneskin)
			elseif spell.english:find("Protectr") then
				equip(sets.midcast.protectra)
			elseif spell.english:find("Shellr") then
				equip(sets.midcast.shellra)
			elseif spell.english:find("Regen") then
				equip(sets.midcast.regens)
			else
				equip(sets.midcast.enhancing)
			end
		end
		if spell.english:find("na") or spell.english:find("Erase") or spell.english:find("Sacrifice") or spell.english:find("Esuna") and spell.english~="Cursna" then
			equip(sets.midcast.na)
		end
		if spell.english=="Cursna" then
			equip(sets.midcast.cursna)
		end
		if spell.english:find("Cure") then
			if buffactive['Afflatus Solace'] then
				equip(sets.midcast.curesolace)
			else
				equip(sets.midcast.curemisery)
			end
		end
		if spell.english:find("Cura") then
			equip(sets.midcast.curaga)
		end
		if spell.skill=="Enfeebling Magic" then
			if spell.type=="BlackMagic" then
				equip(sets.midcast.intenfeeb)
			else
				equip(sets.midcast.mndenfeeb)
			end
		end
		if spell.skill=="Divine Magic" then
			if spell.english=="Repose" then
				equip(sets.midcast.repose)
			else
				equip(sets.midcast.divine)
			end
		end
		if spell.type=="Elemental Magic" then
			equip(sets.midcast.nuke)
		end
	end
	pf()
end

function aftercast(spell)
	status_change(player.status)
end

function status_change(new,old)
	if new=="engaged" then
		equip(sets.tp[Weaponry])
	elseif new~="engaged" then
		equip(sets.idle)
		if buffactive["Sublimation: Activated"] then
			equip(sets.sublimation)
		end
	end
	pf()
end

function self_command(command)
	if command=="cycle_elements" then
		elemental_ind=elemental_ind+1
		if elemental_ind > #sets.elemental.index then
			elemental_ind=1
		end
		add_to_chat(206, "barspell set to: bar"..sets.elemental.index[elemental_ind])
		send_command('alias barelera bar'..sets.elemental.index[elemental_ind])
	end
	if command=="cycle_barstatus" then
		status_ind=status_ind+1
		if status_ind > #sets.status.index then
			status_ind=1
		end
		add_to_chat(206, "barspell set to: "..sets.status.index[status_ind])
		send_command('alias barstatusra bar'..sets.status.index[status_ind])
	end
	if command=="cycle_boost" then
		status_ind=status_ind+1
		if boost_ind > #sets.boost.index then
			boost_ind=1
		end
		add_to_chat(206, "boostspell set to: "..sets.boost.index[boost_ind])
		send_command('alias boostspell boost-'..sets.boost.index[boost_ind])
	end
	if command=="club" then
		Weaponry="club"
	elseif command=="staff" then
		Weaponry="staff"
	end
	if command=="fbuffs" then
		send_command("light arts;wait 1;Afflatus "..stance..";wait 1;rr3;wait 6;haste me;wait 5;Protectra V;wait 5;Shellra V;wait 5;blink;wait 6.5;ss;wait 7;aquaveil;wait 6;barelera;wait 4;barstatusra;wait 5;auspice;wait 6;boostspell")
	end
	if command=="mfbuffs" then
		send_command("light arts;wait 1;Afflatus "..stance..";wait 1;rr3;wait 6;haste me;wait 5;Shellra V;wait 5;blink;wait 6.5;ss;wait 7;aquaveil;wait 6;barelera;wait 4;barstatusra;wait 5;auspice;wait 6;boostspell")
	end
	if command=="rbuffs" then
		send_command("rr3;wait 6;haste me;wait 5;Protectra V;wait 5;Shellra V;wait 5;blink;wait 6.5;ss;wait 7;aquaveil;wait 6;barelera;wait 4;barstatusra;wait 5;auspice;wait 6;boostspell")
	end
	if command=="mrbuffs" then
		send_command("rr3;wait 6;haste me;wait 5;wait 5;Shellra V;wait 5;blink;wait 6.5;ss;wait 7;aquaveil;wait 6;;barelera;wait 4;barstatusra;wait 5;auspice;wait 6;boostspell")
	end
	if command=="cycle_barelera" then
		elemental_ind=elemental_ind+1
		if elemental_ind > #sets.elemental.index then
			elemental_ind=1
		end
		send_command('alias barelera bar'..sets.elemental.index[elemental_ind])
		windower.prim.set_texture('barelera',''..windower.windower_path..'addons/gearswap/data/images/bar'..sets.elemental.index[elemental_ind]..'.png')
		pf()
	end
	if command=="cycle_barstatusra" then
		status_ind=status_ind+1
		if status_ind > #sets.status.index then
			status_ind=1
		end
		send_command('alias barstatusra bar'..sets.status.index[status_ind])
		windower.prim.set_texture('barstatusra',''..windower.windower_path..'addons/gearswap/data/images/bar'..sets.status.index[status_ind]..'.png')
		pf()
	end
	if command=="cycle_boostspell" then
		boost_ind=boost_ind+1
		if boost_ind > #sets.boost.index then
			boost_ind=1
		end
		send_command('alias boostspell boost-'..sets.boost.index[boost_ind])
		windower.prim.set_texture('boostspell',''..windower.windower_path..'addons/gearswap/data/images/boost-'..sets.boost.index[boost_ind]..'.png')
		pf()
	end
	if command=="stance" then
		if stance=="Solace" then
			stance="Misery"
		else
			stance="Solace"
		end
		windower.prim.set_texture('stance',''..windower.windower_path..'addons/gearswap/data/images/'..stance..'.png')
	end
end

function file_unload(new_job)
	windower.send_command('boxesoff')
end

function gui()
	ypos1=50
	ypos2=ypos1+40
	ypos3=ypos2+40
	ypos4=ypos3+40
	ypos5=ypos4+40

	windower.prim.create('barelera')
	windower.prim.create('barstatusra')
	windower.prim.create('boostspell')
	windower.prim.create('stance')

	windower.prim.set_texture('barelera',''..windower.windower_path..'addons/gearswap/data/images/bar'..sets.elemental.index[elemental_ind]..'.png')
	windower.prim.set_texture('barstatusra',''..windower.windower_path..'addons/gearswap/data/images/bar'..sets.status.index[status_ind]..'.png')
	windower.prim.set_texture('boostspell',''..windower.windower_path..'addons/gearswap/data/images/boost-'..sets.boost.index[boost_ind]..'.png')
	windower.prim.set_texture('stance',''..windower.windower_path..'addons/gearswap/data/images/'..stance..'.png')

	windower.prim.set_size('barelera',200,30)
	windower.prim.set_size('barstatusra',200,30)
	windower.prim.set_size('boostspell',200,30)
	windower.prim.set_size('stance',200,30)

	windower.prim.set_position('barelera',0.65*windower.get_windower_settings().ui_x_res,ypos1)
	windower.prim.set_position('barstatusra',0.65*windower.get_windower_settings().ui_x_res,ypos2)
	windower.prim.set_position('boostspell',0.65*windower.get_windower_settings().ui_x_res,ypos3)
	windower.prim.set_position('stance',0.65*windower.get_windower_settings().ui_x_res,ypos4)

	windower.prim.set_color('barelera', 100, 255, 255, 255)
	windower.prim.set_color('barstatusra', 100, 255, 255, 255)
	windower.prim.set_color('boostspell', 100, 255, 255, 255)
	windower.prim.set_color('stance', 100, 255, 255, 255)
end

function pf()
	windower.prim.set_size('barelera',200,30)
	windower.prim.set_size('barstatusra',200,30)
	windower.prim.set_size('boostspell',200,30)
	windower.prim.set_size('stance',200,30)

	windower.prim.set_color('barelera', 100, 255, 255, 255)
	windower.prim.set_color('barstatusra', 100, 255, 255, 255)
	windower.prim.set_color('boostspell', 100, 255, 255, 255)
	windower.prim.set_color('stance', 100, 255, 255, 255)
end

--windower.register_event('hp change', function(new_hp,old_hp) if player.status=="Idle" or player.status=="engaged" then if new_hp<player.max_hp then status_change(player.status) add_to_chat(209,"updating idle set") end end end)
