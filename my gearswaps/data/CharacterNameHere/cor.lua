function get_sets()
	include('organizer-lib.lua')
	include('physws.lua')
	include('corrolls.lua')
	include('lelubrdgkeys.lua')
	include('itchygeogkeys.lua')
	include('haste-include.lua')


	windower.send_command('text ammoname create;text ammoname pos 890 50;pause 1.5;text ammoname text "'..player.equipment.ammo..': "')
	windower.send_command('text ammo create;text ammo pos 1000 50;pause 1.5;text ammo text "'..player.inventory[player.equipment.ammo].count..'"')


--basesets
	sets.precast={}
	sets.ja={}
	sets.tp={}
	sets.tp.dnc={}
	sets.tp.dnc.h45={}
	sets.tp.dnc.h30={}
	sets.tp.dnc.h15={}
	sets.tp.dnc.h0={}
	sets.tp.nin={}
	sets.tp.nin.h45={}
	sets.tp.nin.h30={}
	sets.tp.nin.h15={}
	sets.tp.nin.h0={}
	sets.tp.sw={}
	sets.hybrid={}
	sets.hybrid.sw={}
	sets.hybrid.nin={}
	sets.hybrid.dnc={}
	sets.hybrid.nin.h45={}
	sets.hybrid.nin.h30={}
	sets.hybrid.nin.h15={}
	sets.hybrid.nin.h0={}
	sets.hybrid.dnc.h45={}
	sets.hybrid.dnc.h30={}
	sets.hybrid.dnc.h15={}
	sets.hybrid.dnc.h0={}
	sets.wsdmg={}
	sets.wsacc={}
	sets.idle={}
	sets.midshot={}
	sets.Weaponry={}
	sets.Weaponry.main={}
	sets.Weaponry.sub={}
	sets.Weaponry.ranged={}
	sets.Weaponry.ammo={}
--basesets
gui_create()
binds()
variables()
hastecount()
gui()

--inclusive items
	sets.items={
		item="Trump Card",
		item="Trump Card Case",
		waist="Chr. Bul. Pouch",
	}
--inclusive items

--weaponry sets
	sets.Weaponry.main["Naegling"]={main="Naegling",}
	sets.Weaponry.main["Tauret"]={main="Tauret",}
	sets.Weaponry.main["Rostam"]={main="Rostam",}
	sets.Weaponry.main["Kustawi +1"]={main="Kustawi +1",}

	sets.Weaponry.sub["Blurred Knife +1"]={sub="Blurred Knife +1",}
	sets.Weaponry.sub["Tauret"]={sub="Tauret",}
	sets.Weaponry.sub["Naegling"]={sub="Naegling",}
	sets.Weaponry.sub["Nusku Shield"]={sub="Nusku Shield",}

	sets.Weaponry.ranged["Fomalhaut"]={range="Fomalhaut",}
	sets.Weaponry.ranged["Death Penalty"]={range="Death Penalty",}
	sets.Weaponry.ranged["Armageddonn"]={range="Armageddonn",}
	sets.Weaponry.ranged["Anarchy +2"]={range="Anarchy +2",}
	sets.Weaponry.ranged["Compensator"]={range="Compensator",}

	sets.Weaponry.ammo["Chrono Bullet"]={ammo="Chrono Bullet",}
--weaponry sets

	sets.obi={waist="Hachirin-no-Obi",}

	sets.dt={
		head="Nyame Helm",
		body="Meg. Cuirie +2",
		hands="Nyame Gauntlets",
		legs="Mummu Kecks +2",
		feet="Nyame Sollerets",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Vocane Ring +1",
		back="Moonlight Cape",
	}

