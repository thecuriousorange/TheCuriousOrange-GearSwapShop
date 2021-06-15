function get_sets()
	include('organizer-lib.lua')
	include('lelubrdgkeys.lua')
	include('itchygeogkeys.lua')

	weapon="Xiucoatl"
	TPMode="masterdd"
	IdleType="maxhppup"
	Acc="lowacc"

	sets.weapon=T{}
	sets.TPMode=T{}
	sets.IdleType=T{}
	sets.Acc=T{}

	send_command("bind @f1 gs c masterdd")
	send_command("bind @f2 gs c bothdd")

	sets.pet={}
	sets.ja={}
	sets.tp={}
	sets.tp.masterdd={}
	sets.tp.bothdd={}
	sets.tp.meleepetdd={}
	sets.tp.magepetdd={}
	sets.tp.rngpetdd={}
	sets.masterws={}
	sets.petws={}

	sets.masterws["Stringing Pummel"]={
	main="Godhands",
    range="Animator P +1",
    ammo="Automat. Oil +3",
    head="Hiza. Somen　+2",
    body="He. Harness +1",
    hands="Hizamaru Kote +2",
    legs="Hiza. Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+16','"Triple Atk."+4','AGI+2','Attack+9',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Brutal Earring",
    left_ring="Gere Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Visucius's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}

	sets.masterws["Victory Smite"]={
	main="Godhands",
    range="Animator P +1",
    ammo="Automat. Oil +3",
    head="Hiza. Somen　+2",
    body="Abnoba Kaftan",
    hands="Hizamaru Kote +2",
    legs="Hiza. Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+16','"Triple Atk."+4','AGI+2','Attack+9',}},
    neck="Rancor Collar",
    waist="Moonbow Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Brutal Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Visucius's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}

	sets.idle={}

	sets.tp.masterdd.lowacc={
		main="Godhands",
    range="Animator P +1",
    head={ name="Ryuo Somen +1", augments={'HP+65','"Store TP"+5','"Subtle Blow"+8',}},
    body="Tali'ah Manteel +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+4','Accuracy+13','Attack+5',}},
    legs={ name="Ryuo Hakama +1", augments={'Accuracy+25','"Store TP"+5','Phys. dmg. taken -4',}},
    feet={ name="Herculean Boots", augments={'Accuracy+16','"Triple Atk."+4','AGI+2','Attack+9',}},
    neck="Shulmanu Collar",
    waist="Moonbow Belt",
    left_ear="Mache Earring +1",
    right_ear="Telos Earring",
    left_ring="Gere Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
	}

	sets.tp.bothdd.lowacc={
		main={ name="Godhands", augments={'Path: A',}},
    range="Animator P +1",
    head="Tali'ah Turban +2",
    body="Tali'ah Manteel +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+4','Accuracy+13','Attack+5',}},
    legs="Heyoka Subligar",
    feet={ name="Herculean Boots", augments={'Accuracy+16','"Triple Atk."+4','AGI+2','Attack+9',}},
    neck="Shulmanu Collar",
    waist="Klouskap Sash +1",
    left_ear="Enmerkar Earring",
    right_ear="Telos Earring",
    left_ring="Gere Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
	}

	sets.tp.masterdd.medacc={}
	sets.tp.masterdd.highacc={}
	sets.tp.masterdd.maxacc={}

	sets.tp.meleepetdd.lowacc={}
	sets.tp.meleepetdd.medacc={}
	sets.tp.meleepetdd.highacc={}
	sets.tp.meleepetdd.maxacc={}

	sets.tp.magepetdd.lowacc={}
	sets.tp.magepetdd.medacc={}
	sets.tp.magepetdd.highacc={}
	sets.tp.magepetdd.maxacc={}

	sets.tp.rngpetdd.lowacc={}
	sets.tp.rngpetdd.medacc={}
	sets.tp.rngpetdd.highacc={}
	sets.tp.rngpetdd.maxacc={}

	sets.idle.regen={}
	sets.idle.pdt={}
	sets.idle.mdt={}
	sets.idle.dt={}
	sets.idle.pettank={}
	sets.idle.meleepetdd={}
	sets.idle.magepetdd={}

	sets.hpdown={}
	sets.hpup={}
	sets.petenmity={}
	sets.petcmd={}

	sets.ja.Activate={
		neck="Bfn. Collar +1",
		body="Kara. Farsetto +1",
		back={ name="Visucius's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}

	sets.ja["Deus Ex Automata"]={
		neck="Bfn. Collar +1",
		body="Kara. Farsetto +1",
		back={ name="Visucius's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}

	sets.ja.Overdrive={
		body="Pitre Tobe +3",
	}

	sets.ja.Repair={
		lear="Pratik Earring",
		feet="Foire Babouches +3",
	}

	sets.petcmd["Water Maneuver"]={
		neck="Bfn. Collar +1",
		body="Kara. Farsetto +1",
		back={ name="Visucius's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}

	sets.petcmd["Earth Maneuver"]={
		neck="Bfn. Collar +1",
		body="Kara. Farsetto +1",
		back={ name="Visucius's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}

	sets.petcmd["Fire Maneuver"]={
		neck="Bfn. Collar +1",
		body="Kara. Farsetto +1",
		back={ name="Visucius's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}

	sets.petcmd["Ice Maneuver"]={
		neck="Bfn. Collar +1",
		body="Kara. Farsetto +1",
		back={ name="Visucius's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}

	sets.petcmd["Light Maneuver"]={
		neck="Bfn. Collar +1",
		body="Kara. Farsetto +1",
		back={ name="Visucius's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}

	sets.petcmd["Dark Maneuver"]={
		neck="Bfn. Collar +1",
		body="Kara. Farsetto +1",
		back={ name="Visucius's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}

	sets.petcmd["Thunder Maneuver"]={
		neck="Bfn. Collar +1",
		body="Kara. Farsetto +1",
		back={ name="Visucius's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}

	sets.petcmd["Wind Maneuver"]={
		neck="Bfn. Collar +1",
		body="Kara. Farsetto +1",
		back={ name="Visucius's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}

	sets.currenttp={
	main="Godhands",
    range="Animator P +1",
    ammo="Automat. Oil +3",
    head={ name="Herculean Helm", augments={'"Triple Atk."+4','Attack+12',}},
    body="Tali'ah Manteel +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+4','Accuracy+13','Attack+5',}},
    legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
    feet={ name="Herculean Boots", augments={'Accuracy+16','"Triple Atk."+4','AGI+2','Attack+9',}},
    neck="Shulmanu Collar",
    waist="Moonbow Belt",
    left_ear="Mache Earring +1",
    right_ear="Telos Earring",
    left_ring="Gere Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Visucius's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
	}

	sets.currentidle={
	main="Godhands",
    range="Animator P +1",
    ammo="Automat. Oil +3",
    head={ name="Rao Kabuto +1", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
    body={ name="Rao Togi +1", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
    hands={ name="Rao Kote +1", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
    legs={ name="Rao Haidate +1", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
    feet={ name="Rao Sune-Ate +1", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
    neck="Shulmanu Collar",
    waist="Isa Belt",
    left_ear="Enmerkar Earring",
    right_ear="Domes. Earring",
    left_ring="Varar Ring +1",
    right_ring="Overbearing Ring",
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','Pet: Damage taken -5%',}},
	}

	sets.idle.maxhppup={
		range="Animator P +1",
    ammo="Automat. Oil +3",
    head={ name="Anwig Salade", augments={'Attack+3','Pet: Damage taken -10%','Attack+3','Pet: "Regen"+1',}},
    body={ name="Rao Togi +1", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
    hands={ name="Rao Kote +1", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
    legs={ name="Rao Haidate +1", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
    feet={ name="Rao Sune-Ate +1", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
    neck="Shulmanu Collar",
    waist="Isa Belt",
    left_ear="Enmerkar Earring",
    right_ear="Domes. Earring",
    left_ring="Varar Ring +1",
    right_ring="Overbearing Ring",
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','Pet: Damage taken -5%',}},
	}

	sets.idle.mevapup={
		range="Animator P +1",
    ammo="Automat. Oil +3",
    head={ name="Anwig Salade", augments={'Attack+3','Pet: Damage taken -10%','Attack+3','Pet: "Regen"+1',}},
    body={ name="Taeon Tabard", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    hands={ name="Taeon Gloves", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    legs={ name="Taeon Tights", augments={'Pet: Accuracy+22 Pet: Rng. Acc.+22','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    feet={ name="Taeon Boots", augments={'Pet: Accuracy+22 Pet: Rng. Acc.+22','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    neck="Shulmanu Collar",
    waist="Klouskap Sash +1",
    left_ear="Enmerkar Earring",
    right_ear="Domes. Earring",
    left_ring="Varar Ring +1",
    right_ring="Varar Ring +1",
    back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','Pet: Damage taken -5%',}},
	}
	sets.idle.pupdd={

	}

	sets.idle.ambuscade={
		main={ name="Ohtas", augments={'Accuracy+70','Pet: Accuracy+70','Pet: Haste+10%',}},
    range="Animator P +1",
    ammo="Automat. Oil +3",
    head={ name="Anwig Salade", augments={'Attack+3','Pet: Damage taken -10%','Attack+3','Pet: "Regen"+1',}},
    body={ name="Taeon Tabard", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    hands={ name="Taeon Gloves", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    legs={ name="Taeon Tights", augments={'Pet: Accuracy+22 Pet: Rng. Acc.+22','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    feet={ name="Taeon Boots", augments={'Pet: Accuracy+22 Pet: Rng. Acc.+22','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    neck="Shulmanu Collar",
    waist="Klouskap Sash +1",
    left_ear="Enmerkar Earring",
    right_ear="Domes. Earring",
    left_ring="Varar Ring +1",
    right_ring="Varar Ring +1",
    back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','Pet: Damage taken -5%',}},
	}
end

function precast(spell)
	if spell.prefix=="/jobability" then
		equip(sets.ja[spell.english])
	elseif spell.prefix=="/weaponskill" then
		equip(sets.masterws[spell.english])
	elseif spell.prefix=="/pet" then
		equip(sets.petcmd[spell.english])
	end
end

function midcast(spell)

end

function aftercast(spell)
	status_change(player.status)
end

function status_change(new,old)
	if new=="Engaged" then
		if TPMode=="masterdd" then
			equip(sets.tp.masterdd[Acc])
		elseif TPMode=="bothdd" then
			equip(sets.tp.bothdd[Acc])
		end
	else
		equip(sets.idle[IdleType])
	end
end

function pet_midcast(spell)

end

function self_command(command)
	if command=="masterdd" then
		TPMode="masterdd"
		add_to_chat(209,'master focused dd mode')
		status_change(player.status)
	end
	if command=="bothdd" then
		TPMode="bothdd"
		add_to_chat(209,'combined dd mode')
		status_change(player.status)
	end
	if command=="maxhppup" then
		IdleType="maxhppup"
		add_to_chat(209,'Idle-'..IdleType..'')
	end
	if command=="mevapup" then
		IdleType="mevapup"
		add_to_chat(209,'Idle-'..IdleType..'')
	end
	if command=="ambuscade" then
		IdleType="ambuscade"
		add_to_chat(209,'Idle-'..IdleType..'')
	end
	if command=="pupdd" then
		IdleType="pupdd"
		add_to_chat(209,'Idle-'..IdleType..'')
	end
end
