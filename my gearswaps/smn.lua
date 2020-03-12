function get_sets()
	include("organizer-lib.lua")
	
	sets.precast={}
	sets.ja={}
	sets.midcast={}
	
	sets.precast.fc={
    main={ name="Grioavolr", augments={'Blood Pact Dmg.+7','Pet: Mag. Acc.+25','Pet: "Mag.Atk.Bns."+20','DMG:+3',}},
    sub="Elan Strap +1",
    ammo="Sapience Orb",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+7','"Fast Cast"+6','"Mag.Atk.Bns."+3',}},
    body="Inyanga Jubbah +2",
    hands={ name="Helios Gloves", augments={'Mag. Acc.+14 "Mag.Atk.Bns."+14','"Fast Cast"+5','Magic burst dmg.+7%',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+10','"Fast Cast"+6',}},
    neck="Voltsurge Torque",
    waist="Channeler's Stone",
    left_ear="Loquac. Earring",
    right_ear="Etiolation Earring",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring",
    back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Eva.+20 /Mag. Eva.+20','Pet: Magic Damage+10','"Fast Cast"+10',}},
}
	physicalbp=S{'Predator Claws','Spinning Dive','Eclipse Bite','Mountain Buster',
	        'Rush','Chaotic Strike','Volt Strike','Blindside','Regal Gash'}
	
	magicalbp=S{'Inferno','Earthen Fury','Tidal Wave','Aerial Blast','Diamond Dust','Judgement Bolt',
			'Fire II','Stone II','Water II','Aero II','Blizzard II','Thunder II',
			'Fire IV','Stone IV','Water IV','Aero IV','Blizzard IV','Thunder IV',
			'Thunderspark','Meteorite','Nether Blast',
			'Meteor Strike','Heavenly Strike','Wind Blade','Geocrush','Grand Fall','Thunderstorm',
			'Holy Mist','Searing Light','Howling Moon','Ruinous Omen','Lunar Bay','Night Terror',
			'Level ? Holy','Conflag Strike','Impact','Somnolence'}
	
	hybridbp=S{"Flaming Crush","Burning Strike"}
	
	buffsbp=S {"Hastega","Hastega II","Aerial Armor","Fleet Wind","Whispering Wind","Healing Ruby","Healing Ruby II",
	"Shining Ruby","Glittering Ruby","Soothing Ruby","Pacifying Ruby","Ecliptic Growl","Ecliptic Howl","Heavenward Howl",
	"Crimson Howl","Inferno Howl","Earthen Ward","Earthen Armor","Spring Water","Soothing Current","Frost Armor",
	"Crystal Blessing","Rolling Thunder","Lightning Armor","Noctoshield","Dream Shroud","Reraise II",
	}
	
	enfeeblebp=S {'Diamond Storm','Sleepga','Slowga','Tidal Roar','Nightmare','Pavor Nocturnus',
			'Ultimate Terror','Lunar Cry','Lunar Roar','Eerie Eye','Mewing Lullaby'}
	
	sets.idle={
    main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
    sub="Elan Strap +1",
    ammo="Sancus Sachet +1",
    head="Con. Horn +1",
    body={ name="Apogee Dalmatica", augments={'Summoning magic skill +15','Enmity-5','Pet: Damage taken -3%',}},
    hands={ name="Glyphic Bracers +1", augments={'Inc. Sp. "Blood Pact" magic burst dmg.',}},
    legs="Assid. Pants +1",
    feet={ name="Apogee Pumps", augments={'Pet: Attack+20','Pet: "Mag.Atk.Bns."+20','Blood Pact Dmg.+7',}},
    neck="Caller's Pendant",
    waist="Moepapa Stone",
    left_ear="Gifted Earring",
    right_ear="Smn. Earring",
    left_ring="Evoker's Ring",
    right_ring="Varar Ring +1",
    back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10',}},
	}
	
	sets.engaged={}
	
	sets.bpdelay={
    main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
    sub="Elan Strap +1",
    ammo="Sancus Sachet +1",
    head="Con. Horn +1",
    body={ name="Glyphic Doublet +1", augments={'Reduces Sp. "Blood Pact" MP cost',}},
    hands={ name="Glyphic Bracers +1", augments={'Inc. Sp. "Blood Pact" magic burst dmg.',}},
    legs="Beck. Spats +1",
    feet={ name="Glyph. Pigaches +1", augments={'Inc. Sp. "Blood Pact" magic crit. dmg.',}},
    neck="Caller's Pendant",
    waist="Moepapa Stone",
    left_ear="Gifted Earring",
    right_ear="Smn. Earring",
    left_ring="Evoker's Ring",
    right_ring="Fervor Ring",
    back={ name="Conveyance Cape", augments={'Summoning magic skill +1','Blood Pact Dmg.+3',}},
	}
	
	sets.bpphysical={
    main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
    sub="Elan Strap +1",
    ammo="Sancus Sachet +1",
    head={ name="Apogee Crown +1", augments={'MP+80','Pet: Attack+35','Blood Pact Dmg.+8',}},
    body="Con. Doublet +3",
    hands="Convo. Bracers +3",
    legs={ name="Apogee Slacks +1", augments={'Pet: STR+20','Blood Pact Dmg.+14','Pet: "Dbl. Atk."+4',}},
    feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: Attack+35','Blood Pact Dmg.+8',}},
    neck="Shulmanu Collar",
    waist="Incarnation Sash",
    left_ear="Lugalbanda Earring",
    right_ear="Kyrene's Earring",
    left_ring="Varar Ring +1",
    right_ring="Varar Ring +1",
    back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10',}},
	}
	
	sets.bphybrid={
    main={ name="Espiritus", augments={'Summoning magic skill +15','Pet: Mag. Acc.+30','Pet: Damage taken -4%',}},
    sub="Elan Strap +1",
    ammo="Sancus Sachet +1",
    head={ name="Glyphic Horn +1", augments={'Enhances "Astral Flow" effect',}},
    body="Beck. Doublet +1",
    hands={ name="Glyphic Bracers +1", augments={'Inc. Sp. "Blood Pact" magic burst dmg.',}},
    legs="Con. Spats +1",
    feet="Beck. Pigaches +1",
    neck="Adad Amulet",
    waist="Incarnation Sash",
    left_ear="Lugalbanda Earring",
    right_ear="Enmerkar Earring",
    left_ring="Varar Ring +1",
    right_ring="Speaker's Ring",
    back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10',}},
}
	
	sets.bpmagic={
    main={ name="Grioavolr", augments={'Blood Pact Dmg.+7','Pet: Mag. Acc.+25','Pet: "Mag.Atk.Bns."+20','DMG:+3',}},
    sub="Elan Strap +1",
    ammo="Sancus Sachet +1",
    head={ name="Apogee Crown", augments={'Pet: Attack+20','Pet: "Mag.Atk.Bns."+20','Blood Pact Dmg.+7',}},
    body="Con. Doublet +3",
    hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+13 Pet: "Mag.Atk.Bns."+13','Blood Pact Dmg.+7','Pet: DEX+3','Pet: "Mag.Atk.Bns."+11',}},
    legs={ name="Apogee Slacks", augments={'Pet: Attack+20','Pet: "Mag.Atk.Bns."+20','Blood Pact Dmg.+7',}},
    feet={ name="Apogee Pumps", augments={'Pet: Attack+20','Pet: "Mag.Atk.Bns."+20','Blood Pact Dmg.+7',}},
    neck="Adad Amulet",
    waist="Regal Belt",
    left_ear="Lugalbanda Earring",
    right_ear="Kyrene's Earring",
    left_ring="Varar Ring +1",
    right_ring="Varar Ring +1",
    back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Eva.+20 /Mag. Eva.+20','Pet: Magic Damage+10','"Fast Cast"+10',}},
}
	
	sets.bpbuff={main={ name="Espiritus", augments={'Summoning magic skill +15','Pet: Mag. Acc.+30','Pet: Damage taken -4%',}},
    sub="Vox Grip",
    ammo="Sancus Sachet +1",
    head="Beckoner's Horn +1",
    body="Beck. Doublet +1",
    hands="Lamassu Mitts +1",
    legs="Beck. Spats +1",
    feet="Beck. Pigaches +1",
    neck="Incanter's Torque",
    waist="Lucidity Sash",
    left_ear="Andoaa Earring",
    right_ear="Smn. Earring",
    left_ring="Evoker's Ring",
    right_ring="Stikini Ring",
    back={ name="Conveyance Cape", augments={'Summoning magic skill +1','Blood Pact Dmg.+3',}},
}
	
	sets.bpenfeeb={main={ name="Espiritus", augments={'Summoning magic skill +15','Pet: Mag. Acc.+30','Pet: Damage taken -4%',}},
    sub="Vox Grip",
    ammo="Sancus Sachet +1",
    head="Tali'ah Turban +2",
    body="Tali'ah Manteel +2",
    hands="Tali'ah Gages +2",
    legs="Tali'ah Sera. +2",
    feet="Tali'ah Crackows +2",
    neck="Incanter's Torque",
    waist="Lucidity Sash",
    left_ear="Andoaa Earring",
    right_ear="Smn. Earring",
    left_ring="Evoker's Ring",
    right_ring="Stikini Ring",
    back={ name="Conveyance Cape", augments={'Summoning magic skill +1','Blood Pact Dmg.+3',}},}
	
	sets.ja["Elemental Siphon"]={
    main={ name="Espiritus", augments={'Summoning magic skill +15','Pet: Mag. Acc.+30','Pet: Damage taken -4%',}},
    sub="Elan Strap +1",
    ammo="Sancus Sachet +1",
    head="Beckoner's Horn +1",
    body={ name="Apogee Dalmatica", augments={'Summoning magic skill +15','Enmity-5','Pet: Damage taken -3%',}},
    hands="Lamassu Mitts +1",
    legs="Beck. Spats +1",
    feet="Beck. Pigaches +1",
    neck="Incanter's Torque",
    waist="Lucidity Sash",
    left_ear="Andoaa Earring",
    right_ear="Smn. Earring",
    left_ring="Evoker's Ring",
    right_ring="Stikini Ring",
    back={ name="Conveyance Cape", augments={'Summoning magic skill +1','Blood Pact Dmg.+3',}},
}

	sets.midcast.cure={ammo="Impatiens",
    head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +9',}}, right_ear="Beatific Earring",
    body="Heka's Kalasiris", neck="Incanter's Torque", waist="Gishdubar Sash", left_ear="Mendi. Earring",
    hands={ name="Telchine Gloves", augments={'"Cure" potency +4%','Enh. Mag. eff. dur. +10',}}, left_ring="Levia. Ring",
    legs={ name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}}, right_ring="Levia. Ring",
    feet={ name="Telchine Pigaches", augments={'"Cure" potency +6%','Enh. Mag. eff. dur. +6',}}, back="Swith Cape",}

end

function precast(spell)
	if spell.prefix == "/magic" then
		equip(sets.precast.fc)
	end
	if spell.type == "JobAbility" then
		equip(sets.ja[spell.english])
	end
	if spell.type == "BloodPactWard" or spell.type == "BloodPactRage" then
		if buffactive['Astral Conduit'] and magicalbp:contains(spell.english) then
	        equip(sets.bpmagical)
		elseif physicalbp:contains(spell.english) and buffactive['Astral Conduit'] then	
	        equip(sets.bpphysical)
		elseif hybridbp:contains(spell.english) and buffactive['Astral Conduit'] then
			equip(sets.bphybrid)
		elseif buffsbp:contains(spell.english) and buffactive['Astral Conduit'] then
			equip(sets.bpbuff)
		elseif enfeeblebp:contains(spell.english) and buffactive['Astral Conduit'] then
			equip(sets.bpenfeeb)
		else
			equip(sets.bpdelay)
		end	
	end
end

function midcast(spell)
	if spell.skill=="Summoning Magic" then
		equip(sets.idle)
	end
	if spell.english:find("Cure") or spell.english:find("Cura") then
		equip(sets.midcast.cure)
	end
end

function aftercast(spell)
	status_change(player.status)
end

function status_change(new,old)
	if new=="idle" then
		equip(sets.idle)
	else
		equip(sets.idle)
	end
end

function pet_midcast(spell)
	if physicalbp:contains(spell.english) then
		equip(sets.bpphysical)
	elseif magicalbp:contains(spell.english) then
		equip(sets.bpmagic)
	elseif hybridbp:contains(spell.english) then
		equip(sets.bphybrid)
	elseif enfeeblebp:contains(spell.english) then
		equip(sets.bpenfeeb)
	elseif buffsbp:contains(spell.english) then
		equip(sets.buffsbp)
	end
end

function pet_aftercast(spell)
	status_change(player.status)
end

