function get_sets()
	include("organizer-lib.lua")
	include("lelubrdgkeys.lua")


	idletype="standard"
	indispell="Indi-attunement"
	btgeospell="Geo-Vex"
	entrustspell="Indi-Fend"
	selfgeospell="Geo-Haste"

	sets.idletype=T{}
	sets.indispell=T{}
	sets.btgeospell=T{}
	sets.entrustspell=T{}
	sets.selfgeospell=T{}

	sets.entrusttarget={}
	sets.entrusttarget.index={"<p1>","<p2>","<p3>","<p4>","<p5>",}
	entrusttarget=1

	send_command("alias indispell "..indispell)
	send_command("alias btgeospell "..btgeospell)
	send_command("alias entrustspell "..entrustspell)
	send_command("alias selfgeospell "..selfgeospell)

	send_command("bind #a gs c cycle entrust target")

	sets.precast={}
	sets.midcast={}
	sets.idle={}
	sets.tp={}
	sets.ja={}

	sets.precast.fc={
	head="Nahtirah Hat",
	body="Jhakri Robe +2",
	hands="Magavan Mitts",
	legs="Geomancy Pants +2",
	feet="Amalric Nails",
	left_ring="Jhakri Ring",
	right_ring="Defending Ring",
	left_ear="Loquac. Earring",
	}

	sets.ja["Radial Arcana"]={feet="Bagua Sandals +1"}

	sets.ja["Life Cycle"]={body="Geomancy Tunic +2", back="Nantosuelta Cape"}

	sets.ja["Full Circle"]={head="Azimuth Hood +1"}

	sets.ja.Bolster={body="Bagua Tunic +3"}

	sets.midcast.nuke={
		main="Idris",
    sub="Ammurapi Shield",
    ammo="Pemphredo Tathlum",
    head="Ea Hat",
    body="Ea Houppelande",
    hands="Ea Cuffs",
    legs="Ea Slops",
    feet="Ea Pigaches",
    neck="Saevus Pendant +1",
    waist="Othila Sash",
    left_ear="Novio Earring",
    right_ear="Friomisi Earring",
    left_ring="Jhakri Ring",
    right_ring="Shiva Ring +1",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +5','"Mag.Atk.Bns."+10',}},
	}
	sets.midcast.burst=set_combine(sets.midcast.nuke, {left_ring="Locus Ring", right_ring="Mujin Band",})

	sets.midcast.stun={
	    main="Idris",
	    sub="Ammurapi Shield",
	    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
	    head="Geo. Galero +2",
	    body="Geomancy Tunic +2",
	    hands="Geo. Mitaines +2",
	    legs="Geomancy Pants +2",
	    feet="Geo. Sandals +2",
	    neck={ name="Bagua Charm +2", augments={'Path: A',}},
	    waist="Famine Sash",
	    left_ear="Gwati Earring",
	    right_ear="Handler's Earring +1",
	    left_ring="Jhakri Ring",
	    right_ring="Mallquis Ring",
	    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +5','"Mag.Atk.Bns."+10',}},
	}

	sets.midcast.indi={
		main="Idris",
    sub="Ammurapi Shield",
    range="Dunna",
    head="Azimuth Hood +1",
    body={ name="Bagua Tunic +3", augments={'Enhances "Bolster" effect',}},
    hands="Geo. Mitaines +2",
    legs={ name="Bagua Pants +1", augments={'Enhances "Mending Halation" effect',}},
    feet="Azimuth Gaiters +1",
    neck={ name="Bagua Charm +2", augments={'Path: A',}},
    waist="Fucho-no-Obi",
    left_ear="Handler's Earring",
    right_ear="Handler's Earring +1",
    left_ring="Gelatinous Ring +1",
    right_ring="Defending Ring",
    back={ name="Lifestream Cape", augments={'Geomancy Skill +5','Indi. eff. dur. +20','Pet: Damage taken -5%','Damage taken-5%',}},
	}

	sets.idle.Luopan={
		main="Idris",
    sub="Sors Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head="Azimuth Hood +1",
    body="Geomancy Tunic +2",
    hands="Geo. Mitaines +2",
    legs={ name="Telchine Braconi", augments={'Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
    feet={ name="Bagua Sandals +2", augments={'Enhances "Radial Arcana" effect',}},
    neck={ name="Bagua Charm +2", augments={'Path: A',}},
    waist="Isa Belt",
    left_ear="Ethereal Earring",
    right_ear="Infused Earring",
    left_ring="Gelatinous Ring +1",
    right_ring="Defending Ring",
    back={ name="Nantosuelta's Cape", augments={'Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Pet: Damage taken -5%',}},
	}

	sets.idle.standard={
		main="Idris",
    sub="Sors Shield",
    range="Dunna",
    head={ name="Telchine Cap", augments={'Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
    body="Jhakri Robe +2",
    hands="Bagua Mitaines +1",
    legs="Assid. Pants +1",
    feet="Geo. Sandals +2",
    neck={ name="Bagua Charm +2", augments={'Path: A',}},
    waist="Fucho-no-Obi",
		left_ear="Ethereal Earring",
    right_ear="Infused Earring",
    left_ring="Gelatinous Ring +1",
    right_ring="Defending Ring",
    back={ name="Lifestream Cape", augments={'Geomancy Skill +5','Indi. eff. dur. +20','Pet: Damage taken -5%','Damage taken-5%',}},
	}

	sets.tp.Luopan={
		main="Idris",
    sub="Sors Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head="Azimuth Hood +1",
    body="Geomancy Tunic +2",
    hands="Geo. Mitaines +2",
    legs={ name="Telchine Braconi", augments={'Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
    feet={ name="Bagua Sandals +2", augments={'Enhances "Radial Arcana" effect',}},
    neck={ name="Bagua Charm +2", augments={'Path: A',}},
    waist="Isa Belt",
    left_ear="Ethereal Earring",
    right_ear="Infused Earring",
    left_ring="Gelatinous Ring +1",
    right_ring="Defending Ring",
    back={ name="Nantosuelta's Cape", augments={'Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Pet: Damage taken -5%',}},
	}

	sets.tp.dd={}

	sets.tp.hybrid={}

	sets.tp.dt={}

	sets.midcast.geo=set_combine(sets.midcast.indi,{})

	sets.midcast.enfeebling={
		main="Kaja Staff",
    sub="Kaja Grip",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head="Geo. Galero +2",
    body="Geomancy Tunic +2",
    hands="Geo. Mitaines +2",
    legs="Geomancy Pants +2",
    feet="Geo. Sandals +2",
    neck={ name="Bagua Charm +2", augments={'Path: A',}},
    waist="Luminary Sash",
    left_ear="Psystorm Earring",
    right_ear="Lifestorm Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +5','"Mag.Atk.Bns."+10',}},
	}

	sets.midcast.cures={
		main="Gada",
    sub="Sors Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head={ name="Vanya Hood", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
    body={ name="Vanya Robe", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
    hands={ name="Vanya Cuffs", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
    legs={ name="Vanya Slops", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
    feet={ name="Vanya Clogs", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
    neck="Imbodla Necklace",
    waist="Luminary Sash",
    left_ear="Mendi. Earring",
    right_ear="Lifestorm Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back="Fi Follet Cape +1",
	}
	sets.midcast.buffs={
		main={ name="Gada", augments={'Enh. Mag. eff. dur. +5','Mag. Acc.+3','DMG:+5',}},
    sub="Ammurapi Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head={ name="Telchine Cap", augments={'Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
    neck={ name="Bagua Charm +2", augments={'Path: A',}},
    waist="Embla Sash",
    left_ear="Adnoha's Earring",
    right_ear="Handler's Earring +1",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back="Fi Follet Cape +1",
	}
end

function precast(spell)
	if spell.prefix=="/magic" then
		equip(sets.precast.fc)
	end
	if spell.prefix=="/jobability" then
		equip(sets.ja[spell.english])
	end
	if spell.prefix=="/weaponskill" then
		equip(sets.ws[spell.english])
	end
end

function midcast(spell)
	if spell.skill=="Elemental Magic" then
		equip(sets.midcast.nuke)
	end
	if spell.skill=="Enhancing Magic" then
		equip(sets.midcast.buffs)
	end
	if spell.english:find("Indi-") then
		equip(sets.midcast.indi)
	end
	if spell.english:find("Geo-") then
		equip(sets.midcast.geo)
	end
	if spell.skill=="Enfeebling Magic" then
		equip(sets.midcast.enfeebling)
	end
	if spell.english:find("Cure") then
		equip(sets.midcast.cures)
	end
	if spell.english=="Stun" then
		equip(sets.midcast.stun)
	end
end

function aftercast(spell)
	status_change(player.status)
end

function status_change(new,old)
	if new == "Engaged" then
        if pet.isvalid and pet.name == "Luopan" then
            equip(sets.tp[pet.name])
        else
            equip(sets.tp[tptype])
        end
    else
        if pet.isvalid and pet.name == "Luopan" then
            equip(sets.idle[pet.name])
        else
            equip(sets.idle[idletype])
        end
    end
end

function self_command(command)
	if command=="cycle entrust target" then
		entrusttarget=entrusttarget+1
		if entrusttarget > #sets.entrusttarget.index then
			entrusttarget=1
		end
		send_command("input /echo entrust target is "..sets.entrusttarget.index[entrusttarget])
	end

	if command=="ddspells" then
		indispell="Indi-Fury"
		btgeospell="Geo-Frailty"
		entrustspell="Indi-Precision"
		selfgeospell="Geo-STR"

		send_command("alias indispell "..indispell)
		send_command("alias btgeospell "..btgeospell)
		send_command("alias entrustspell "..entrustspell)
		send_command("alias selfgeospell "..selfgeospell)
		add_to_chat("IndiSpell: "..indispell.." btGeoSpell: "..btgeospell.." EntrustSpell: "..entrustspell.." SelfGeoSpell: "..selfgeospell)
	end

	if command=="ddwilt" then
		indispell="Indi-Fury"
		btgeospell="Geo-Frailty"
		entrustspell="Indi-Wilt"
		selfgeospell="Geo-STR"

		send_command("alias indispell "..indispell)
		send_command("alias btgeospell "..btgeospell)
		send_command("alias entrustspell "..entrustspell)
		send_command("alias selfgeospell "..selfgeospell)
		add_to_chat("IndiSpell: "..indispell.." btGeoSpell: "..btgeospell.." EntrustSpell: "..entrustspell.." SelfGeoSpell: "..selfgeospell)
	end

	if command=="mevaspells" then
		indispell="Indi-attunement"
		btgeospell="Geo-Vex"
		entrustspell="Indi-Fend"
		selfgeospell="Geo-Haste"

		send_command("alias indispell "..indispell)
		send_command("alias btgeospell "..btgeospell)
		send_command("alias entrustspell "..entrustspell)
		send_command("alias selfgeospell "..selfgeospell)
		add_to_chat("IndiSpell: "..indispell.." btGeoSpell: "..btgeospell.." EntrustSpell: "..entrustspell.." SelfGeoSpell: "..selfgeospell)
	end

	if command=="mabspells" then
		indispell="Indi-Acumen"
		btgeospell="Geo-Malaise"
		entrustspell="Indi-Refresh"
		selfgeospell="Geo-INT"

		send_command("alias indispell "..indispell)
		send_command("alias btgeospell "..btgeospell)
		send_command("alias entrustspell "..entrustspell)
		send_command("alias selfgeospell "..selfgeospell)
		add_to_chat("IndiSpell: "..indispell.." btGeoSpell: "..btgeospell.." EntrustSpell: "..entrustspell.." SelfGeoSpell: "..selfgeospell)
	end

	if command=="maccspells" then
		indispell="Indi-Focus"
		btgeospell="Geo-Languor"
		entrustspell="Indi-Refresh"
		selfgeospell="Geo-INT"

		send_command("alias indispell "..indispell)
		send_command("alias btgeospell "..btgeospell)
		send_command("alias entrustspell "..entrustspell)
		send_command("alias selfgeospell "..selfgeospell)
		add_to_chat("IndiSpell: "..indispell.." btGeoSpell: "..btgeospell.." EntrustSpell: "..entrustspell.." SelfGeoSpell: "..selfgeospell)
	end

	if command=="dddefspells" then
		indispell="Indi-Barrier"
		btgeospell="Geo-Frailty"
		entrustspell="Indi-Wilt"
		selfgeospell="Geo-STR"

		send_command("alias indispell "..indispell)
		send_command("alias btgeospell "..btgeospell)
		send_command("alias entrustspell "..entrustspell)
		send_command("alias selfgeospell "..selfgeospell)
		add_to_chat("IndiSpell: "..indispell.." btGeoSpell: "..btgeospell.." EntrustSpell: "..entrustspell.." SelfGeoSpell: "..selfgeospell)
	end

	if command=="ddwilt" then
		indispell="Indi-Fury"
		btgeospell="Geo-Frailty"
		entrustspell="Indi-Wilt"
		selfgeospell="Geo-STR"

		send_command("alias indispell "..indispell)
		send_command("alias btgeospell "..btgeospell)
		send_command("alias entrustspell "..entrustspell)
		send_command("alias selfgeospell "..selfgeospell)
		add_to_chat("IndiSpell: "..indispell.." btGeoSpell: "..btgeospell.." EntrustSpell: "..entrustspell.." SelfGeoSpell: "..selfgeospell)
	end
	if command=="baku" then
		indispell="Indi-Fury"
		btgeospell="Geo-Frailty"
		entrustspell="Indi-Frailty"
		selfgeospell="Geo-Barrier"

		send_command("alias indispell "..indispell)
		send_command("alias btgeospell "..btgeospell)
		send_command("alias entrustspell "..entrustspell)
		send_command("alias selfgeospell "..selfgeospell)
		add_to_chat("IndiSpell: "..indispell.." btGeoSpell: "..btgeospell.." EntrustSpell: "..entrustspell.." SelfGeoSpell: "..selfgeospell)
	end

	if command=="dynad" then
		indispell="Indi-Wilt"
		btgeospell="Geo-Vex"
		entrustspell="Indi-Refresh"
		selfgeospell="Geo-STR"

		send_command("alias indispell "..indispell)
		send_command("alias btgeospell "..btgeospell)
		send_command("alias entrustspell "..entrustspell)
		send_command("alias selfgeospell "..selfgeospell)
		add_to_chat("IndiSpell: "..indispell.." btGeoSpell: "..btgeospell.." EntrustSpell: "..entrustspell.." SelfGeoSpell: "..selfgeospell)
	end

	if command=="accspells" then
		indispell="Indi-Precision"
		btgeospell="Geo-Torpor"
		entrustspell="Indi-Refresh"
		selfgeospell="Geo-STR"

		send_command("alias indispell "..indispell)
		send_command("alias btgeospell "..btgeospell)
		send_command("alias entrustspell "..entrustspell)
		send_command("alias selfgeospell "..selfgeospell)
		add_to_chat("IndiSpell: "..indispell.." btGeoSpell: "..btgeospell.." EntrustSpell: "..entrustspell.." SelfGeoSpell: "..selfgeospell)
	end

	if command=="tank1" then
		indispell="Indi-Refresh"
		btgeospell="Geo-Barrier"
		entrustspell="Indi-Wilt"
		selfgeospell="Geo-STR"

		send_command("alias indispell "..indispell)
		send_command("alias btgeospell "..btgeospell)
		send_command("alias entrustspell "..entrustspell)
		send_command("alias selfgeospell "..selfgeospell)
		add_to_chat("IndiSpell: "..indispell.." btGeoSpell: "..btgeospell.." EntrustSpell: "..entrustspell.." SelfGeoSpell: "..selfgeospell)
	end


	if command=="malfoc" then
		indispell="Indi-Focus"
		btgeospell="Geo-Malaise"
		entrustspell="Indi-Refresh"
		selfgeospell="Geo-INT"

		send_command("alias indispell "..indispell)
		send_command("alias btgeospell "..btgeospell)
		send_command("alias entrustspell "..entrustspell)
		send_command("alias selfgeospell "..selfgeospell)
		add_to_chat("IndiSpell: "..indispell.." btGeoSpell: "..btgeospell.." EntrustSpell: "..entrustspell.." SelfGeoSpell: "..selfgeospell)
	end


	if command=="indigeo" then
		send_command("indispell;wait 4.5;btgeospell <bt>")
	end
	if command=="btbogead" then
		send_command("indispell;wait 4.5;Blaze Of Glory;wait 1;btgeospell <bt>;wait 4.5;Ecliptic Attrition;wait 1;Dematerialize")
	end
	if command=="entrustspell" then
		send_command("Entrust;wait 1;"..entrustspell.." "..sets.entrusttarget.index[entrusttarget])
	end
	if command=="selfindigeo" then
		send_command("indispell;wait 4.5;selfgeospell")
	end
	if command=="selfbogead" then
		send_command("")
	end
	if command=="selfbuffs" then
		send_command("haste me;wait 4.5;refresh me;wait 6;blink;wait 6;ss;wait 6.5;aquaveil;wait 5.5;phalanx")
	end
end