--precast sets
	sets.preshot={head="Chass. Tricorne +1",
    body="Mummu Jacket +2",
    hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
    legs={ name="Adhemar Kecks +1", augments={'AGI+12','"Rapid Shot"+13','Enmity-6',}},
    feet="Meg. Jam. +2",
    neck="Comm. Charm +2",
    waist="Impulse Belt",
    left_ear="Enervating Earring",
    right_ear="Telos Earring",
    left_ring="Dingir Ring",
    right_ring="Ilabrat Ring",
    back={ name="Gunslinger's Cape", augments={'Enmity-2','"Mag.Atk.Bns."+2','"Phantom Roll" ability delay -5',}},}

	sets.precast.magic={
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body={ name="Adhemar Jacket", augments={'HP+80','"Fast Cast"+7','Magic dmg. taken -3',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}},
    legs={ name="Rawhide Trousers", augments={'MP+50','"Fast Cast"+5','"Refresh"+1',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Voltsurge Torque",
    waist="Flume Belt +1",
    left_ear="Etiolation Earring",
    right_ear="Loquac. Earring",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring",
    back="Moonlight Cape",
	}

	sets.precast.ninjutsu=set_combine(sets.precast.magic, {neck="Magoraga Beads",})
--precast sets

--ja sets
	sets.rolls=set_combine(sets.dt,
	{
		head={ name="Lanun Tricorne +3", augments={'Enhances "Winning Streak" effect',}},
		body="Chasseur's Frac +1",
		hands="Chasseur's Gants +1",
		neck="Regal Necklace",
		back="Camulus's Mantle",
		right_ring="Luzaf's Ring",
	})

	sets.shots={}
	sets.shots.damage={}
	sets.shots.acc={}
	sets.shots.stp={}

	sets.ja["Corsair's Roll"]=set_combine(set.rolls,{})

	sets.ja["Ninja's Roll"]=set_combine(set.rolls,{})

	sets.ja["Hunter's Roll"]=set_combine(set.rolls,{})

	sets.ja["Chaos Roll"]=set_combine(set.rolls,{})

	sets.ja["Magus's Roll"]=set_combine(set.rolls,{})

	sets.ja["Healer's Roll"]=set_combine(set.rolls,{})

	sets.ja["Drachen Roll"]=set_combine(set.rolls,{})

	sets.ja["Choral Roll"]=set_combine(set.rolls,{})

	sets.ja["Monk's Roll"]=set_combine(set.rolls,{})

	sets.ja["Beast Roll"]=set_combine(set.rolls,{})

	sets.ja["Beast Roll"]=set_combine(set.rolls,{})

	sets.ja["Samurai Roll"]=set_combine(set.rolls,{})

	sets.ja["Evoker's Roll"]=set_combine(set.rolls,{})

	sets.ja["Rogue's Roll"]=set_combine(set.rolls,{})

	sets.ja["Warlock's Roll"]=set_combine(set.rolls,{})

	sets.ja["Fighter's Roll"]=set_combine(set.rolls,{})

	sets.ja["Puppet Roll"]=set_combine(set.rolls,{})

	sets.ja["Gallant's Roll"]=set_combine(set.rolls,{})

	sets.ja["Wizard's Roll"]=set_combine(set.rolls,{})

	sets.ja["Dancer's Roll"]=set_combine(set.rolls,{})

	sets.ja["Scholar's Roll"]=set_combine(set.rolls,{})

	sets.ja["Bolter's Roll"]=set_combine(set.rolls,{})

	sets.ja["Caster's Roll"]=set_combine(set.rolls,{})

	sets.ja["Courser's Roll"]=set_combine(set.rolls,{})

	sets.ja["Blitzer's Roll"]=set_combine(set.rolls,{})

	sets.ja["Tactician's Roll"]=set_combine(set.rolls,{})

	sets.ja["Allies' Roll"]=set_combine(set.rolls,{})

	sets.ja["Miser's Roll"]=set_combine(set.rolls,{})

	sets.ja["Companion's Roll"]=set_combine(set.rolls,{})

	sets.ja["Avenger's Roll"]=set_combine(set.rolls,{})

	sets.ja["Wild Card"]=set_combine({feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},})

	sets.ja["Double-Up"]=set_combine(sets.rolls,{

	})

	sets.ja["Random Deal"]=set_combine(sets.dt, {body="Lanun Frac +3"})

	sets.ja["Snake Eye"]=set_combine(sets.dt, {legs={ name="Lanun Trews +3", augments={'Enhances "Snake Eye" effect',}},})

	sets.ja["Fold"]=set_combine(sets.dt, {hands={ name="Lanun Gants +1", augments={'Enhances "Fold" effect',}},})

	sets.ja["Triple Shot"]=set_combine(sets.dt,{})

	sets.ja["Cutting Cards"]=set_combine(sets.dt,{})

	sets.qd={}

	sets.qd.acc={
		head="Laksa. Tricorne +2",
		body="Mummu Jacket +2",
		hands="Laksa. Gants +2",
		legs="Mummu Kecks +2",
		feet="Laksa. Bottes  +2",
		neck="Comm. Charm +2",
		waist="K. Kachina Belt +1",
		left_ear="Digni. Earring",
		right_ear="Gwati Earring",
		left_ring="Stikini Ring +1",
		right_ring="Regal Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
	}

	sets.qd.damage={
		head={ name="Herculean Helm", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Crit. hit damage +1%','STR+5','Mag. Acc.+9','"Mag.Atk.Bns."+10',}},
    body={ name="Lanun Frac +3", augments={'Enhances "Loaded Deck" effect',}},
    hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Crit.hit rate+3','STR+9','Mag. Acc.+9',}},
    feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
    neck="Comm. Charm +2",
    waist="Eschan Stone",
    left_ear="Friomisi Earring",
    right_ear="Crematio Earring",
    left_ring="Dingir Ring",
    right_ring="Shiva Ring +1",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
	}

	sets.qd.stp={}

	sets.shots.damage["Fire Shot"]=set_combine(sets.qd.damage,{

	})

	sets.shots.damage["Ice Shot"]=set_combine(sets.qd.damage,{

	})

	sets.shots.damage["Wind Shot"]=set_combine(sets.qd.damage,{

	})

	sets.shots.damage["Earth Shot"]=set_combine(sets.qd.damage,{

	})

	sets.shots.damage["Thunder Shot"]=set_combine(sets.qd.damage,{

	})

	sets.shots.damage["Water Shot"]=set_combine(sets.qd.damage,{

	})

	sets.shots.damage["Light Shot"]=set_combine(sets.qd.damage,{

	})

	sets.shots.damage["Dark Shot"]=set_combine(sets.qd.damage,{

	})

	sets.shots.acc["Fire Shot"]=set_combine(sets.qd.acc,{

	})

	sets.shots.acc["Ice Shot"]=set_combine(sets.qd.acc,{

	})

	sets.shots.acc["Wind Shot"]=set_combine(sets.qd.acc,{

	})

	sets.shots.acc["Earth Shot"]=set_combine(sets.qd.acc,{

	})

	sets.shots.acc["Thunder Shot"]=set_combine(sets.qd.acc,{

	})

	sets.shots.acc["Water Shot"]=set_combine(sets.qd.acc,{

	})

	sets.shots.acc["Light Shot"]=set_combine(sets.qd.acc,{

	})

	sets.shots.acc["Dark Shot"]=set_combine(sets.qd.acc,{

	})

	sets.shots.stp["Fire Shot"]=set_combine(sets.qd.stp,{

	})

	sets.shots.stp["Ice Shot"]=set_combine(sets.qd.stp,{

	})

	sets.shots.stp["Wind Shot"]=set_combine(sets.qd.stp,{

	})

	sets.shots.stp["Earth Shot"]=set_combine(sets.qd.stp,{

	})

	sets.shots.stp["Thunder Shot"]=set_combine(sets.qd.stp,{

	})

	sets.shots.stp["Water Shot"]=set_combine(sets.qd.stp,{

	})

	sets.shots.stp["Light Shot"]=set_combine(sets.qd.stp,{

	})

	sets.shots.stp["Dark Shot"]=set_combine(sets.qd.stp,{

	})
--ja sets

--ra sets
	sets.midshot.damage={head="Meghanada Visor +2",
    body="Mummu Jacket +2",
    hands="Mummu Wrists +2",
    legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
    feet="Mummu Gamash. +2",
    neck="Iskur Gorget",
    waist="Yemaya Belt",
    left_ear="Enervating Earring",
    right_ear="Telos Earring",
    left_ring="Dingir Ring",
    right_ring="Ilabrat Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
	}

	sets.midshot.accuracy={}
--ra sets

--ws sets
	--ranged ws
	sets.wsdmg["Hot Shot"]={
		head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Dingir Ring",
    right_ring="Regal Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
	}

	sets.wsacc["Hot Shot"]={
		head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Dingir Ring",
    right_ring="Regal Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
	}

	sets.wsdmg["Split Shot"]={
		head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Dingir Ring",
    right_ring="Regal Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
	}

	sets.wsacc["Split Shot"]={
		head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Dingir Ring",
    right_ring="Regal Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
	}

	sets.wsdmg["Sniper Shot"]={
		head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Dingir Ring",
    right_ring="Regal Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
	}

	sets.wsacc["Sniper Shot"]={
		head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Dingir Ring",
    right_ring="Regal Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
	}

	sets.wsdmg["Slug Shot"]={
		head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Dingir Ring",
    right_ring="Regal Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
	}

	sets.wsacc["Slug Shot"]={
		head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Dingir Ring",
    right_ring="Regal Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
	}

	sets.wsdmg["Detonator"]={
		head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Dingir Ring",
    right_ring="Regal Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
	}

	sets.wsacc["Detonator"]={
		head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Dingir Ring",
    right_ring="Regal Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
	}

	sets.wsdmg["Leaden Salute"]={
		head="Pixie Hairpin +1",
    body={ name="Lanun Frac +3", augments={'Enhances "Loaded Deck" effect',}},
    hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Crit.hit rate+3','STR+9','Mag. Acc.+9',}},
    feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
    neck="Comm. Charm +2",
    waist="Svelt. Gouriz +1",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Dingir Ring",
    right_ring="Archon Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
	}

	sets.wsacc["Leaden Salute"]=set_combine(sets.wsdmg["Leaden Salute"],{

	})

	sets.wsdmg["Numbing Shot"]={
		head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Dingir Ring",
    right_ring="Regal Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
	}

	sets.wsacc["Numbing Shot"]={
		head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Dingir Ring",
    right_ring="Regal Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
	}

	sets.wsdmg["Wildfire"]={
		head={ name="Herculean Helm", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Crit. hit damage +1%','STR+5','Mag. Acc.+9','"Mag.Atk.Bns."+10',}},
    body={ name="Lanun Frac +3", augments={'Enhances "Loaded Deck" effect',}},
    hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Crit.hit rate+3','STR+9','Mag. Acc.+9',}},
    feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
    neck="Comm. Charm +2",
    waist="Eschan Stone",
    left_ear="Friomisi Earring",
    right_ear="Crematio Earring",
    left_ring="Dingir Ring",
    right_ring="Regal Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
	}

	sets.wsacc["Wildfire"]=set_combine(sets.wsdmg["Wildfire"],{

	})

	sets.wsdmg["Last Stand"]={
		head="Meghanada Visor +2",
    body="Laksa. Frac +3",
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Dingir Ring",
    right_ring="Regal Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
	}

	sets.wsacc["Last Stand"]=set_combine(sets.wsdmg["Last Stand"],{

	})
	--ranged ws

	--sword ws
	sets.wsdmg["Fast Blade"]={}

	sets.wsacc["Fast Blade"]={}

	sets.wsdmg["Burning Blade"]={}

	sets.wsacc["Burning Blade"]={}

	sets.wsdmg["Flat Blade"]={}

	sets.wsacc["Flat Blade"]={}

	sets.wsdmg["Shining Blade"]={}

	sets.wsacc["Shining Blade"]={}

	sets.wsdmg["Circle Blade"]={}

	sets.wsacc["Circle Blade"]={}

	sets.wsdmg["Savage Blade"]={
		head="Adhemar Bonnet +1",
    body="Laksa. Frac +3",
    hands="Meg. Gloves +2",
    legs={ name="Herculean Trousers", augments={'Accuracy+28','Weapon skill damage +3%','STR+10','Attack+14',}},
    feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
    neck="Comm. Charm +2",
    waist="Sailfi Belt +1",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Ifrit Ring +1",
    right_ring="Regal Ring",
    back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}

	sets.wsacc["Savage Blade"]={}

	sets.wsdmg["Requiescat"]={}

	sets.wsacc["Requiescat"]={}
	--sword ws

	--dagger ws
	sets.wsdmg["Wasp Sting"]={}

	sets.wsacc["Wasp Sting"]={}

	sets.wsdmg["Gust Slash"]={}

	sets.wsacc["Gust Slash"]={}

	sets.wsdmg["Shadow Stitch"]={}

	sets.wsacc["Shadow Stitch"]={}

	sets.wsdmg["Energy Steal"]={}

	sets.wsacc["Energy Steal"]={}

	sets.wsdmg["Evisceration"]={}

	sets.wsacc["Evisceration"]={}

	sets.wsdmg["Aeolian Edge"]={}

	sets.wsacc["Aeolian Edge"]={}

	sets.wsdmg["Exenterator"]={}

	sets.wsacc["Exenterator"]={}
	--dagger ws
--ws sets

--engaged sets
	sets.tp.nin.h45.lowacc={
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
    feet={ name="Herculean Boots", augments={'Accuracy+16','"Triple Atk."+4','AGI+2','Attack+9',}},
    neck="Iskur Gorget",
    waist="Windbuffet Belt +1",
    left_ear="Suppanomimi",
    right_ear="Telos Earring",
    left_ring="Petrov Ring",
    right_ring="Epona's Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
	}

	sets.tp.nin.h45.medacc=set_combine(sets.tp.nin.h45.lowacc, {
		neck="Combatant's Torque",
		waist="Kentarch Belt +1",
		right_ring="Regal Ring",
	})

	sets.tp.nin.h45.highacc=set_combine(sets.tp.nin.h45.medacc, {
		head="Dampening Tam",
		left_ear="Mache Earring +1",
		left_ring="Chirich Ring +1",
	})

	sets.tp.nin.h30.lowacc={
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
    feet={ name="Taeon Boots", augments={'Accuracy+20 Attack+20','"Dual Wield"+5','STR+7 DEX+7',}},
    neck="Iskur Gorget",
    waist="Reiki Yotai",
    left_ear="Suppanomimi",
    right_ear="Eabani Earring",
    left_ring="Petrov Ring",
    right_ring="Epona's Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
	}

	sets.tp.nin.h30.medacc=set_combine(sets.tp.nin.h45.lowacc, {
		neck="Combatant's Torque",
		waist="Kentarch Belt +1",
		right_ring="Regal Ring",
	})

	sets.tp.nin.h30.highacc=set_combine(sets.tp.nin.h45.medacc, {
		head="Dampening Tam",
		left_ear="Mache Earring +1",
		left_ring="Chirich Ring +1",
	})

	sets.tp.nin.h15.lowacc={
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Floral Gauntlets", augments={'Rng.Acc.+14','Accuracy+13','"Triple Atk."+2','Magic dmg. taken -3%',}},
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Taeon Boots", augments={'Accuracy+20 Attack+20','"Dual Wield"+5','STR+7 DEX+7',}},
    neck="Iskur Gorget",
    waist="Reiki Yotai",
    left_ear="Suppanomimi",
    right_ear="Eabani Earring",
    left_ring="Petrov Ring",
    right_ring="Epona's Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
	}

	sets.tp.nin.h15.medacc=set_combine(sets.tp.nin.h15.lowacc, {
		neck="Combatant's Torque",
		waist="Kentarch Belt +1",
		right_ring="Regal Ring",
	})

	sets.tp.nin.h15.highacc=set_combine(sets.tp.nin.h15.medacc, {
		head="Dampening Tam",
		left_ear="Mache Earring +1",
		left_ring="Chirich Ring +1",
	})

	sets.tp.nin.h0.lowacc={
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Floral Gauntlets", augments={'Rng.Acc.+14','Accuracy+13','"Triple Atk."+2','Magic dmg. taken -3%',}},
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Taeon Boots", augments={'Accuracy+20 Attack+20','"Dual Wield"+5','STR+7 DEX+7',}},
    neck="Iskur Gorget",
    waist="Reiki Yotai",
    left_ear="Suppanomimi",
    right_ear="Eabani Earring",
    left_ring="Petrov Ring",
    right_ring="Epona's Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
	}

	sets.tp.nin.h0.medacc=set_combine(sets.tp.nin.h0.lowacc, {
		neck="Combatant's Torque",
		waist="Kentarch Belt +1",
		right_ring="Regal Ring",
	})

	sets.tp.nin.h0.highacc=set_combine(sets.tp.nin.h0.medacc, {
		head="Dampening Tam",
		left_ear="Mache Earring +1",
	})

	sets.tp.dnc.h45.lowacc=set_combine(sets.tp.nin.h45.lowacc,{
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+5','"Dual Wield"+10',}},
	})
	sets.tp.dnc.h45.medacc=set_combine(sets.tp.nin.h45.medacc,{
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+5','"Dual Wield"+10',}},
	})
	sets.tp.dnc.h45.highacc=set_combine(sets.tp.nin.h45.highacc,{
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+5','"Dual Wield"+10',}},
	})

	sets.tp.dnc.h30.lowacc=set_combine(sets.tp.nin.h45.lowacc,{
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+5','"Dual Wield"+10',}},
	})
	sets.tp.dnc.h30.medacc=set_combine(sets.tp.nin.medacc,{
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+5','"Dual Wield"+10',}},
	})
	sets.tp.dnc.h30.highacc=set_combine(sets.tp.nin.highacc,{
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+5','"Dual Wield"+10',}},
	})

	sets.tp.dnc.h15.lowacc=set_combine(sets.tp.nin.h15.lowacc,{
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+5','"Dual Wield"+10',}},
	})
	sets.tp.dnc.h15.medacc=set_combine(sets.tp.nin.h15.medacc,{
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+5','"Dual Wield"+10',}},
	})
	sets.tp.dnc.h15.highacc=set_combine(sets.tp.nin.h15.highacc,{
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+5','"Dual Wield"+10',}},
	})

	sets.tp.dnc.h0.lowacc=set_combine(sets.tp.nin.h0.lowacc,{
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+5','"Dual Wield"+10',}},
	})
	sets.tp.dnc.h0.medacc=set_combine(sets.tp.nin.h0.medacc,{
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+5','"Dual Wield"+10',}},
	})
	sets.tp.dnc.h0.highacc=set_combine(sets.tp.nin.h0.highacc,{
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+5','"Dual Wield"+10',}},
	})

	sets.tp.sw.lowacc={
		range={ name="Fomalhaut", augments={'Path: A',}},
    ammo="Chrono Bullet",
    head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
    feet={ name="Herculean Boots", augments={'Accuracy+16','"Triple Atk."+4','AGI+2','Attack+9',}},
    neck="Iskur Gorget",
    waist="Windbuffet Belt +1",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Petrov Ring",
    right_ring="Epona's Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
	}

	sets.tp.sw.medacc=set_combine(sets.tp.sw.lowacc,{
		neck="Combatant's Torque",
		waist="Kentarch Belt +1",
	})

	sets.tp.sw.highacc=set_combine(sets.tp.sw.medacc,{
		head={ name="Dampening Tam", augments={'DEX+9','Accuracy+13','Mag. Acc.+14','Quadruple Attack +2',}},
    right_ear="Mache Earring +1",
    left_ring="Chirich Ring +1",
	})

	sets.hybrid.sw.lowacc=set_combine(sets.tp.sw.lowacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.sw.medacc=set_combine(sets.tp.sw.medacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.sw.highacc=({
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.nin.h45.lowacc=set_combine(sets.tp.nin.h45.lowacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.nin.h45.medacc=set_combine(sets.tp.nin.h45.lowmed,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.nin.h45.highacc=set_combine(sets.tp.nin.h45.highacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.nin.h30.lowacc=set_combine(sets.tp.nin.h30.lowacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.nin.h30.medacc=set_combine(sets.tp.nin.h30.medacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.nin.h30.highacc=set_combine(sets.tp.nin.h30.highacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.nin.h15.lowacc=set_combine(sets.tp.nin.h15.lowacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.nin.h15.medacc=set_combine(sets.tp.nin.h15.medacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.nin.h15.highacc=set_combine(sets.tp.nin.h15.highacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.nin.h0.lowacc=set_combine(sets.tp.nin.h0.lowacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.nin.h0.medacc=set_combine(sets.tp.nin.h0.medacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.nin.h0.highacc=set_combine(sets.tp.nin.h0.highacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.dnc.h45.lowacc=set_combine(sets.tp.dnc.h45.lowacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.dnc.h45.medacc=set_combine(sets.tp.dnc.h45.lowmed,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.dnc.h45.highacc=set_combine(sets.tp.dnc.h45.highacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.dnc.h30.lowacc=set_combine(sets.tp.dnc.h30.lowacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.dnc.h30.medacc=set_combine(sets.tp.dnc.h30.medacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.dnc.h30.highacc=set_combine(sets.tp.dnc.h30.highacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.dnc.h15.lowacc=set_combine(sets.tp.dnc.h15.lowacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.dnc.h15.medacc=set_combine(sets.tp.dnc.h15.medacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.dnc.h15.highacc=set_combine(sets.tp.dnc.h15.highacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.dnc.h0.lowacc=set_combine(sets.tp.dnc.h0.lowacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.dnc.h0.medacc=set_combine(sets.tp.dnc.h0.medacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})

	sets.hybrid.dnc.h0.highacc=set_combine(sets.tp.dnc.h0.highacc,{
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
	})
--engaged sets

--idle sets
	sets.idle.regen={
		head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Mummu Kecks +2",
    feet="Meg. Jam. +2",
    neck="Sanctity Necklace",
    waist="Flume Belt +1",
    left_ear="Ethereal Earring",
    right_ear="Infused Earring",
    left_ring="Sheltered Ring",
    right_ring="Chirich Ring +1",
    back="Moonlight Cape",
	}

	sets.idle.refresh={head={ name="Rawhide Mask", augments={'HP+50','Accuracy+15','Evasion+20',}},
    body="Mekosu. Harness",
    hands={ name="Herculean Gloves", augments={'Blood Pact Dmg.+3','Attack+15','"Refresh"+1','Accuracy+8 Attack+8','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    legs={ name="Rawhide Trousers", augments={'MP+50','"Fast Cast"+5','"Refresh"+1',}},
    feet="Nyame Sollerets",
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Etiolation Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Vocane Ring +1",
    back="Moonlight Cape",}

	sets.idle.dt={
		head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Mummu Kecks +2",
    feet="Nyame Sollerets",
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Etiolation Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Vocane Ring +1",
    back="Moonlight Cape",
	}

	sets.idle.regenmove=set_combine(sets.idle.regen,{legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},})

	sets.idle.refreshmove=set_combine(sets.idle.refresh,{legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},})

	sets.idle.dtmove=set_combine(sets.idle.dt,{legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},})
--idle sets
end

windower.register_event('tp change', function(tp)
    if AutoRime == 1 then
        if not buffactive['amnesia'] then
            if player.tp > 1010 and   player.status == 'Engaged' then
                windower.send_command('input /ws "Savage Blade" <t>')
            end
        end
    end
        if Autows == 1 then
        if not buffactive['amnesia'] then
            if buffactive['Aftermath: Lv.3'] then
                if player.tp > 1010 and   player.status == 'Engaged' then
                    windower.send_command('input /ws "Savage Blade" <t>')
                end
            elseif player.tp > 3000 then
                windower.send_command('input /ws "Savage Blade" <t>')
            end
        end
    end
end)
	--windower.send_command('text ammoname text "'..player.equipment.ammo..': "')
	--windower.send_command('text ammo text "'..player.inventory[player.equipment.ammo].count..'"')

function precast(spell)
	if spell.prefix=="/range" then
		equip(sets.preshot)
	end
	if spell.prefix=="/magic" then
		equip(sets.precast.magic)
	end
	if spell.prefix=="/ninjutsu" then
		equip(sets.precast.ninjutsu)
	end
	if spell.prefix=="/jobability" then
		equip(sets.ja[spell.english])
	end
	if spell.prefix=="/weaponskill" then
		if WSMode=="damage" then
			equip(sets.wsdmg[spell.english])
		elseif WSMode=="accuracy" then
			equip(sets.wsacc[spell.english])
		end
		if not phys_ws:find(spell.english) then
			if spell.element==world.day_element or spell.element == world.weather_element then
				equip(sets.obi)
			end
		end
	end
	if spell.type=="CorsairRoll" then
		equip(sets.rolls)
	end
	if spell.type=="CorsairShot" then
		if not spell.english=="Light Shot" or not spell.english=="Dark Shot" then
			if qdmode=="damage" then
				equip(sets.shots.damage[spell.english])
			end
			if qdmode=="acc" then
				equip(sets.shots.acc[spell.english])
			end
			if qdmode=="stp" then
				equip(sets.shots.stp[spell.english])
			end
		else
			equip(sets.shots.acc[spell.english])
		end
	end
	weaponry()
	gui()
end

function midcast(spell)
	if spell.prefix=="/range" then
		equip(sets.midshot[ShotType])
	end
	if spell.prefix=="/magic" then
		equip(sets.midcast.magic[spell.english])
	end
	if spell.prefix=="/ninjutsu" then
		equip(sets.midcast.ninjutsu)
	end
	weaponry()
	gui()
end

function aftercast(spell)
	if spell.prefix=="/range" then
		send_command("gs c ammo")
	end
	status_change(player.status)
end

function status_change(new,old)
	if new=="Engaged" then
		if TPMode=="dd" then
			if WeaponryType=="dw" then
				if player.sub_job=="DNC" then
				--equip(sets.tp.dnc.h45[Melee_Acc])
					if mhaste==45 then
						equip(sets.tp.dnc.h45[Melee_Acc])
					elseif mhaste >=30 and mhaste <45 then
						equip(sets.tp.dnc.h30[Melee_Acc])
					elseif mhaste >=15 and mhaste <30 then
						equip(sets.tp.dnc.h15[Melee_Acc])
					elseif mhaste < 15 then
						equip(sets.tp.dnc.h0[Melee_Acc])
					end
				elseif player.sub_job=="NIN" then
				--equip(sets.tp.nin.h45[Melee_Acc])
					if mhaste==45 then
						equip(sets.tp.nin.h45[Melee_Acc])
					elseif mhaste >=30 and mhaste <45 then
						equip(sets.tp.nin.h30[Melee_Acc])
					elseif mhaste >=15 and mhaste <30 then
						equip(sets.tp.nin.h15[Melee_Acc])
					elseif mhaste < 15 then
						equip(sets.tp.nin.h0[Melee_Acc])
					end
				end
			elseif WeaponryType=="sw" then
				equip(sets.tp.sw[Melee_Acc])
			end
		elseif TPMode=="Hybrid" then
			if WeaponryType=="dw" then
				if player.sub_job=="DNC" then
					if mhaste==45 then
						equip(sets.hybrid.dnc.h45[Melee_Acc])
					elseif mhaste >=30 and mhaste <45 then
						equip(sets.hybrid.dnc.h30[Melee_Acc])
					elseif mhaste >=15 and mhaste <30 then
						equip(sets.hybrid.dnc.h15[Melee_Acc])
					elseif mhaste < 15 then
						equip(sets.hybrid.dnc.h0[Melee_Acc])
					end
				elseif player.sub_job=="NIN" then
					if mhaste==45 then
							equip(sets.hybrid.nin.h45[Melee_Acc])
					elseif mhaste >=30 and mhaste <45 then
						equip(sets.hybrid.nin.h30[Melee_Acc])
					elseif mhaste >=15 and mhaste <30 then
						equip(sets.hybrid.nin.h15[Melee_Acc])
					elseif mhaste < 15 then
						equip(sets.hybrid.nin.h0[Melee_Acc])
					end
				end
			elseif WeaponryType=="sw" then
				equip(sets.hybrid.sw[Melee_Acc])
			end
		elseif TPMode=="DT" then
			equip(sets.idle.dt)
		elseif TPMode=="MEVA" then
			equip(sets.idle.mdt)
		end
	else
		equip(sets.idle[IdleType])
	end

	weaponry()
	send_command("gs c ammo")
	--add_to_chat("testing mhaste"..mhaste.."")
	gui()
end

function buff_change(buff,gain)
	buff = string.lower(buff)

	if buff == "haste" and gain then
		if hastetype=="Haste II" or hastetype=="Hastega II" then
			mhaste=mhaste+30
			lasthastereceived=30
		end
		if hastetype=="Haste" or hastetype=="Hastega" then
			mhaste=mhaste+15
			lasthastereceived=15
		end
	end
	if buff == "march" and gain then
		march=march+1
		if march== 1 then
			mhaste=mhaste+15
		end
		if march >2 then
			march=2
		end
		if march== 2 then
			mhaste=mhaste+45
		end
	end
	if mhaste > 45 then
			mhaste = 45
	end
	if (buff == "haste" or buff == "flurry") and not gain then
		hastetype="none"
		mhaste=mhaste-lasthastereceived
		add_to_chat(206, "hastetype:"..hastetype.."")
	end
	if buff == "march" and not gain then
			march=march -1
			mhaste=mhaste-15
			add_to_chat(206, "lost a march")
	end
	if march==0 and hastetype=="none" and not buffactive["Embrava"] then
		mhaste=0
	end
	--osd() --uncomment to use osd
end

function hastecount()
	if buffactive["Haste"] then
		if hastetype=="Haste II" or hastetype=="Hastega II" then
			mhaste=mhaste+30
		end
		if hastetype=="Haste" or hastetype=="Hastega" then
			mhaste=mhaste+15
		end
	end
	if buffactive["march"] then
		march=march+1
		if march== 1 then
			mhaste=mhaste+15
		end
		if march==2 then
			mhaste=mhaste+30
		end
		if march >2 then
			march=2
		end
		if march== 2 then
			mhaste=mhaste+(march*15)
		end
	end
		if mhaste > 45 then
				mhaste = 45
		end
		if march==0 and hastetype=="none" and not buffactive["Embrava"] then
			mhaste=0
		end
end

function self_command(command)
	if command=="ammo" then
		windower.send_command('text ammoname text "'..player.equipment.ammo..': "')
		windower.send_command('text ammo pos 1000 50;pause 1.5;text ammo text "'..player.inventory[player.equipment.ammo].count..'"')
	end
	if command=="lowacc" then
		Melee_Acc="lowacc"
		add_to_chat(206,"Melee_Acc:"..Melee_Acc.."")
		gui()
	end
	if command=="medacc" then
		Melee_Acc="medacc"
		add_to_chat(206,"Melee_Acc:"..Melee_Acc.."")
		gui()
	end
	if command=="highacc" then
		Melee_Acc="highacc"
		add_to_chat(206,"Melee_Acc:"..Melee_Acc.."")
		gui()
	end
	if command=="cycle accuracy" then
		if Melee_Acc=="lowacc" then
			Melee_Acc="medacc"
		elseif Melee_Acc=="medacc" then
			Melee_Acc="highacc"
		elseif Melee_Acc=="highacc" then
			Melee_Acc="lowacc"
		end
		add_to_chat(206,"Melee_Acc:"..Melee_Acc.."")
		gui()
		status_change(player.status)
	end
	if command=="dd" then
		TPMode="dd"
		add_to_chat(206,"TPMode:"..TPMode.."")
		gui()
		status_change(player.status)
	end
	if command=="hybrid" then
		TPMode="Hybrid"
		add_to_chat(206,"TPMode:"..TPMode.."")
		gui()
		status_change(player.status)
	end
	if command=="dt" then
		TPMode="dt"
		add_to_chat(206,"TPMode:"..TPMode.."")
		gui()
		status_change(player.status)
	end
	if command=="cycle idle" then
		if IdleType=="regenmove" then
			IdleType="refreshmove"
		elseif IdleType=="refreshmove" then
			IdleType="dtmove"
		elseif	IdleType=="dtmove" then
			IdleType="regenmove"
		else
			IdleType="regenmove"
		end
		status_change(player.status)
		gui()
	end
	if command=="cycle standing" then
		if IdleType=="regen" then
			IdleType="refresh"
		elseif IdleType=="refresh" then
			IdleType="dt"
		elseif	IdleType=="dt" then
			IdleType="regen"
		else
			IdleType="regen"
		end
		status_change(player.status)
		gui()
	end
end
function binds()
	windower.send_command('bind #f4 gs c cycle idle')
	windower.send_command('bind #f5 gs c cycle standing')
end

function sub_job_change(NewSubjob,OldSubjob)
	if player.sub_job=="DNC" or player.sub_job=="NIN" then
		WeaponryType="DualWield"
	else
		WeaponryType="OneHanded"
		Weaponry_Sub="Nusku Shield"
	end
end
function gui_create()
	windower.prim.create("background")
	windower.prim.create("divider_v1")
	windower.prim.create("divider_h1")
	windower.prim.create("divider_h2")
	windower.prim.create("divider_h3")
	windower.prim.create("main_weapon")
	windower.prim.create("sub_weapon")
	windower.prim.create("ranged_weapon")
	windower.prim.create("ammo_weapon")
	windower.prim.create("TPMode")
	windower.prim.create("Melee_Acc")
	windower.prim.create("IdleType")
end
function gui()
	ypos1=0.1*windower.get_windower_settings().ui_y_res
	ypos2=ypos1+30
	ypos3=ypos2+30
	ypos4=ypos3+30
	ypos5=ypos4+30


	windower.prim.set_color("background",130,0,0,0)
	windower.prim.set_size("background", 404,126)
	windower.prim.set_position("background",1*windower.get_windower_settings().ui_x_res-452,ypos1-2)
	windower.prim.set_visibility("background",true)

	windower.prim.set_color("divider_v1",130,255,255,255)
	windower.prim.set_size("divider_v1",2,126)
	windower.prim.set_position("divider_v1",1*windower.get_windower_settings().ui_x_res-251,ypos1-2)
	windower.prim.set_visibility("divider_v1",true)


	windower.prim.set_color("divider_h1",130,255,255,255)
	windower.prim.set_size("divider_h1",404,2)
	windower.prim.set_position("divider_h1",1*windower.get_windower_settings().ui_x_res-452,ypos2-2)
	windower.prim.set_visibility("divider_h1",true)

	windower.prim.set_color("divider_h2",130,255,255,255)
	windower.prim.set_size("divider_h2",404,2)
	windower.prim.set_position("divider_h2",1*windower.get_windower_settings().ui_x_res-452,ypos3-2)
	windower.prim.set_visibility("divider_h2",true)

	windower.prim.set_color("divider_h3",130,255,255,255)
	windower.prim.set_size("divider_h3",404,2)
	windower.prim.set_position("divider_h3",1*windower.get_windower_settings().ui_x_res-452,ypos4-2)
	windower.prim.set_visibility("divider_h3",true)

	windower.prim.set_texture("main_weapon",windower.windower_path..'addons/gearswap/data/images/'..Weaponry_Main..'.png')
	windower.prim.set_size("main_weapon",200,30)
	windower.prim.set_position("main_weapon",1*windower.get_windower_settings().ui_x_res-450,ypos1)
	windower.prim.set_color("main_weapon",140,255,255,255)
	windower.prim.set_visibility("main_weapon",true)


	windower.prim.set_texture("sub_weapon",windower.windower_path..'addons/gearswap/data/images/'..Weaponry_Sub..'.png')
	windower.prim.set_size("sub_weapon",200,30)
	windower.prim.set_position("sub_weapon",1*windower.get_windower_settings().ui_x_res-250,ypos1)
	windower.prim.set_color("sub_weapon",140,255,255,255)
	windower.prim.set_visibility("sub_weapon",true)


	windower.prim.set_texture("ranged_weapon",windower.windower_path..'addons/gearswap/data/images/'..Weaponry_Ranged..'.png')
	windower.prim.set_size("ranged_weapon",200,30)
	windower.prim.set_position("ranged_weapon",1*windower.get_windower_settings().ui_x_res-450,ypos2)
	windower.prim.set_color("ranged_weapon",140,255,255,255)
	windower.prim.set_visibility("ranged_weapon",true)


	windower.prim.set_texture("ammo_weapon",windower.windower_path..'addons/gearswap/data/images/'..Weaponry_Ammo..'.png')
	windower.prim.set_size("ammo_weapon",200,30)
	windower.prim.set_position("ammo_weapon",1*windower.get_windower_settings().ui_x_res-250,ypos2)
	windower.prim.set_color("ammo_weapon",140,255,255,255)
	windower.prim.set_visibility("ammo_weapon",true)


	windower.prim.set_texture("TPMode",windower.windower_path..'addons/gearswap/data/images/'..TPMode..'mode.png')
	windower.prim.set_size("TPMode",200,30)
	windower.prim.set_position("TPMode",1*windower.get_windower_settings().ui_x_res-450,ypos3)
	windower.prim.set_color("TPMode",140,255,255,255)
	windower.prim.set_visibility("TPMode",true)

	windower.prim.set_texture("Melee_Acc",windower.windower_path..'addons/gearswap/data/images/'..Melee_Acc..'.png')
	windower.prim.set_size("Melee_Acc",200,30)
	windower.prim.set_position("Melee_Acc",1*windower.get_windower_settings().ui_x_res-250,ypos3)
	windower.prim.set_color("Melee_Acc",140,255,255,255)
	windower.prim.set_visibility("Melee_Acc",true)

	windower.prim.set_texture("IdleType",windower.windower_path..'addons/gearswap/data/images/'..IdleType..'idle.png')
	windower.prim.set_size("IdleType",200,30)
	windower.prim.set_position("IdleType",1*windower.get_windower_settings().ui_x_res-450,ypos4)
	windower.prim.set_color("IdleType",140,255,255,255)
	windower.prim.set_visibility("IdleType",true)
end

function weaponry()
  if WeaponryType=="OneHanded" then
    equip(sets.Weaponry.main[Weaponry_Main])
    equip(sets.Weaponry.sub[Weaponry_Sub])
  elseif WeaponryType=="TwoHanded" then
    equip(sets.Weaponry[TwoHandedType])
  elseif WeaponryType=="DualWield" then
    equip(sets.Weaponry.main[Weaponry_Main])
		equip(sets.Weaponry.sub[Weaponry_Sub])
  end
	equip(sets.Weaponry.ranged[Weaponry_Ranged])
	equip(sets.Weaponry.ammo[Weaponry_Ammo])
end

function variables()
	--variables
	Weaponry_Main="Naegling"
	Weaponry_Sub="Blurred Knife +1"
	Weaponry_Ranged="Fomalhaut"
	Weaponry_Ammo="Chrono Bullet"
	WeaponryType="DualWield"
	TPMode="dd"
	TPType="Dual Wield"
	Melee_Acc="lowacc"
	IdleType="dtmove"
	ShotType="stp"

	OneHandedType=""
	DualWieldType=""
	qdmode="damage"
	WSMode="damage"
	mhaste=0
	march=0
	jhaste=0
	lasthastereceived=0
	Autows=0
	AutoRime=0

	sets.Weaponry_Main= T{}
	sets.Weaponry_Sub= T{}
	sets.Weaponry_Ranged= T{}
	sets.Weaponry_Ammo= T{}
	sets.WeaponryType= T{}
	sets.OneHandedType= T{}
	sets.DualWieldType= T{}
	sets.TPMode= T{}
	sets.TPType= T{}
	sets.Melee_Acc= T{}
	sets.IdleType= T{}
	sets.ShotType= T{}
	sets.WeaponryType= T{}
	sets.qdmode= T{}
	sets.WSMode= T{}
	sets.mhaste= T{}
	sets.march= T{}
	sets.jahaste= T{}
	sets.lasthastereceived= T{}
--variables
end

function binds()
	windower.send_command("bind #f1 gs c cycle accuracy")
	windower.send_command("bind @f1 gs c dd")
	windower.send_command("bind @f2 gs c hybrid")
	windower.send_command("bind @f3 gs c dt")
	windower.send_command("bind #f3 gs c cycle standing")
	windower.send_command("bind #f4 gs c cycle idle")
end

function file_unload(new_job)
	windower.send_command('text ammo delete;text ammoname delete')
end
