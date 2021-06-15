function get_sets()
	lelujob="brd"
	itchyjob="geo"

	sets.lelujob=T{}
	sets.itchyjob=T{}
-- includes
	include('haste-include.lua')
	include('skillchain-elements.lua')
	include('organizer-lib.lua')
	include('corrolls.lua')
	include('lelu'..lelujob..'gkeys.lua')
	include('itchy'..itchyjob..'gkeys.lua')
-- includes
-- keybinds, aliases and text boxes.
	send_command('alias pf gs c primfix')
	send_command('bind #4 idle')
	send_command('bind #2 gs c pdtset')
	send_command('bind #8 gs c mdtset')
	send_command('bind #g gs c ochain')
	send_command('bind @p gs c aegis')
	send_command('bind @z gs c srivatsa')
	send_command('bind ^z gs c priwen')
	send_command('bind @f1 gs c dd')
	send_command('bind @f2 gs c hybrid')
	send_command('bind @f3 gs c pdt')
	send_command('bind @f4 gs c mdt')
	send_command('bind @f5 gs c dt')
	send_command('bind @f6 gs c resisttoggle')
	send_command('bind #f1 gs c idle')
	send_command('bind #f2 gs c kitemdt')
	send_command('bind #f3 gs c kitepdt')
	send_command('bind #f4 gs c pdtidle')
	send_command('bind #f5 gs c mdtidle')
	send_command('bind #f6 gs c dtidle')
	send_command('bind #f7 gs c dtkite')
	send_command('bind #x gs equip sets.aftercast.dt')
	send_command('bind #m majesty')
	send_command('bind #h hybrid')
	send_command('bind #t tp')
	send_command('bind @r gs c rrlock')
	send_command('bind @f9 gs c lowacc')
	send_command('bind @f10 gs c medacc;alias hybrid gs equip sets.aftercast.hybrid.medacc;alias tp gs equip sets.aftercast.tp.medacc')
	send_command('bind @f11 gs c highacc;alias hybrid gs equip sets.aftercast.hybrid.highacc;alias tp gs equip sets.aftercast.tp.highacc')
	send_command('bind @f12 gs c wsacctoggle')
	send_command('bind #a gs c repulse')
	send_command('bind #s intervene')
	send_command('bind #i invincible')
	send_command('bind #6 phalanx')
	send_command('bind #5 input /ma "Enlight II" <me>')
	send_command('bind @3 input /item "Remedy" <me>')
	send_command('bind #1 input /item "Holy Water" <me>')
	send_command('bind #e input /item "Echo Drops" <me>')
	send_command('bind @1 cmd9')
	send_command('bind @2 cmd10')
	send_command('bind #c crusade')
	send_command('bind @a gs c aftermath')
	send_command('bind !- cmd1')
	send_command('bind != cmd2')
	send_command('bind !backspace cmd3')
	send_command('bind ^= cmd4')
	send_command('bind @- cmd5')
	send_command('bind @= cmd6')
	send_command('bind #- cmd7')
	send_command('bind #= cmd8')
	send_command('bind @h gs c help')
	send_command('bind !, EXLOCK')
	send_command('bind ^, gs c mevalock')
	send_command('bind ^. gs c dtlock')
	send_command('bind ^/ gs c mpuplock')
-- keybinds

--runes index
	sets.runes={}
	sets.runes.index={'Tenebrae','Gelus','Ignis','Flabra','Tellus','lux','Unda','Sulpor'}
	runes=1
--runes index
macros_setup()
-- aliases
	send_command('alias gsupdate gs c update')
	send_command('alias tp gs equip sets.aftercast.sword.highacc')
	send_command('alias hybrid gs equip sets.aftercast.absorbmode.highacc')
	send_command('alias idle gs equip sets.aftercast.idle')
-- aliases

-- lists
	include('physws.lua')
	cure= S{'Cure','Cure II','Cure III','Cure IV','Curaga','Curaga II', 'Cura','Cura II','Healing Breeze'}
	utsu= S{'Utsusemi: Ichi', 'Utsusemi: Ni'}
	PLD_JA= S{'Sentinel','Rampart','Holy Circle','Divine Emblem','Fealty','Chivalry','Intervene','Invincible','Shield Bash'}
-- lists for ws and spells




	dalegs={ name="Acro Breeches", augments={'Accuracy+18 Attack+18','"Dbl.Atk."+3','Crit. Hit Damage +2%',}}
	dafeet={ name="Acro Leggings", augments={'Accuracy+19 Attack+19','"Dbl.Atk."+3','Crit. Hit Damage +2%',}}

	wsdmghead={ name="Yorium Barbuta", augments={'Accuracy+17 Attack+17','Enmity+7','Weapon skill damage +3%',}}
	wsdmghands={ name="Yorium Gauntlets", augments={'Accuracy+17','Enmity+10','Weapon skill damage +3%',}}
	wsdmglegs={ name="Yorium Cuisses", augments={'Mag. Acc.+8','Enmity+10','Weapon skill damage +3%',}}
	wsdmgfeet={ name="Yorium Sabatons", augments={'Accuracy+18 Attack+18','Enmity+10','Weapon skill damage +3%',}}

	fcbody={ name="Odyss. Chestplate", augments={'Mag. Acc.+19','"Fast Cast"+6','VIT+1','"Mag.Atk.Bns."+6',}}
	fcfeet={ name="Odyssean Greaves", augments={'Mag. Acc.+21','"Fast Cast"+6','MND+4',}}


--

-- variables
	PLDMode="maxhp"
	swordtype="burtgang"
	shieldtype="Srivatsa"
	last_shield_used="Srivatsa"
	Acc="lowacc"
	IdleMode="standard"
	TPSet="dd"
	mevalock=false
	dtlock=false
	rrlock=false
	mpuplock=false
	knockbacklock=false
	WSMode="dmg"
	AM_ON_OR_OFF="on"
	display_help="false"
	resistance="death"
	ExclusiveLock=true


	sets.PLDMode= T{}
	sets.swordtype= T{}
	sets.shieldtype= T{}
	sets.Acc= T{}
	sets.IdleMode= T{}
	sets.TPSet= T{}
	sets.repulsemode= T{}
	sets.WSMode= T{}
	sets.AM_ON_OR_OFF= T{}
	sets.display_help= T{}
	sets.resistance= T{}
-- variables
gui()
-- base sets
	sets.resist={}
	sets.precast={}
	sets.precast.ws={}
	sets.ws={}
	sets.ws.dmg={}
	sets.ws.acc={}
	sets.midcast={}
	sets.aftercast={}
	sets.aftercast.sword={}
	sets.aftercast.greatsword={}
	sets.aftercast.club={}
	sets.aftercast.aftermath={}
	sets.repulsemantle={back="Impassive Mantle",}
-- base sets

-- weaponry
	sets.burtgang={main="Burtgang",}

	sets.almace={main="Almace",}

	sets.excalibur={main="Excalibur",}

	sets.sequence={main="Sequence",}

	sets.naegling={main="Naegling",}

	sets.Ochain={sub="Ochain",}

	sets.Aegis={sub="Aegis",}

	sets.Srivatsa={sub="Srivatsa",}

	sets.Priwen={sub="Priwen",}

	sets.blurred={sub="Blurred Shield +1",}
-- weaponry

-- utility set
	sets.rrlock={
		head="Twilight Helm",
		body="Twilight Mail",
	}

	sets.knockbacklock={
		back="Impassive Mantle",
	}

	sets.mevalock={
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		waist="Carrier's Sash"
	}

	sets.dtlock={

	}

	sets.movement={legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},}

	sets.sid={
	  ammo="Staunch Tathlum +1",
	  head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
	  hands={ name="Eschite Gauntlets", augments={'Mag. Evasion+15','Spell interruption rate down +15%','Enmity+7',}},
	  legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}},
	  feet={ name="Odyssean Greaves", augments={'Phys. dmg. taken -5%','MND+9','Mag. Acc.+9',}},
	  neck="Moonlight Necklace",
	  waist="Audumbla Sash",
	  left_ear="Knightly Earring",
	  right_ear="Halasz Earring",
	  left_ring="Evanescence Ring",
	}
-- utility set

-- precast sets
	sets.precast.fc= {
		ammo="Sapience Orb",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}},
		body=fcbody,
		legs={ name="Odyssean Cuisses", augments={'STR+4','"Fast Cast"+7','Accuracy+7 Attack+7',}},
		feet=fcfeet,
		neck="Voltsurge Torque",
		waist="Siegel Sash",
		right_ring="Rahab Ring",
		right_ear="Etiolation Earring",
		left_ear="Loquac. Earring",
		left_ring="Kishar Ring",
		back={ name="Rudianos's Mantle", augments={'"Fast Cast"+10',}},
	}

	sets.precast.cure= set_combine(sets.precast.fc, {
		neck="Diemer Gorget",
		waist="Flume Belt +1",
		left_ear="Nourish. Earring +1",
		right_ear="Mendi. Earring", body="Rev. Surcoat +3",
	})

	sets.precast.ja= {
		ammo="Iron Gobbet",
    head={ name="Loess Barbuta +1", augments={'Path: A',}},
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands={ name="Yorium Gauntlets", augments={'Accuracy+17','Enmity+10','Weapon skill damage +3%',}},
    legs={ name="Yorium Cuisses", augments={'Mag. Acc.+8','Enmity+10','Weapon skill damage +3%',}},
    feet={ name="Yorium Sabatons", augments={'Accuracy+18 Attack+18','Enmity+10','Weapon skill damage +3%',}},
    neck="Moonlight Necklace",
    waist="Creed Baudrier",
    left_ear="Cryptic Earring",
    right_ear="Trux Earring",
    left_ring="Apeile Ring +1",
    right_ring="Apeile Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','Enmity+10','Mag. Evasion+15',}},
	}

	sets.precast.ja["Sentinel"]= set_combine(sets.precast.ja, {feet="Cab. Leggings +3"})
	sets.precast.ja["Rampart"]= set_combine(sets.precast.ja, {head="Cab. Coronet +3", neck="Kgt. Beads +2"})
	sets.precast.ja["Fealty"]= set_combine(sets.precast.ja, {body="Cab. Surcoat +3"})
	sets.precast.ja["Chivalry"]= set_combine(sets.precast.ja, {head="Rev. Coronet +3", neck="Kgt. Beads +2", body="Cab. Surcoat +3", hands="Cab. Gauntlets +3", legs="Cab. Breeches +3", feet="Cab. leggings +3", left_ring="Levia. Ring", right_ring="Levia. Ring",})
	sets.precast.ja["Shield Bash"]= set_combine(sets.precast.ja, {left_ear="Knightly Earring", hands="Cab. Gauntlets +3", left_ring="Fenian Ring",})
	sets.precast.ja["Intervene"]= set_combine(sets.precast.ja, {hands="Cab. Gauntlets +3"})
	sets.precast.ja["Invincible"]= set_combine(sets.precast.ja, {legs="Cab. Breeches +3"})
	sets.precast.ja["Holy Circle"]= set_combine(sets.precast.ja, {feet="Rev. Leggings +3"})
	sets.precast.ja["Divine Emblem"]= set_combine(sets.precast.ja, {feet="Chev. Sabatons +1"})
	sets.precast.ja["Cover"]=set_combine(sets.precast.ja,{head="Rev. Coronet +3",body="Cab. Surcoat +3",})

	sets.precast.ja.cwaltz={
		ammo="Iron Gobbet",
    head={ name="Cab. Coronet +3", augments={'Enhances "Iron Will" effect',}},
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands="Sakpata's Gauntlets",
    legs={ name="Cab. Breeches +3", augments={'Enhances "Invincible" effect',}},
    feet="Rev. Leggings +3",
    neck="Kgt. Beads +2",
    waist="Gishdubar Sash",
    left_ear="Cryptic Earring",
    right_ear="Trux Earring",
    left_ring="Vocane Ring +1",
    right_ring="Regal Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','Enmity+10','Mag. Evasion+15',}},
	}

	sets.precast.ws.CdC= {ammo="Aurgelmir Orb +1", head="Valorous Mask", body="Nyame mail",
    hands="Chev. Gauntlets +1", legs=dalegs, feet=dafeet, neck="Fotia Gorget",
    waist="Fotia Belt", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
	right_ring="Ramuh Ring +1", left_ring="Regal Ring", back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},}

	sets.precast.ws.Req= {ammo="Aurgelmir Orb +1", head="Valorous Mask", body="Dagon Breastplate",
    hands="Chev. Gauntlets +1", legs=dalegs, feet=dafeet, neck="Fotia Gorget",
    waist="Fotia Belt", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
    right_ring="Ramuh Ring +1", left_ring="Regal Ring", back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},}

	sets.precast.ws.VB= {ammo="Aurgelmir Orb +1", head="Valorous Mask", body="Nyame mail",
    hands="Chev. Gauntlets +1", legs="Sulev. Cuisses +2", feet=dafeet, neck="Asperity Necklace",
    waist="Windbuffet Belt +1", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
    right_ring="Ramuh Ring +1", left_ring="Regal Ring", back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},}

	sets.precast.ws.Atonement= set_combine(sets.precast.ja, {head=wsdmghead, neck="Fotia Gorget", body="Nyame Mail", hands=wsdmghands, waist="Fotia Belt", legs=wsdmglegs, feet="Sulev. Leggings +2", right_ear="Thrud Earring", left_ear="Ishvara Earring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},})

	sets.precast.ws.Resolution= set_combine(sets.precast.ws.CdC, {left_ring="Ifrit Ring +1"})

	sets.precast.ws.magicws={
	ammo="Pemphredo Tathlum",
	body="Cohort Cloak +1",
	left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
	hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}},
	right_ear="Friomisi Earring", back={ name="Rudianos's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
	legs="Sakpata's Cuisses",
	waist="Fotia Belt",
	left_ring="Shiva Ring +1",
	feet={ name="Founder's Greaves", augments={'VIT+9','Accuracy+14','"Mag.Atk.Bns."+13','Mag. Evasion+15',}},
	neck="Fotia Gorget",
	right_ring="Shiva Ring +1",
	}

	sets.wsdaybonus={head="Gavialis Helm",}

	sets.tpbonusphysicaldamage={left_ear="Moonshade Earring", right_ear="Brutal Earring"}
	sets.tpbonusphysicalaccuracy={right_ear="Moonshade Earring", left_ear="Telos Earring"}
	sets.tpbonusmagicaldamage={left_ear="Moonshade Earring", right_ear="Crematio Earring"}
	sets.tpbonusmagicalaccuracy={left_ear="Moonshade Earring", right_ear="Digni. Earring"}
	sets.tpbonusatonement={left_ear="Moonshade Earring",}
-- precast sets

-- ws sets
	--Sword WS
	sets.ws.dmg["Fast Blade"]=set_combine(sets.precast.ws.VB, {})

	sets.ws.acc["Fast Blade"]=set_combine(sets.ws.dmg["Fast Blade"], {neck="Combatant's Torque", back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, right_ring="Regal Ring", })

	sets.ws.dmg["Burning Blade"]=set_combine(sets.precast.ws.magicws, {})

	sets.ws.acc["Burning Blade"]=set_combine(sets.precast.ws.magicws, {})

	sets.ws.dmg["Red Lotus Blade"]=set_combine(sets.precast.ws.magicws, {})

	sets.ws.acc["Red Lotus Blade"]=set_combine(sets.precast.ws.magicws, {})

	sets.ws.dmg["Flat Blade"]=set_combine(sets.precast.ws.VB, {left_ring="Ifrit Ring +1", right_ring="Ifrit Ring",})

	sets.ws.acc["Flat Blade"]=set_combine(sets.ws.dmg["Flat Blade"], {neck="Combatant's Torque", back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, right_ring="Regal Ring", })

	sets.ws.dmg["Shining Blade"]=set_combine(sets.precast.ws.magicws,{})

	sets.ws.acc["Shining Blade"]=set_combine(sets.precast.ws.magicws,{})

	sets.ws.dmg["Seraph Blade"]=set_combine(sets.precast.ws.magicws,{})

	sets.ws.acc["Seraph Blade"]=set_combine(sets.precast.ws.magicws,{})

	sets.ws.dmg["Circle Blade"]=set_combine(sets.precast.ws.VB, {left_ring="Ifrit Ring +1", right_ring="Regal Ring",})

	sets.ws.acc["Circle Blade"]=set_combine(sets.ws.dmg["Circle Blade"], {neck="Combatant's Torque", back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, right_ring="Regal Ring", })

	sets.ws.dmg["Spirits Within"]=set_combine(sets.precast.ja, {body="Nyame Mail", waist="Fotia Belt",})

	sets.ws.acc["Spirits Within"]=set_combine(sets.precast.ja, {body="Nyame Mail", waist="Fotia Belt",})

	sets.ws.dmg["Vorpal Blade"]=set_combine(sets.precast.ws.VB, {waist="Fotia Belt", left_ring="Ifrit Ring +1", right_ring="Regal Ring",})

	sets.ws.acc["Vorpal Blade"]=set_combine(sets.ws.dmg["Vorpal Blade"], {neck="Combatant's Torque", back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, right_ring="Regal Ring", })

	sets.ws.dmg["Swift Blade"]=set_combine(sets.precast.ws.VB, {neck="Fotia Gorget", waist="Fotia Belt", left_ring="Ifrit Ring +1",})

	sets.ws.acc["Swift Blade"]=set_combine(sets.ws.dmg["Swift Blade"], {legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Mache Earring +1", right_ear="Brutal Earring", right_ring="Regal Ring",})

	sets.ws.dmg["Savage Blade"]={
		ammo="Aurgelmir Orb +1",
    head={ name="Valorous Mask", augments={'Attack+16','Weapon skill damage +4%','STR+8','Accuracy+14',}},
    body="Nyame Mail",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear="Thrud Earring",
    left_ring="Ifrit Ring +1",
    right_ring="Regal Ring",
    back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}

	sets.ws.acc["Savage Blade"]=set_combine(sets.ws.dmg["Savage Blade"], {
		back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
	})

	sets.ws.dmg["Sanguine Blade"]=set_combine(sets.precast.ws.magicws, {head="Pixie Hairpin +1", left_ring="Archon Ring",})

	sets.ws.acc["Sanguine Blade"]=set_combine(sets.precast.ws.magicws, {head="Pixie Hairpin +1", left_ring="Archon Ring",})

	sets.ws.dmg["Knights of Round"]={
	ammo="Aurgelmir Orb +1",
    head={ name="Valorous Mask", augments={'Attack+16','Weapon skill damage +4%','STR+8','Accuracy+14',}},
    body="Nyame Mail",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear="Thrud Earring",
    left_ring="Ifrit Ring +1",
    right_ring="Regal Ring",
    back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}

	sets.ws.acc["Knights of Round"]={
		ammo="Aurgelmir Orb +1",
    head={ name="Valorous Mask", augments={'Attack+16','Weapon skill damage +4%','STR+8','Accuracy+14',}},
    body="Nyame Mail",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear="Thrud Earring",
    left_ring="Ifrit Ring +1",
    right_ring="Regal Ring",
    back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}

	sets.ws.dmg["Chant du Cygne"]={ammo="Aurgelmir Orb +1",
    head="Flam. Zucchetto +2",
    body="Dagon Breast.",
    hands="Flam. Manopolas +2",
    legs={ name="Lustratio Subligar", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
    feet="Thereoid Greaves",
    neck="Fotia Gorget",
    waist="Chiner's Belt +1",
    left_ear="Mache Earring +1",
    right_ear="Mache Earring +1",
    left_ring="Regal Ring",
    right_ring="Hetairoi Ring",
    back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},}

	sets.ws.acc["Chant du Cygne"]=set_combine(sets.ws.dmg["Chant du Cygne"], {legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Mache Earring +1", right_ear="Brutal Earring", hands="Chev. Gauntlets +1", right_ring="Regal Ring",})

	sets.ws.dmg["Atonement"]=set_combine(sets.precast.ws.Atonement,{

	})

	sets.ws.acc["Atonement"]=set_combine(sets.precast.ws.Atonement,{

	})

	sets.ws.dmg["Requiescat"]={ammo="Aurgelmir Orb +1", head="Carmine Mask +1", body="Carm. Scale Mail",
    hands="Carmine Fin. Ga.", legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
	feet="Carmine Greaves +1", neck="Fotia Gorget", waist="Fotia Belt", left_ear="Steelflash Earring",
	right_ear="Bladeborn Earring", left_ring="Levia. Ring", right_ring="Rufescent Ring", back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},}

	sets.ws.acc["Requiescat"]=set_combine(sets.ws.dmg["Requiescat"], {head="Gavialis Helm", back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Mache Earring +1", right_ear="Brutal Earring", right_ring="Regal Ring",})
	--Sword WS

	--Club WS

	--[[sets.ws.dmg["Shining Strike"]=set_combine(sets.precast.ws.magicws, {})

	sets.ws.acc["Shining Strike"]=set_combine(sets.precast.ws.magicws, {})

	sets.ws.dmg["Seraph Strike"]=set_combine(sets.precast.ws.magicws, {})

	sets.ws.acc["Seraph Strike"]=set_combine(sets.precast.ws.magicws, {})

	sets.ws.dmg["Brainshaker"]={ammo="Aurgelmir Orb +1", head="Lustratio Cap", body="Nyame Mail", neck="Asperity Necklace", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Sulev. Cuisses +2", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}

	sets.ws.acc["Brainshaker"]=set_combine(sets.ws.dmg["Brainshaker"], {head="Gavialis Helm", neck="Combatant's Torque", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Mache Earring +1", right_ear="Brutal Earring", right_ring="Regal Ring",})

	sets.ws.dmg["Starlight"]=set_combine(sets.precast.ws.magicws, {})

	sets.ws.acc["Starlight"]=set_combine(sets.precast.ws.magicws, {})

	sets.ws.dmg["Moonlight"]=set_combine(sets.precast.ws.magicws, {})

	sets.ws.acc["Moonlight"]=set_combine(sets.precast.ws.magicws, {})

	sets.ws.dmg["Skullbreaker"]={ammo="Aurgelmir Orb +1", head="Lustratio Cap", body="Nyame Mail", neck="Fotia Gorget", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Sulev. Cuisses +2", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}

	sets.ws.acc["Skullbreaker"]=set_combine(sets.ws.dmg["Skullbreaker"], {head="Gavialis Helm", body="Nyame mail", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Mache Earring +1", right_ear="Brutal Earring", right_ring="Regal Ring",})

	sets.ws.dmg["True Strike"]={ammo="Aurgelmir Orb +1", head="Lustratio Cap", body="Nyame Mail", neck="Fotia Gorget", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Sulev. Cuisses +2", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}

	sets.ws.acc["True Strike"]=set_combine(sets.ws.dmg["True Strike"], {head="Gavialis Helm", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Mache Earring +1", right_ear="Brutal Earring", right_ring="Regal Ring",})

	sets.ws.dmg["Judgement"]=sets.ws.dmg["True Strike"]

	sets.ws.acc["Judgement"]=sets.ws.acc["True Strike"]

	sets.ws.dmg["Black Halo"]=set_combine(sets.ws.dmg["Requiescat"], {neck="Fotia Gorget",})

	sets.ws.acc["Black Halo"]=set_combine(sets.ws.dmg["Black Halo"], {head="Gavialis Helm", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Mache Earring +1", right_ear="Brutal Earring", right_ring="Regal Ring",})

	sets.ws.dmg["Flash Nova"]=set_combine(sets.precast.ws.magicws, {})

	sets.ws.acc["Flash Nova"]=set_combine(sets.precast.ws.magicws, {})

	sets.ws.dmg["Realmrazer"]=set_combine(sets.ws.dmg["Requiescat"], {neck="Fotia Gorget",})

	sets.ws.acc["Realmrazer"]=set_combine(sets.ws.dmg["Realmrazer"], {head="Gavialis Helm", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Mache Earring +1", right_ear="Brutal Earring", right_ring="Regal Ring",})
	--Club WS

	--Great Sword WS
	sets.ws.dmg["Hard Slash"]={ammo="Aurgelmir Orb +1", head="Lustratio Cap", body="Nyame mail", neck="Asperity Necklace", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Sulev. Cuisses +2", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}

	sets.ws.acc["Hard Slash"]=set_combine(sets.ws.dmg["Hard Slash"], {head="Valorous Mask", neck="Combatant's Torque", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Mache Earring +1", right_ear="Brutal Earring", right_ring="Regal Ring",})

	sets.ws.dmg["Power Slash"]={ammo="Aurgelmir Orb +1", head="Lustratio Cap", body="Nyame mail", neck="Fotia Gorget", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Sulev. Cuisses +2", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}

	sets.ws.acc["Power Slash"]=set_combine(sets.ws.dmg["Power Slash"], {head="Valorous Mask", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Mache Earring +1", right_ear="Brutal Earring", right_ring="Regal Ring",})

	sets.ws.dmg["Frostbite"]=set_combine(sets.precast.ws.magicws, {})

	sets.ws.acc["Frostbite"]=set_combine(sets.precast.ws.magicws, {})

	sets.ws.dmg["Freezebite"]=set_combine(sets.precast.ws.magicws, {})

	sets.ws.acc["Freezebite"]=set_combine(sets.precast.ws.magicws, {})

	sets.ws.dmg["Shockwave"]={ammo="Aurgelmir Orb +1", head="Lustratio Cap", body="Nyame mail", neck="Asperity Necklace", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Sulev. Cuisses +2", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}

	sets.ws.acc["Shockwave"]=set_combine(sets.ws.dmg["Shockwave"], {head="Valorous Mask", neck="Combatant's Torque", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Mache Earring +1", right_ear="Brutal Earring", right_ring="Regal Ring",})

	sets.ws.dmg["Crescent Moon"]={ammo="Aurgelmir Orb +1", head="Lustratio Cap", body="Nyame mail", neck="Asperity Necklace", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Sulev. Cuisses +2", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}

	sets.ws.acc["Crescent Moon"]=set_combine(sets.ws.dmg["Crescent Moon"], {head="Valorous Mask", neck="Combatant's Torque", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Mache Earring +1", right_ear="Brutal Earring", right_ring="Regal Ring",})

	sets.ws.dmg["Sickle Moon"]={ammo="Aurgelmir Orb +1", head="Lustratio Cap", body="Nyame mail", neck="Asperity Necklace", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Sulev. Cuisses +2", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}

	sets.ws.acc["Sickle Moon"]=set_combine(sets.ws.dmg["Sickle Moon"], {head="Valorous Mask", neck="Combatant's Torque", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Mache Earring +1", right_ear="Brutal Earring", right_ring="Regal Ring",})

	sets.ws.dmg["Spinning Slash"]={ammo="Aurgelmir Orb +1", head="Lustratio Cap", body="Nyame mail", neck="Fotia Gorget", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Sulev. Cuisses +2", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}

	sets.ws.acc["Spinning Slash"]=set_combine(sets.ws.dmg["Spinning Slash"], {head="Valorous Mask", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Mache Earring +1", right_ear="Brutal Earring", right_ring="Regal Ring",})

	sets.ws.dmg["Ground Strike"]={ammo="Aurgelmir Orb +1", head="Lustratio Cap", body="Nyame mail", neck="Fotia Gorget", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Sulev. Cuisses +2", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}

	sets.ws.acc["Ground Strike"]=set_combine(sets.ws.dmg["Ground Strike"], {head="Valorous Mask", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Mache Earring +1", right_ear="Brutal Earring", right_ring="Regal Ring",})

	sets.ws.dmg["Herculean Slash"]=set_combine(sets.precast.ws.magicws, {})

	sets.ws.acc["Herculean Slash"]=set_combine(sets.precast.ws.magicws, {})

	sets.ws.dmg["Torcleaver"]={ammo="Aurgelmir Orb +1", head="Lustratio Cap", body="Nyame mail", neck="Fotia Gorget", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Sulev. Cuisses +2", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Terrasoul Ring", right_ring="Terrasoul Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}

	sets.ws.acc["Torcleaver"]=set_combine(sets.ws.dmg["Torcleaver"], {head="Valorous Mask", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Mache Earring +1", right_ear="Brutal Earring", right_ring="Regal Ring",})

	sets.ws.dmg["Resolution"]={ammo="Aurgelmir Orb +1", head="Lustratio Cap", body="Nyame mail", neck="Fotia Gorget", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Sulev. Cuisses +2", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}

	sets.ws.acc["Resolution"]=set_combine(sets.ws.dmg["Resolution"], {head="Valorous Mask", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Mache Earring +1", right_ear="Brutal Earring", right_ring="Regal Ring",})
	--Great Sword WS]]--
-- ws sets

-- midcast sets
	sets.midcast.cure= {
		ammo="Staunch Tathlum +1",
    head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands={ name="Macabre Gaunt. +1", augments={'Path: A',}},
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}},
    feet={ name="Odyssean Greaves", augments={'"Cure" potency +4%','Mag. Acc.+10 "Mag.Atk.Bns."+10','Quadruple Attack +2','Accuracy+20 Attack+20',}},
    neck="Sacro Gorget",
    waist="Audumbla Sash",
    left_ear="Cryptic Earring",
    right_ear="Trux Earring",
    left_ring="Apeile Ring +1",
    right_ring="Supershear Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Cure" potency +10%','Spell interruption rate down-10%',}},
	}

	sets.midcast.selfcure= {
		ammo="Staunch Tathlum +1",
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands={ name="Macabre Gaunt. +1", augments={'Path: A',}},
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}},
    feet={ name="Odyssean Greaves", augments={'Phys. dmg. taken -5%','MND+9','Mag. Acc.+9',}},
    neck="Sacro Gorget",
    waist="Audumbla Sash",
    left_ear="Tuisto Earring",
    right_ear="Mendi. Earring",
    left_ring="Gelatinous Ring +1",
    right_ring="Moonlight Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Cure" potency +10%','Spell interruption rate down-10%',}},
	}

	sets.midcast.flash= {
		ammo="Staunch Tathlum +1",
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands={ name="Eschite Gauntlets", augments={'Mag. Evasion+15','Spell interruption rate down +15%','Enmity+7',}},
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}},
    feet={ name="Odyssean Greaves", augments={'Phys. dmg. taken -5%','MND+9','Mag. Acc.+9',}},
    neck="Moonlight Necklace",
    waist="Goading Belt",
    left_ear="Cryptic Earring",
    right_ear="Trux Earring",
    left_ring="Apeile Ring +1",
    right_ring="Eihwaz Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','Enmity+10','Mag. Evasion+15',}},
	}

	sets.midcast.magicburst={
		ammo="Pemphredo Tathlum",
    head="Nyame Helm",
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Crematio Earring",
    right_ear="Friomisi Earring",
    left_ring="Mujin Band",
    right_ring="Locus Ring",
    back={ name="Rudianos's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
	}

	sets.midcast.DEflash=set_combine(sets.midcast.flash, {feet="Chev. Sabatons +1",})

	sets.midcast.utsu= set_combine(sets.midcast.flash, {})

	sets.midcast.enlight= {
		ammo="Staunch Tathlum +1",
    head={ name="Jumalik Helm", augments={'MND+9','"Mag.Atk.Bns."+13','Magic burst dmg.+9%',}},
    body="Rev. Surcoat +3",
    hands={ name="Eschite Gauntlets", augments={'Mag. Evasion+15','Spell interruption rate down +15%','Enmity+7',}},
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}},
    feet={ name="Odyssean Greaves", augments={'Phys. dmg. taken -5%','MND+9','Mag. Acc.+9',}},
    neck="Incanter's Torque",
    waist="Asklepian Belt",
    left_ear="Saxnot Earring",
		right_ear="Beatific Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Cure" potency +10%','Spell interruption rate down-10%',}},
	}

	sets.midcast.enhancing= {ammo="Sapience Orb", head="Carmine Mask +1", body="Shab. Cuirass +1", hands="Regal Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}}, feet={ name="Souveran Schuhs +1", augments={'HP+65','Attack+25','Magic dmg. taken -4',}}, neck="Incanter's Torque", waist="Olympus Sash", right_ear="Mimir Earring",
    left_ear="Andoaa Earring", left_ring="Portus Annulet", right_ring="Defending Ring", back={ name="Rudianos's Mantle", augments={'"Fast Cast"+10',}},}

	sets.midcast.Phalanx={
		ammo="Staunch Tathlum +1",
    head={ name="Odyssean Helm", augments={'INT+1','Pet: Phys. dmg. taken -2%','Phalanx +4',}},
    body={ name="Yorium Cuirass", augments={'Attack+19','Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
    legs="Sakpata's Cuisses",
    feet={ name="Souveran Schuhs +1", augments={'HP+65','Attack+25','Magic dmg. taken -4',}},
    neck="Incanter's Torque",
    waist="Audumbla Sash",
    left_ear="Knightly Earring",
    right_ear="Halasz Earring",
    left_ring="Evanescence Ring",
    right_ring="Defending Ring",
    back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},
	}

	sets.midcast.Phalanx.SIRD={
		ammo="Staunch Tathlum +1",
    head={ name="Yorium Barbuta", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    body={ name="Yorium Cuirass", augments={'Attack+19','Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
    legs={ name="Yorium Cuisses", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Odyssean Greaves", augments={'Mag. Acc.+18','"Store TP"+6','Phalanx +3','Mag. Acc.+1 "Mag.Atk.Bns."+1',}},
    neck="Incanter's Torque",
    waist="Audumbla Sash",
    left_ear="Knightly Earring",
    right_ear="Halasz Earring",
    left_ring="Evanescence Ring",
    right_ring="Defending Ring",
    back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},
	}

	sets.midcast["Reprisal"]={ammo="Egoist's Tathlum",
    head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
    body="Rev. Surcoat +3",
    hands="Regal Gauntlets",
    legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    feet={ name="Souveran Schuhs +1", augments={'HP+65','Attack+25','Magic dmg. taken -4',}},
    neck="Unmoving Collar +1",
    waist="Oneiros Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Moonlight Ring",
    right_ring="Moonlight Ring",
    back="Moonlight Cape",}

	sets.midcast.proshell= set_combine(sets.midcast.enhancing, {right_ring="Sheltered Ring"})
-- midcast sets

-- aftercast sets
	sets.aftercast.aftermath.lowacc={
		main="Burtgang",
		sub="Aegis",
		ammo="Aurgelmir Orb +1",
		head="Flam. Zucchetto +2",
		body="Hjarrandi Breast.",
		hands={ name="Acro Gauntlets", augments={'Accuracy+20 Attack+20','"Store TP"+6','Crit. hit damage +3%',}},
		legs={ name="Odyssean Cuisses", augments={'Accuracy+23 Attack+23','"Store TP"+6','DEX+4','Accuracy+10',}},
		feet={ name="Valorous Greaves", augments={'Accuracy+29','"Store TP"+8','Attack+2',}},
		neck="Lissome Necklace",
		waist="Sailfi Belt +1",
		left_ear="Cessance Earring",
		right_ear="Telos Earring",
		left_ring="Flamma Ring",
		right_ring="Petrov Ring",
		back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}

	sets.aftercast.aftermath.medacc=set_combine(sets.aftercast.aftermath.lowacc, {neck="Combatant's Torque",})

	sets.aftercast.aftermath.highacc=set_combine(sets.aftercast.aftermath.medacc, {left_ear="Digni. Earring",})

	sets.aftercast.sword.lowacc= {
		ammo="Coiste Bodhar",
    head="Flam. Zucchetto +2",
    body="Dagon Breast.",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet={ name="Odyssean Greaves", augments={'"Cure" potency +4%','Mag. Acc.+10 "Mag.Atk.Bns."+10','Quadruple Attack +2','Accuracy+20 Attack+20',}},
    neck="Asperity Necklace",
    waist="Tempus Fugit",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Petrov Ring",
    right_ring="Hetairoi Ring",
    back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},}

	sets.aftercast.sword.medacc= set_combine(sets.aftercast.sword.lowacc, {neck="Lissome Necklace", right_ear="Telos Earring", right_ring="Flamma Ring", feet="Flam. Gambieras +2",})

	sets.aftercast.sword.highacc={
		ammo="Hasty Pinion +1",
		head="Sulevia's Mask +2",
		body="Sulevia's Plate. +2",
		hands="Sulev. Gauntlets +2",
		legs="Sulev. Cuisses +2",
		feet="Sulev. Leggings +2",
		neck="Combatant's Torque",
		waist="Tempus Fugit",
		left_ear="Mache Earring +1",
		right_ear="Telos Earring",
		left_ring="Ramuh Ring +1",
		right_ring="Regal Ring",
		back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
	}

	sets.maxacc={
		ammo="Aurgelmir Orb +1",
    head="Rev. Coronet +3",
    body="Dagon Breast.",
    hands="Rev. Gauntlets +3",
    legs="Rev. Breeches +3",
    feet="Rev. Leggings +3",
    neck="Combatant's Torque",
    waist="Dynamic Belt +1",
    left_ear="Mache Earring +1",
    right_ear="Telos Earring",
    left_ring="Moonlight Ring",
    right_ring="Moonlight Ring",
    back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
	}

	sets.sbmode={
		ammo="Iron Gobbet",
		head="Chev. Armet +1",
		body={ name="Souv. Cuirass +1", augments={'VIT+12','Attack+25','"Refresh"+3',}},
		legs="Chev. Cuisses +1",
		neck="Combatant's Torque",
		hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}}, feet={ name="Souveran Schuhs +1", augments={'HP+65','Attack+25','Magic dmg. taken -4',}},
		waist="Flume Belt +1",
		left_ear="Ethereal Earring",
		right_ear="Thureous Earring",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
		back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','Enmity+10',}},
	}

	--[[sets.aftercast.hybrid= {ammo="Hasty Pinion +1", head="Rev. Coronet +1", body="Cab. Surcoat +3",
	hands="Chev. Gauntlets +1", legs="Chev. Cuisses +1", feet="Rev. Leggings +3",}

	sets.aftercast.hybrid.lowacc= set_combine(sets.aftercast.hybrid, {neck="Loricate Torque +1", waist="Nierenschutz",
	left_ear="Ethereal Earring", right_ear="Brutal Earring", left_ring="Vocane Ring +1", right_ring="Defending Ring",
	back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},})

	sets.aftercast.hybrid.medacc= set_combine(sets.aftercast.hybrid.lowacc, {left_ring="Moonlight Ring",
	right_ring="Rajas Ring",})

	sets.aftercast.hybrid.highacc= set_combine(sets.aftercast.hybrid.medacc, {head=dthead, neck="Combatant's Torque",
	waist="Grunfeld Rope",back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},})]]--

	sets.aftercast.absorbmode={
		head="Chev. Armet +1",
		body="Chev. Cuirass +1",
		hands="Chev. Gauntlets +1",
		legs="Chev. Cuisses +1",
		feet="Chev. Sabatons +1",
		left_ear="Ethereal Earring",
		right_ear="Brutal Earring",
		neck="Warder's Charm +1",
	}

	sets.aftercast.absorbmode.lowacc=set_combine(sets.aftercast.absorbmode, {
		ammo="Vanir Battery",
		left_ring="Moonlight Ring",
		right_ring="Defending Ring",
		waist="Windbuffet Belt +1",
		back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
	})

	sets.aftercast.absorbmode.medacc=set_combine(sets.aftercast.absorbmode.lowacc, {neck="Combatant's Torque", Waist="Grunfeld Rope", right_ring="Rajas Ring",})

	sets.aftercast.absorbmode.highacc=set_combine(sets.aftercast.absorbmode.medacc, {ammo="Aurgelmir Orb +1", neck="Combatant's Torque", waist="Olseni Belt", back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, right_ring="Regal Ring",})

	sets.aftercast.pdtengaged= {
		ammo="Staunch Tathlum +1",
    head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
    legs="Chev. Cuisses +1",
    feet="Rev. Leggings +3",
    neck="Combatant's Torque",
    waist="Flume Belt +1",
    left_ear="Ethereal Earring",
    right_ear="Thureous Earring",
    left_ring="Moonlight Ring",
    right_ring="Moonlight Ring",
    back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}

	sets.aftercast.pdt={
		ammo="Iron Gobbet",
    head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
    body="Tartarus Platemail",
    hands="Chev. Gauntlets +1",
    legs="Chev. Cuisses +1",
    feet={ name="Souveran Schuhs +1", augments={'HP+65','Attack+25','Magic dmg. taken -4',}},
    neck="Combatant's Torque",
    waist="Flume Belt +1",
    left_ear="Ethereal Earring",
    right_ear="Thureous Earring",
    left_ring="Vocane Ring +1",
    right_ring="Defending Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','Enmity+10',}},
	}

	sets.aftercast.mdt= {
		ammo="Staunch Tathlum +1",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Moonlight Necklace",
    waist="Asklepian Belt",
    left_ear="Eabani Earring",
    right_ear="Sanare Earring",
    left_ring="Purity Ring",
    right_ring="Vengeful Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','Enmity+10','Mag. Evasion+15',}},
	}

	sets.aftercast.meva={
		ammo="Staunch Tathlum +1",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Moonlight Necklace",
    waist="Asklepian Belt",
    left_ear="Odnowa Earring",
    right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    right_ring="Moonlight Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','Enmity+10','Mag. Evasion+15',}},
	}

	sets.aftercast.mevakite={
		ammo="Staunch Tathlum +1",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Moonlight Necklace",
    waist="Asklepian Belt",
    left_ear="Odnowa Earring",
    right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    right_ring="Moonlight Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','Enmity+10','Mag. Evasion+15',}},
	}
	sets.aftercast.mdtengaged=set_combine(sets.aftercast.mdt,{})

	sets.aftercast.mdtshellvengaged={
		ammo="Vanir Battery",
		head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
		body="Chev. Cuirass +1",
		hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
		legs="Chev. Cuisses +1",
		feet={ name="Cab. Leggings +3", augments={'Enhances "Guardian" effect',}},
		neck="Loricate Torque +1",
		waist="Creed Baudrier",
		left_ear="Ethereal Earring",
		right_ear="Sanare Earring",
		left_ring="Shadow Ring",
		right_ring="Defending Ring",
		back="Engulfer Cape +1",
	}

	sets.aftercast.mdtshellv={
		ammo="Vanir Battery",
		head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
		body="Chev. Cuirass +1",
		hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
		legs="Chev. Cuisses +1",
		feet={ name="Cab. Leggings +3", augments={'Enhances "Guardian" effect',}},
		neck="Loricate Torque +1",
		waist="Creed Baudrier",
		left_ear="Ethereal Earring",
		right_ear="Sanare Earring",
		left_ring="Shadow Ring",
		right_ring="Defending Ring",
		back="Engulfer Cape +1",
	}

	sets.aftercast.meva={
		ammo="Staunch Tathlum +1",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Moonlight Necklace",
    waist="Asklepian Belt",
    left_ear="Ethereal Earring",
    right_ear="Sanare Earring",
    left_ring="Vengeful Ring",
    right_ring="Defending Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','Enmity+10','Mag. Evasion+15',}},
	}

	sets.aftercast.mevakite=set_combine(sets.aftercast.meva,{
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
	})

	sets.aftercast.mevaengaged=set_combine(sets.aftercast.meva,{
		left_ring="Moonlight Ring",
		right_ring="Moonlight Ring",
	})

	sets.aftercast.dt={
		ammo="Staunch Tathlum +1",
		head="Sulevia's Mask +2",
		body="Rev. Surcoat +3",
		hands="Sulev. Gauntlets +2",
		legs="Sulev. Cuisses +2",
		feet="Sulev. Leggings +2",
		neck="Loricate Torque +1",
		waist="Nierenschutz",
		left_ear="Ethereal Earring",
		right_ear="Sanare Earring",
		left_ring="Shadow Ring",
		right_ring="Defending Ring",
		back="Shadow Mantle",
	}

	sets.aftercast.dtengaged={
		ammo="Aurgelmir Orb +1",
		head="Sulevia's Mask +2",
		body="Rev. Surcoat +3",
		hands="Sulev. Gauntlets +2",
		legs="Sulev. Cuisses +2",
		feet="Sulev. Leggings +2",
		neck="Loricate Torque +1",
		waist="Sailfi Belt +1",
		left_ear="Ethereal Earring",
		right_ear="Telos Earring",
		left_ring="Regal Ring",
		right_ring="Defending Ring",
    back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},
	}

	sets.aftercast.standard= {
		ammo="Homiliary",
		head="Valorous Mask",
		body={ name="Souv. Cuirass +1", augments={'VIT+12','Attack+25','"Refresh"+3',}},
		hands="Regal Gauntlets",
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
		feet={ name="Odyssean Greaves", augments={'Attack+3','Accuracy+21','"Refresh"+1','Accuracy+1 Attack+1','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
		neck="Coatl Gorget +1",
		waist="Nierenschutz",
    left_ear="Ethereal Earring",
		right_ear="Infused Earring",
		left_ring="Chirich Ring +1",
		right_ring="Sheltered Ring",
    back="Shadow Mantle",
	}

	sets.aftercast.refresh= {
		ammo="Homiliary",
		head={ name="Odyssean Helm", augments={'"Mag.Atk.Bns."+8','Potency of "Cure" effect received+3%','"Refresh"+1','Accuracy+5 Attack+5',}},
		body={ name="Souv. Cuirass +1", augments={'VIT+12','Attack+25','"Refresh"+3',}},
		hands={ name="Odyssean Gauntlets", augments={'Pet: Crit.hit rate +3','Attack+4','"Refresh"+1',}},
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
		feet={ name="Odyssean Greaves", augments={'Attack+3','Accuracy+21','"Refresh"+1','Accuracy+1 Attack+1','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
		neck="Coatl Gorget +1", waist="Fucho-no-Obi", left_ear="Ethereal Earring",
		right_ear="Infused Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
    back="Shadow Mantle",
	}

	sets.aftercast.pdtkite= set_combine(sets.aftercast.pdt, {back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},  legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},})

	sets.aftercast.mdtkite= set_combine(sets.aftercast.mdt, {back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},  legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},})

	sets.aftercast.dtkite= set_combine(sets.aftercast.dt, {back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},  legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},})

	sets.aftercast.turtle={
	ammo="Staunch Tathlum +1",
    head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
    legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    feet={ name="Souveran Schuhs +1", augments={'HP+65','Attack+25','Magic dmg. taken -4',}},
    neck="Loricate Torque +1",
    waist="Nierenschutz",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Moonlight Ring",
    right_ring="Moonlight Ring",
    back="Moonlight Cape",
	}
-- aftercast sets
-- special case
	sets.cursname={ring1="Purity Ring", waist="Gishdubar Sash",}
	sets.wakeup={neck="Vim Torque +1"}
	sets.resist.death={ammo="Staunch Tathlum +1", head="Volte Cap", body="Arke Corazza", hands="Volte Bracers", legs="Volte Hose", feet="Arke Gambieras",
	neck="Loricate Torque +1", waist="Nierenschutz", left_ear="Ethereal Earring", right_ear="Hearty Earring", left_ring="Warden's Ring", right_ring="Eihwaz Ring",
	back="Solemnity Cape",}
	sets.resist.charm=set_combine(sets.resist.death,{neck="Unmoving Collar +1", back="Solemnity Cape",})
-- special case

-- maintain max hp sets
	sets.maxhp={}

	sets.maxhp.precast={
    ammo="Egoist's Tathlum",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Rev. Surcoat +3",
    hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}},
    legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    feet={ name="Odyssean Greaves", augments={'Mag. Acc.+21','"Fast Cast"+6','MND+4',}},
    neck={ name="Kgt. Beads +2", augments={'Path: A',}},
    waist="Oneiros Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Kishar Ring",
    right_ring="Moonlight Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Fast Cast"+10','Damage taken-5%',}},
	}
	sets.maxhp.precast.cure=set_combine(sets.maxhp.precast,{

	})

	sets.maxhp.ja={
		ammo="Staunch Tathlum +1",
    head={ name="Loess Barbuta +1", augments={'Path: A',}},
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    neck="Moonlight Necklace",
    waist="Creed Baudrier",
    left_ear="Cryptic Earring",
    right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    left_ring="Supershear Ring",
    right_ring="Eihwaz Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','Enmity+10','Spell interruption rate down-10%',}},
	}

	sets.maxhp["Sentinel"]= set_combine(sets.maxhp.ja, {feet="Cab. Leggings +3"})
	sets.maxhp["Rampart"]= set_combine(sets.maxhp.ja, {head="Cab. Coronet +3", neck="Kgt. Beads +2"})
	sets.maxhp["Fealty"]= set_combine(sets.maxhp.ja, {body="Cab. Surcoat +3"})
	sets.maxhp["Chivalry"]= set_combine(sets.maxhp.ja, {head="Rev. Coronet +3", neck="Kgt. Beads +2", body="Cab. Surcoat +3", hands="Cab. Gauntlets +3", legs="Cab. Breeches +3", feet="Cab. leggings +3", left_ring="Levia. Ring", right_ring="Levia. Ring",})
	sets.maxhp["Shield Bash"]= set_combine(sets.maxhp.ja, {left_ear="Knightly Earring", hands="Cab. Gauntlets +3", left_ring="Fenian Ring",})
	sets.maxhp["Intervene"]= set_combine(sets.maxhp.ja, {hands="Cab. Gauntlets +3"})
	sets.maxhp["Invincible"]= set_combine(sets.maxhp.ja, {legs="Cab. Breeches +3"})
	sets.maxhp["Holy Circle"]= set_combine(sets.maxhp.ja, {feet="Rev. Leggings +3"})
	sets.maxhp["Divine Emblem"]= set_combine(sets.maxhp.ja, {feet="Chev. Sabatons +1"})
	sets.maxhp["Cover"]=set_combine(sets.maxhp.ja,{head="Rev. Coronet +3",body="Cab. Surcoat +3",})

	sets.maxhp.wsdmg={
		ammo="Aurgelmir Orb +1",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Odnowa Earring",
    right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    left_ring="Moonlight Ring",
    right_ring="Moonlight Ring",
    back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}

	sets.maxhp.wsacc={
		ammo="Aurgelmir Orb +1",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Odnowa Earring",
    right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    left_ring="Moonlight Ring",
    right_ring="Moonlight Ring",
    back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}

	sets.maxhp.wsdmg["Fast Blade"]=set_combine(sets.maxhp.wsdmg,{})

	sets.maxhp.wsdmg["Flat Blade"]=set_combine(sets.maxhp.wsdmg,{})

	sets.maxhp.wsdmg["Circle Blade"]=set_combine(sets.maxhp.wsdmg,{})

	sets.maxhp.wsdmg["Vorpal Blade"]=set_combine(sets.maxhp.wsdmg,{})

	sets.maxhp.wsdmg["Swift Blade"]=set_combine(sets.maxhp.wsdmg,{
		back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
	})

	sets.maxhp.wsdmg["Savage Blade"]=set_combine(sets.maxhp.wsdmg,{})

	sets.maxhp.wsdmg["Atonement"]=set_combine(sets.maxhp.wsdmg,{})

	sets.maxhp.wsdmg["Chant du Cygne"]=set_combine(sets.maxhp.ja,{
		back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
	})

	sets.maxhp.wsdmg["Requiescat"]=set_combine(sets.maxhp.wsdmg,{})

	sets.maxhp.Phalanx={
		ammo="Staunch Tathlum +1",
    head={ name="Odyssean Helm", augments={'INT+1','Pet: Phys. dmg. taken -2%','Phalanx +4',}},
    body={ name="Yorium Cuirass", augments={'Attack+19','Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
    legs={ name="Yorium Cuisses", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    neck={ name="Kgt. Beads +2", augments={'Path: A',}},
    waist="Audumbla Sash",
    left_ear="Tuisto Earring",
    right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    right_ring="Defending Ring",
    back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},
	}

	sets.maxhp.Phalanx.SIRD={
		ammo="Staunch Tathlum +1",
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    body={ name="Yorium Cuirass", augments={'Attack+19','Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}},
    feet={ name="Odyssean Greaves", augments={'Phys. dmg. taken -5%','MND+9','Mag. Acc.+9',}},
    neck={ name="Kgt. Beads +2", augments={'Path: A',}},
    waist="Audumbla Sash",
    left_ear="Tuisto Earring",
    right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    right_ring="Moonlight Ring",
    back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},
	}

	sets.maxhp.Reprisal={
		ammo="Egoist's Tathlum",
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    body="Rev. Surcoat +3",
    hands="Regal Gauntlets",
    legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    neck="Unmoving Collar +1",
    waist="Oneiros Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Moonlight Ring",
    right_ring="Moonlight Ring",
    back="Moonlight Cape",
	}

	sets.maxhp.enlight={
		ammo="Staunch Tathlum +1",
    head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
    body="Rev. Surcoat +3",
    hands={ name="Eschite Gauntlets", augments={'Mag. Evasion+15','Spell interruption rate down +15%','Enmity+7',}},
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}},
    feet={ name="Odyssean Greaves", augments={'Phys. dmg. taken -5%','MND+9','Mag. Acc.+9',}},
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Asklepian Belt",
    left_ear="Saxnot Earring",
    right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    right_ring="Stikini Ring +1",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Cure" potency +10%','Spell interruption rate down-10%',}},
	}

	sets.maxhp.cure={
		ammo="Egoist's Tathlum",
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands="Macabre Gaunt. +1",
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}},
    feet={ name="Odyssean Greaves", augments={'Mag. Acc.+21','"Fast Cast"+6','MND+4',}},
    neck="Moonlight Necklace",
    waist="Audumbla Sash",
    left_ear="Nourish. Earring +1",
    right_ear="Tuisto Earring",
    left_ring="Moonlight Ring",
    right_ring="Moonlight Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Cure" potency +10%','Spell interruption rate down-10%',}},
	}

	sets.maxhp.selfcure={
		ammo="Staunch Tathlum +1",
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands={ name="Macabre Gaunt. +1", augments={'Path: A',}},
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}},
    feet={ name="Odyssean Greaves", augments={'"Cure" potency +4%','Mag. Acc.+10 "Mag.Atk.Bns."+10','Quadruple Attack +2','Accuracy+20 Attack+20',}},
    neck="Sacro Gorget",
    waist="Audumbla Sash",
    left_ear="Tuisto Earring",
    right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    right_ring="Moonlight Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Cure" potency +10%','Spell interruption rate down-10%',}},
	}

	sets.maxhp.enhancing={
		ammo="Staunch Tathlum +1",
    head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
    body="Shab. Cuirass +1",
    hands="Regal Gauntlets",
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}},
    feet={ name="Odyssean Greaves", augments={'Phys. dmg. taken -5%','MND+9','Mag. Acc.+9',}},
    neck={ name="Kgt. Beads +2", augments={'Path: A',}},
    waist="Audumbla Sash",
    left_ear="Tuisto Earring",
    right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    right_ring="Defending Ring",
    back="Moonlight Cape",
	}

	sets.maxhp.proshell=set_combine(sets.maxhp.enhancing,{right_ring="Sheltered Ring",})

	sets.maxhp.Banishga={ammo="Staunch Tathlum +1",
	head={ name="Loess Barbuta +1", augments={'Path: A',}},
	body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
	hands={ name="Eschite Gauntlets", augments={'Mag. Evasion+15','Spell interruption rate down +15%','Enmity+7',}},
	legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}},
	feet={ name="Odyssean Greaves", augments={'Phys. dmg. taken -5%','MND+9','Mag. Acc.+9',}},
	neck="Moonlight Necklace",
	waist="Creed Baudrier",
	left_ear="Tuisto Earring",
	right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
	left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
	right_ring="Eihwaz Ring",
	back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','Enmity+10','Spell interruption rate down-10%',}},}

	sets.maxhp.flash={
		ammo="Staunch Tathlum +1",
    head={ name="Loess Barbuta +1", augments={'Path: A',}},
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands={ name="Eschite Gauntlets", augments={'Mag. Evasion+15','Spell interruption rate down +15%','Enmity+7',}},
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}},
    feet={ name="Odyssean Greaves", augments={'Phys. dmg. taken -5%','MND+9','Mag. Acc.+9',}},
    neck="Moonlight Necklace",
    waist="Creed Baudrier",
    left_ear="Tuisto Earring",
    right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    right_ring="Eihwaz Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','Enmity+10','Spell interruption rate down-10%',}},
	}

	sets.maxhp.DEflash=set_combine(sets.maxhp.flash,{})

	sets.midcast.utsu={
		head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}},
    feet={ name="Odyssean Greaves", augments={'Phys. dmg. taken -5%','MND+9','Mag. Acc.+9',}},
    neck={ name="Kgt. Beads +2", augments={'Path: A',}},
    waist="Audumbla Sash",
    left_ear="Tuisto Earring",
    right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    right_ring="Moonlight Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Cure" potency +10%','Spell interruption rate down-10%',}},
	}

	sets.maxhp.tanking={

	}

	sets.maxhp.pdtengaged={
		ammo="Staunch Tathlum +1",
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    body="Rev. Surcoat +3",
    hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
    legs="Chev. Cuisses +1",
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    neck="Combatant's Torque",
    waist="Flume Belt +1",
    left_ear="Ethereal Earring",
    right_ear="Thureous Earring",
    left_ring="Moonlight Ring",
    right_ring="Defending Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','Enmity+10','Mag. Evasion+15',}},
	}

	sets.maxhp.mdtengaged={
		ammo="Vanir Battery",
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    body="Sakpata's Breastplate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    neck={ name="Kgt. Beads +2", augments={'Path: A',}},
    waist="Asklepian Belt",
    left_ear="Tuisto Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Shadow Ring",
    right_ring="Moonlight Ring",
    back="Engulfer Cape +1",
	}

	sets.maxhp.mevaengaged={
		ammo="Staunch Tathlum +1",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Moonlight Necklace",
    waist="Carrier's Sash",
    left_ear="Tuisto Earring",
    right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    right_ring="Moonlight Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','Enmity+10','Mag. Evasion+15',}},
	}

	sets.maxhp.dtengaged={
		ammo="Staunch Tathlum +1",
    head="Hjarrandi Helm",
    body="Hjarrandi Breast.",
    hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
    legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    neck="Combatant's Torque",
    waist="Tempus Fugit",
    left_ear="Ethereal Earring",
    right_ear="Thureous Earring",
    left_ring="Moonlight Ring",
    right_ring="Moonlight Ring",
    back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}

	sets.maxhp.dtidle={
		ammo="Staunch Tathlum +1",
    head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
    body="Rev. Surcoat +3",
    hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
    legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    neck="Combatant's Torque",
    waist="Flume Belt +1",
    left_ear="Ethereal Earring",
    right_ear="Thureous Earring",
    left_ring="Vocane Ring +1",
    right_ring="Defending Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','Enmity+10','Mag. Evasion+15',}},
	}

	sets.maxhp.sword={

	}

	sets.maxhp.sword.lowacc={
		ammo="Staunch Tathlum +1",
    head="Hjarrandi Helm",
    body="Hjarrandi Breast.",
    hands="Flam. Manopolas +2",
    legs="Flamma Dirs +2",
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    neck={ name="Vim Torque +1", augments={'Path: A',}},
    waist="Tempus Fugit",
    left_ear="Tuisto Earring",
    right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    left_ring="Moonlight Ring",
    right_ring="Moonlight Ring",
    back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}

	sets.maxhp.sword.medacc=set_combine(sets.maxhp.sword.lowacc,{

	})

	sets.maxhp.sword.highacc=set_combine(sets.maxhp.sword.medacc,{

	})

	sets.maxhp.aftermath={

	}

	sets.maxhp.aftermath.lowacc={
		ammo="Staunch Tathlum +1",
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		hands="Flam. Manopolas +2",
		legs="Flamma Dirs +2",
		feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		neck={ name="Vim Torque +1", augments={'Path: A',}},
		waist="Nierenschutz",
		left_ear="Tuisto Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Moonlight Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}

	sets.maxhp.aftermath.medacc=set_combine(sets.maxhp.aftermath.lowacc,{

	})

	sets.maxhp.aftermath.highacc=set_combine(sets.maxhp.aftermath.medacc,{

	})

	sets.maxhp.standard={
		ammo="Homiliary",
    head={ name="Valorous Mask", augments={'Crit.hit rate+1','Haste+2','Phalanx +4','Accuracy+1 Attack+1',}},
    body={ name="Souv. Cuirass +1", augments={'VIT+12','Attack+25','"Refresh"+3',}},
    hands="Regal Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    neck={ name="Kgt. Beads +2", augments={'Path: A',}},
    waist="Fucho-no-Obi",
    left_ear="Ethereal Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Gelatinous Ring +1",
    right_ring="Sheltered Ring",
    back="Moonlight Cape",
	}

	sets.maxhp.refresh={
		ammo="Homiliary",
    head={ name="Odyssean Helm", augments={'"Mag.Atk.Bns."+8','Potency of "Cure" effect received+3%','"Refresh"+1','Accuracy+5 Attack+5',}},
    body={ name="Souv. Cuirass +1", augments={'VIT+12','Attack+25','"Refresh"+3',}},
    hands="Regal Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    neck={ name="Kgt. Beads +2", augments={'Path: A',}},
    waist="Fucho-no-Obi",
    left_ear="Ethereal Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Moonlight Ring",
    right_ring="Stikini Ring +1",
    back="Moonlight Cape",
	}

	sets.maxhp.mdt=set_combine(sets.maxhp.mdtengaged,{})

	sets.maxhp.pdt=set_combine(sets.maxhp.pdtengaged,{})

	sets.maxhp.meva=set_combine(sets.maxhp.mevaengaged,{})

	sets.maxhp.mevakite=set_combine(sets.maxhp.mevaidle,{legs="Carmine Cuisses +1"})

	sets.maxhp.dt=set_combine(sets.maxhp.dtidle,{legs="Carmine Cuisses +1"})

	sets.maxhp.pdtkite=set_combine(sets.maxhp.pdtidle,{legs="Carmine Cuisses +1"})

	sets.maxhp.mdtkite=set_combine(sets.maxhp.mdtidle,{legs="Carmine Cuisses +1"})
-- maintain max hp sets

end

--[[windower.register_event('keyboard', function(dik, pressed, flags)
    print(dik,pressed and 'down' or 'up',flags)
end)]]
--local bit = require('bit')

--[[windower.register_event('keyboard', function(dik, pressed, flags)
	if player.status=="idle" then
    if bit.band(flags, 0x72) ~= 0 or bit.band(flags, 0x75) ~= 0 or bit.band(flags, 0x77) ~= 0 or bit.band(flags, 0x80) ~= 0 then
			equip(sets.movement)
		else
			status_change(player.status)
		end
	end
end)]]
	--[[windower.register_event('keyboard', function(dik, pressed, flags)
    if bit.band(flags, 0x04) ~= 0 then
        windower.prim.set_visibility('ctrl_macros',true)
	else
		windower.prim.set_visibility('ctrl_macros',false)
    end
	if bit.band(flags, 0x02) ~= 0 then
        windower.prim.set_visibility('alt_macros',true)
	else
		windower.prim.set_visibility('alt_macros',false)
    end
	if bit.band(flags, 0x08) ~= 0 then
        windower.prim.set_visibility('win_macros',true)
	else
		windower.prim.set_visibility('win_macros',false)
    end
	if bit.band(flags, 0x016) ~= 0 then
        windower.prim.set_visibility('apps_macros',true)
	else
		windower.prim.set_visibility('apps_macros',false)
    end
end)]]

windower.register_event('hpmax change' , function(new_max_hp, old_max_hp) if player.target.name=="Onychophora" then if new_max_hp<=2244 then status_change(player.status) end end end)

function precast(spell)
	if PLDMode=="default" then
		if spell.prefix ==  '/jobability' then
			if PLD_JA:contains(spell.english) then
				equip(sets.precast.ja[spell.english])
			elseif spell.english:contains('Curing Waltz') then
				equip(sets.precast.ja.cwaltz)
			else
				equip(sets.precast.ja)
			end
		elseif spell.prefix== '/magic' or spell.prefix=='/ninjutsu' then
			if spell.english:contains('Cure','Cura') then
				equip(sets.precast.cure)
			else
				equip(sets.precast.fc)
			end
		end
		if spell.prefix == '/weaponskill' then
			if WSMode=="dmg" then
				equip(sets.maxhp.wsdmg[spell.english])
			else
				equip(sets.maxhp.wsacc[spell.english])
			end
			--[[if is_sc_element_today(spell) and spell.english~="Atonement" then
				equip(sets.wsdaybonus)
			end
			if player.tp>999 and player.tp<3000 then
				if phys_ws:contains(spell.english) then
					if WSMode=="dmg" then
						equip(sets.tpbonusphysicaldamage)
					elseif WSMode=="acc" then
						equip(sets.tpbonusphysicalaccuracy)
					end
				else
					equip(sets.moonshademagic)
				end
			end]]
		end
	elseif PLDMode=="maxhp" then
		if spell.prefix ==  '/jobability' then
			if PLD_JA:contains(spell.english) then
				equip(sets.maxhp.ja[spell.english])
			elseif spell.english:contains('Curing Waltz') then
				equip(sets.maxhp.Cwaltz)
			else
				equip(sets.maxhp.ja)
			end
		elseif spell.prefix== '/magic' or spell.prefix=='/ninjutsu' then
			if spell.english:contains('Cure','Cura') then
				equip(sets.maxhp.precast.cure)
			else
				equip(sets.maxhp.precast)
			end
		end
	end
	equip(sets[swordtype])
	equip(sets[shieldtype])
	lock()
end

function midcast(spell)
	if PLDMode=="default" then
		if spell.english== 'Utsusemi: Ichi' and buffactive['Copy Image'] then
			send_command('pause 1.9;cancel Copy Image*')
		end
		if cure:contains(spell.english) then
			if spell.target.type== 'SELF' then
				equip(sets.midcast.selfcure)
			else
				equip(sets.midcast.cure)
			end
		elseif spell.skill== 'Divine Magic' then
			if spell.english== 'Enlight' or spell.english=='Enlight II' then
				equip(sets.midcast.enlight)
			elseif not spell.english== 'Enlight' and not spell.english=='Enlight II' then
				if buffactive["Divine Emblem"] then
					equip(sets.midcast.DEflash)
				else
					equip(sets.midcast.flash)
				end
			end
		elseif spell.skill== 'Enhancing Magic' then
			if spell.english:find('Pro') or spell.english:find('Shel') then
				equip(sets.midcast.proshell)
			elseif spell.english=="Reprisal" then
				equip(sets.midcast[spell.english])
			elseif spell.english=="Phalanx" then
				if buffactive["Phalanx"] or buffactive["Aquaveil"] then
					equip(sets.midcast.Phalanx)
				elseif not buffactive["Phalanx"] and not buffactive["Aquaveil"] then
					equip(sets.midcast.Phalanx.SIRD)
				end
			else
				equip(sets.midcast.enhancing)
			end
		elseif spell.skill== 'Ninjutsu' then
			if utsu:contains(spell.english) then
				equip(sets.midcast.utsu)
			else
				equip(sets.midcast.flash)
			end
		elseif spell.skill=="Blue Magic" then
			if spell.english~="healing breeze" then
				equip(sets.midcast.flash)
			end
		elseif spell.skill=="Elemental Magic" then
			equip(sets.midcast.flash)
		elseif spell.skill=="Enfeebling Magic" then
			equip(sets.midcast.flash)
		elseif spell.english:contains('Raise') then
			equip(sets.midcast.flash)
		end
		if spell.english=="Souleater" then
			send_command('pause 1;cancel Souleater')
		end
		if spell.english=="Last Resort" then
			send_command('pause 1;cancel Last Resort')
		end
	elseif PLDMode=="maxhp" then
		if spell.english== 'Utsusemi: Ichi' and buffactive['Copy Image'] then
			send_command('pause 1.5;cancel Copy Image*')
		end
		if cure:contains(spell.english) then
			if spell.target.type== 'SELF' then
				equip(sets.maxhp.selfcure)
			else
				equip(sets.maxhp.cure)
			end
		elseif spell.skill== 'Divine Magic' then
			if spell.english== 'Enlight' or spell.english=='Enlight II' then
				equip(sets.maxhp.enlight)
			elseif not spell.english== 'Enlight' and not spell.english=='Enlight II' then
				if spell.english=="Flash" then
					if buffactive["Divine Emblem"] then
						equip(sets.maxhp.DEflash)
					else
						equip(sets.maxhp.flash)
					end
				end
			end
		elseif spell.skill== 'Enhancing Magic' then
			if spell.english:find('Pro') or spell.english:find('Shel') then
				equip(sets.maxhp.proshell)
			elseif spell.english=="Reprisal" then
				equip(sets.maxhp[spell.english])
			elseif spell.english=="Phalanx" then
				if buffactive["Phalanx"] or buffactive["Aquaveil"]then
					equip(sets.maxhp.Phalanx)
				elseif not buffactive["Phalanx"] and not buffactive["Aquaveil"]then
					equip(sets.maxhp.Phalanx.SIRD)
				end
			else
				equip(sets.maxhp.enhancing)
			end
		elseif spell.skill== 'Ninjutsu' then
			if utsu:contains(spell.english) then
				equip(sets.maxhp.utsu)
			else
				equip(sets.maxhp.flash)
			end
		elseif spell.skill=="Blue Magic" then
			if spell.english~="Healing Breeze" then
				equip(sets.maxhp.flash)
			end
		elseif spell.skill=="Elemental Magic" then
			equip(sets.maxhp.flash)
		elseif spell.skill=="Enfeebling Magic" then
			equip(sets.maxhp.flash)
		elseif spell.english:contains('Raise') then
			equip(sets.maxhp.flash)
		end
		if spell.english=="Souleater" then
			send_command('pause 1;cancel Souleater')
		end
		if spell.english=="Last Resort" then
			send_command('pause 1;cancel Last Resort')
		end
	end

	equip(sets[swordtype])
	equip(sets[shieldtype])
	lock()
end

function aftercast(spell)
	if spell.english=="Atonement" then
		if TPSet=="dd"then
			windower.send_command('input /echo Atonement just used, checking for AM3;wait 1;gsupdate;input /echo tp set updated')
		end
	end
	status_change(player.status)
	lock()
end

function status_change(new,old)
	if PLDMode=="default" then
		if new == 'Engaged' then
			if TPSet=="dd" then
				if AM_ON_OR_OFF=="on" then
					if buffactive["Aftermath: Lv.3"] then
						equip(sets.aftercast.aftermath[Acc])
					else
						equip(sets.aftercast.sword[Acc])
					end
				elseif AM_ON_OR_OFF~="on" then
					equip(sets.aftercast.sword[Acc])
				end
			elseif TPSet=="absorb" then
				equip(sets.aftercast.absorbmode[Acc])
			elseif TPSet=="hybrid" then
				equip(sets.maxacc)
			elseif TPSet=="pdt" then
				equip(sets.aftercast.pdtengaged)
			elseif TPSet=="mdt" then
				if buffactive["Shell"] then
					equip(sets.aftercast.mdtshellvengaged)
				elseif not buffactive["Shell"] then
					equip(sets.aftercast.mdtengaged)
				end
			elseif TPSet=="dt" then
				equip(sets.aftercast.dtengaged)
			elseif TPSet=="maxacc" then
				equip(sets.maxacc)
			elseif TPSet=="resist" then
				equip(sets.resist[resistance])
			elseif TPSet=="turtle" then
				equip(sets.aftercast.turtle)
			elseif TPSet=="meva" then
				equip(sets.aftercast.meva)
			end
		elseif new~="engaged" then
			if IdleMode=="mdt" then
				if buffactive["Shell"] then
					equip(sets.aftercast.mdtshellv)
				elseif not buffactive["Shell"] then
					equip(sets.aftercast.mdt)
				end
			else
				equip(sets.aftercast[IdleMode])
			end
		end
	elseif PLDMode=="maxhp" then
		if new == 'Engaged' then
			if TPSet=="dd" then
				if AM_ON_OR_OFF=="on" then
					if buffactive["Aftermath: Lv.3"] then
						equip(sets.maxhp.aftermath[Acc])
					else
						equip(sets.maxhp.sword[Acc])
					end
				elseif AM_ON_OR_OFF~="on" then
					equip(sets.maxhp.sword[Acc])
				end
			elseif TPSet=="absorb" then
				equip(sets.maxhp.absorbmode[Acc])
			elseif TPSet=="hybrid" then
				equip(sets.maxacc)
			elseif TPSet=="pdt" then
				equip(sets.maxhp.pdtengaged)
			elseif TPSet=="mdt" then
				if buffactive["Shell"] then
					equip(sets.maxhp.mdtshellvengaged)
				elseif not buffactive["Shell"] then
					equip(sets.maxhp.mdtengaged)
				end
			elseif TPSet=="dt" then
				equip(sets.maxhp.dtengaged)
			elseif TPSet=="maxacc" then
				equip(sets.maxhp.maxacc)
			elseif TPSet=="resist" then
				equip(sets.maxhp.resist[resistance])
			elseif TPSet=="turtle" then
				equip(sets.maxhp.turtle)
			elseif TPSet=="meva" then
				equip(sets.maxhp.mevaengaged)
			end
		elseif new~="engaged" then
			if IdleMode=="mdt" then
				if buffactive["Shell"] then
					equip(sets.maxhp.mdtshellv)
				elseif not buffactive["Shell"] then
					equip(sets.maxhp.mdt)
				end
			else
				equip(sets.maxhp[IdleMode])
			end
		end
	end
	equip(sets[swordtype])
	equip(sets[shieldtype])
	send_command('pf')
	if new=="dead" or new=="dead engaged" then
		hastetype="none"
		march=0
	end
	if player.sub_job~="RUN" then
		windower.prim.set_visibility('ACTIVE_RUNE',false)
	end
	lock()
end

function buff_change(buff,gain)
	buff = string.lower(buff)

	if buff == "sleep" and gain and player.hp > 200 --[[and player.status == "Engaged"]] then -- Equip Vim Torque +1 When You Are Asleep & Have 200+ HP --
        equip(sets.wakeup)
    else
        if not midaction() then
            status_change(player.status)
        end
    end
	if buff == "doomed" and gain then
		equip(sets.cursname)
		disable('ring1','waist')
	elseif not gain and not player.status == "Dead" and not player.status == "Engaged Dead" then
		enable('ring1','waist')
		if not midaction() then
			status_change(player.status)
		end
	end
	if (buff == "haste" or buff == "flurry") and not gain then
		hastetype="none"
		add_to_chat(206, "hastetype:"..hastetype.."")
	end
	if buff == "march" and not gain then
			march=march -1
			add_to_chat(206, "lost a march")
	end
	--osd() --uncomment to use osd
end

function self_command(command)
	--paladin mode
	if command=="pldmode" then
		if PLDMode=="default" then
			PLDMode="maxhp"
		else
			PLDMode="default"
		end
		add_to_chat(206, 'PLD in '..PLDMode..' mode.')
	end
	--paladin mode

	-- weaponry variable commands rule start
	if command == 'ochain' then
		if shieldtype~="Ochain" then
			shieldtype="Ochain"
			equip(sets.Ochain)
			add_to_chat(206, 'OCHAIN SELECTED')
			--send_command('text pdtvariable text "OCHAIN"')
			windower.prim.set_texture('SHIELD_SET',''..windower.windower_path..'addons/gearswap/data/images/Ochain.png')
			windower.prim.set_size('SHIELD_SET',200,55)
			send_command('pf')
		elseif shieldtype=="Ochain" then
			status_change(player.status)
			add_to_chat(206, 'OCHAIN ALREADY SET, REFRESHING EQUIPMENT.')
			send_command('pf')
		end
	elseif command == 'aegis' then
		if shieldtype~="Aegis" then
			shieldtype="Aegis"
			equip(sets.Aegis)
			add_to_chat(206, 'AEGIS SELECTED')
			--send_command('text pdtvariable text "AEGIS"')
			windower.prim.set_texture('SHIELD_SET',''..windower.windower_path..'addons/gearswap/data/images/Aegis.png')
			windower.prim.set_size('SHIELD_SET',200,55)
		elseif shieldtype=="Aegis" then
			status_change(player.status)
			add_to_chat(206, 'AEGIS ALREADY SET, REFRESHING EQUIPMENT.')
			send_command('pf')
		end
	elseif command == 'srivatsa' then
		if shieldtype~="Srivatsa" then
			shieldtype="Srivatsa"
			equip(sets.Srivatsa)
			add_to_chat(206, 'Srivatsa SELECTED')
			--send_command('text pdtvariable text "Srivatsa"')
			windower.prim.set_texture('SHIELD_SET',''..windower.windower_path..'addons/gearswap/data/images/Srivatsa.png')
			windower.prim.set_size('SHIELD_SET',200,55)
		elseif shieldtype=="Srivatsa" then
			status_change(player.status)
			add_to_chat(206, 'SRIVATSA ALREADY SET, REFRESHING EQUIPMENT.')
			send_command('pf')
		end
	elseif command == 'priwen' then
		if shieldtype~="Priwen" then
			shieldtype="Priwen"
			equip(sets.Priwen)
			add_to_chat(206, 'Priwen SELECTED')
			--send_command('text pdtvariable text "Srivatsa"')
			windower.prim.set_texture('SHIELD_SET',''..windower.windower_path..'addons/gearswap/data/images/Priwen.png')
			windower.prim.set_size('SHIELD_SET',200,55)
		elseif shieldtype=="Priwen" then
			status_change(player.status)
			add_to_chat(206, 'PRIWEN ALREADY SET, REFRESHING EQUIPMENT.')
			send_command('pf')
		end
	elseif command == 'excalibur' then
			swordtype = "excalibur"
			equip(sets.excalibur)
			add_to_chat(206,""..swordtype.." SELECTED")
			windower.prim.set_texture('SWORD_SET',''..windower.windower_path..'addons/gearswap/data/images/'..swordtype..'.png')
			windower.prim.set_size('SWORD_SET',200,55)
	elseif command == 'burtgang' then
			swordtype = "burtgang"
			equip(sets.burtgang)
			add_to_chat(206,""..swordtype.." SELECTED")
			windower.prim.set_texture('SWORD_SET',''..windower.windower_path..'addons/gearswap/data/images/'..swordtype..'.png')
			windower.prim.set_size('SWORD_SET',200,55)
	elseif command == 'naegling' then
			swordtype = "naegling"
			equip(sets.naegling)
			add_to_chat(206,""..swordtype.." SELECTED")
			windower.prim.set_texture('SWORD_SET',''..windower.windower_path..'addons/gearswap/data/images/'..swordtype..'.png')
			windower.prim.set_size('SWORD_SET',200,55)
	elseif command == 'almace' then
			swordtype = "almace"
			equip(sets.almace)
			add_to_chat(206,""..swordtype.." SELECTED")
			windower.prim.set_texture('SWORD_SET',''..windower.windower_path..'addons/gearswap/data/images/'..swordtype..'.png')
			windower.prim.set_size('SWORD_SET',200,55)
	elseif command == 'sequence' then
			swordtype = "sequence"
			equip(sets.sequence)
			add_to_chat(206,""..swordtype.." SELECTED")
			windower.prim.set_texture('SWORD_SET',''..windower.windower_path..'addons/gearswap/data/images/'..swordtype..'.png')
			windower.prim.set_size('SWORD_SET',200,55)
	end
	-- weaponry variable commands rule end

	-- accuracy variable commands rule start
	if command == 'lowacc' then
		Acc="lowacc"
		add_to_chat(206, 'Low Accuracy Mode')
		--send_command('text idlevariable text "LOW-ACC"')
		send_command('alias tp gs equip sets.aftercast.sword.lowacc')
		windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/lowacc.png')
		windower.prim.set_size('ACC_SET',200,30)
		--[[if TPSet=="hybrid" then
			send_command('alias hybrid gs equip sets.aftercast.hybrid.lowacc')
		elseif TPSet=="absorb" then ]]--
			send_command('alias hybrid gs equip sets.aftercast.absorbmode.lowacc')
		--end
	elseif command == 'medacc' then
		Acc="medacc"
		add_to_chat(206, 'Medium Accuracy Mode')
		--send_command('text idlevariable text "MEDIUM-ACC"')
		send_command('alias tp gs equip sets.aftercast.sword.medacc')
		windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/medacc.png')
		windower.prim.set_size('ACC_SET',200,30)
		--[[if TPSet=="hybrid" then
			send_command('alias hybrid gs equip sets.aftercast.hybrid.medacc')
		elseif TPSet=="absorb" then]]--
			send_command('alias hybrid gs equip sets.aftercast.absorbmode.medacc')
		--end
	elseif command == 'highacc' then
		Acc="highacc"
		add_to_chat(206, 'High Accuracy Mode')
		--send_command('text idlevariable text "HIGH-ACC"')
		send_command('alias tp gs equip sets.aftercast.sword.highacc')
		windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/highacc.png')
		windower.prim.set_size('ACC_SET',200,30)
		--[[if TPSet=="hybrid" then
			send_command('alias hybrid gs equip sets.aftercast.hybrid.highacc')
		elseif TPSet=="absorb" then]]--
			send_command('alias hybrid gs equip sets.aftercast.absorbmode.highacc')
		--end
	end
	-- accuracy variable commands rule end

	-- engage variable commands rule start
	if command == 'dd' then
		if TPSet~= "dd" then
			TPSet="dd"
			add_to_chat(206, 'DD Mode')
			--send_command('text tpvariable text "DD MODE"')
			windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/ddmode.png')
			windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/ddmode.wav')
			windower.prim.set_size('TP_SET',200,30)
			if Acc=="lowacc" then
				send_command('alias tp gs equip sets.aftercast.tp.lowacc')
			elseif Acc=="medacc" then
				send_command('alias tp gs equip sets.aftercast.tp.medacc')
			elseif Acc=="highacc" then
				send_command('alias tp gs equip sets.aftercast.tp.medacc')
			end
		elseif TPSet=="dd" then
			TPSet="maxacc"
			add_to_chat(206, 'MAXIMUM ACCURACY Mode')
			windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/maxacc.png')
			windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/maxacc.wav')
			windower.prim.set_size('TP_SET',200,30)
			send_command('pf')
		end
	end
	if command == 'hybrid' then
		if TPSet~= "hybrid" then
			TPSet="hybrid"
			--[[add_to_chat(206, 'HYBRID MODE')
			--send_command('text tpvariable text "Hybrid MODE"')
			if Acc=="lowacc" then
				send_command('alias hybrid gs equip sets.aftercast.hybrid.lowacc')
			elseif Acc=="medacc" then
				send_command('alias hybrid gs equip sets.aftercast.hybrid.medacc')
			elseif Acc=="highacc" then
				send_command('alias hybrid gs equip sets.aftercast.hybrid.highacc')
			end]]--
			windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/sbmode.png')
			windower.prim.set_size('TP_SET',200,30)
		else
			TPSet="absorb"
			add_to_chat(206, 'ABSORB MODE')
			--send_command('text tpvariable text "Absorb MODE"')
			if Acc=="lowacc" then
				send_command('alias hybrid gs equip sets.aftercast.absorbmode.lowacc')
			elseif Acc=="medacc" then
				send_command('alias hybrid gs equip sets.aftercast.absorbmode.medacc')
			elseif Acc=="highacc" then
				send_command('alias hybrid gs equip sets.aftercast.absorbmode.highacc')
			end
			windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/absorbmode.png')
			windower.prim.set_size('TP_SET',200,30)
		end
	end
	if command == 'pdt' then
		TPSet="pdt"
		add_to_chat(206, 'PDT MODE')
		--send_command('text tpvariable text "PDT MODE"')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/pdtmode.png')
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
		windower.prim.set_size('TP_SET',200,30)
	end
	if command == 'mdt' then
		TPSet="mdt"
		add_to_chat(206, 'MDT MODE')
		--send_command('text tpvariable text "MDT MODE"')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/mdtmode.png')
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
		windower.prim.set_size('TP_SET',200,30)
	end
	if command == 'dt' then
		TPSet="dt"
		add_to_chat(206, 'DT MODE')
		--send_command('text tpvariable text "DT MODE"')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/dtmode.png')
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
		windower.prim.set_size('TP_SET',200,30)
	end
	if command == 'turtle' then
		TPSet="turtle"
		IdleMode="turtle"
		add_to_chat(206, 'TURTLE MODE')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/dtmode.png')
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
		windower.prim.set_size('TP_SET',200,30)
	end
	if command=='resisttoggle' then
		if resistance=="death" then
			resistance="charm"
		else
			resistance="death"
		end
		TPSet="resist"
		add_to_chat(206,"resist mode")
	end
	if command=="meva" then
		TPSet="meva"
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/meva.png')
	end
	if command=="mevaidle" then
		IdleMode="meva"
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/meva.png')
	end
	-- engage variable commands rule end

	-- ws variable rule
	if command=="wsacctoggle" then
		if WSMode=="dmg" then
			WSMode="acc"
			add_to_chat(206, 'WSMODE: ACCURACY')
			--send_command('text doavariable text "WSMODE: ACC"')
			windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/images/acc.png')
			windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/acc.wav')
			windower.prim.set_size('WS_SET',200,30)
		else
			WSMode="dmg"
			add_to_chat(206, 'WSMODE: DAMAGE')
			--send_command('text doavariable text "WSMODE: DMG"')
			windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/images/dmg.png')
			windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dmg.wav')
			windower.prim.set_size('WS_SET',200,30)
		end
	end
	-- ws variable rule

	-- idle variable commands rule start
	if command == 'idle' then
		if IdleMode=="standard" then
			IdleMode="refresh"
			add_to_chat(206, 'REFRESH IDLE MODE')
			--send_command('text wsvariable text "REFRESH IDLE"')
			send_command('alias idle gs equip sets.aftercast.refresh')
			windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/refreshidle.png')
			windower.prim.set_size('IDLE_SET',200,30)
			status_change(player.status)
		else
			IdleMode="standard"
			add_to_chat(206, 'STANDARD IDLE MODE')
			--send_command('text wsvariable text "STANDARD IDLE"')
			send_command('alias idle gs equip sets.aftercast.idle')
			windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/standardidle.png')
			windower.prim.set_size('IDLE_SET',200,30)
			status_change(player.status)
		end
	end
	if command == 'kitepdt' then
		IdleMode="pdtkite"
		add_to_chat(206, 'PDT KITING MODE')
		--send_command('text wsvariable text "PDT KITE"')
		send_command('alias idle gs equip sets.aftercast.pdtkite')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/pdtkite.png')
		windower.prim.set_size('IDLE_SET',200,30)
		status_change(player.status)
	end
	if command == 'kitemdt' then
		IdleMode="mdtkite"
		add_to_chat(206, 'MDT KITING MODE')
		--send_command('text wsvariable text "MDT KITE"')
		send_command('alias idle gs equip sets.aftercast.mdtkite')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/mdtkite.png')
		windower.prim.set_size('IDLE_SET',200,30)
		status_change(player.status)
	end
	if command == 'pdtidle' then
		IdleMode="pdt"
		add_to_chat(206, 'PDT IDLE MODE')
		--send_command('text wsvariable text "PDT IDLE"')
		send_command('alias idle gs equip sets.aftercast.pdt')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/pdtidle.png')
		windower.prim.set_size('IDLE_SET',200,30)
		status_change(player.status)
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
	end
	if command == 'mdtidle' then
		IdleMode="mdt"
		add_to_chat(206, 'MDT IDLE MODE')
		--send_command('text wsvariable text "MDT IDLE"')
		send_command('alias idle gs equip sets.aftercast.mdt')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/mdtidle.png')
		windower.prim.set_size('IDLE_SET',200,30)
		status_change(player.status)
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
		--osd() --uncomment to use osd
	end
	if command == 'dtidle' then
		IdleMode="dt"
		add_to_chat(206, 'DT IDLE MODE')
		--send_command('text wsvariable text "DT IDLE"')
		send_command('alias idle gs equip sets.aftercast.dt')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/dtidle.png')
		status_change(player.status)
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
	end
	if command == 'dtkite' then
		IdleMode="dtidle"
		add_to_chat(206, 'DT KITING MODE')
		--send_command('text wsvariable text "DT KITE"')
		send_command('alias idle gs equip sets.aftercast.dtkite')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/dtkite.png')
		status_change(player.status)
	end
	-- idle variable commands rule end

	-- gear set commands
	if command=='pdtset' then
		if player.status=="Engaged" then
			equip(sets.aftercast.pdtengaged)
			windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
		else
			equip(sets.aftercast.pdt)
			windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
		end
	end
	if command=='mdtset' then
		if buffactive["Shell"] then
			if player.status=="Engaged" then
				equip(sets.aftercast.mdtshellvengaged)
				windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
			else
				equip(sets.aftercast.mdtshellv)
				windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
			end
		elseif not buffactive["Shell"] then
			if player.status=="Engaged" then
				equip(sets.aftercast.mdtengaged)
				windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
			else
				equip(sets.aftercast.mdt)
				windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
			end
		end
	end
	-- gear set commands

	-- reraise lock toggle command rule start
	if command == 'rr' then
		if rrlock== "rroff" then
			equip(sets.rr)
			send_command('gs disable body;gs disable head')
			rrlock= "rron"
			add_to_chat(206, 'TWILIGHT SET LOCKED IN FOR RERAISE')
		else
			send_command('gs enable body;gs enable head')
			status_change(player.status)
			rrlock= "rroff"
			add_to_chat(206, 'REMOVED RERAISE GEAR LOCK: RESUMING NORMAL GEARSWAPING')
		end
	end
	-- reraise lock toggle command rule end
	-- special case
	if command == 'repulse' then
		if repulsemode=="repulse" then
			repulsemode="normal"
			send_command('gs enable back')
			add_to_chat(206, 'REPULSE MODE OFF')
			status_change(player.status)
		else
			repulsemode="repulse"
			send_command('input /equip back "Impassive Mantle";gs disable back')
			add_to_chat(206, 'REPULSE MODE ON')
		end
	end
	if command == 'aftermath' then
		if AM_ON_OR_OFF=="on" then
			AM_ON_OR_OFF="off"
			add_to_chat(206, 'AFTERMATH SET: OFF')
		else
			AM_ON_OR_OFF="on"
			add_to_chat(206, 'AFTERMATH SET: ON')
		end
	end
	if command == "exlock" then
		if ExclusiveLock==true then
			ExclusiveLock=false
		else
			ExclusiveLock=true
		end
		status_change(player.status)
		windower.prim.set_visibility('mevalock',mevalock)
		windower.prim.set_visibility('dtlock',dtlock)
		windower.prim.set_visibility('rrlock',rrlock)
		windower.prim.set_visibility('knockbacklock',knockbacklock)
		windower.prim.set_visibility('mpuplock',mpuplock)
		windower.prim.set_visibility('EXLOCK',ExclusiveLock)
	end
	if command == "mevalock" then
		if ExclusiveLock == true then
			if mevalock == true then
				mevalock = false
			else
				dtlock = false
				mevalock = true
				rrlock = false
				knockbacklock = false
			end
		elseif ExclusiveLock == false then
			if mevalock == true then
				mevalock = false
			else
				mevalock = true
			end
		end
		status_change(player.status)
		windower.prim.set_visibility('mevalock',mevalock)
		windower.prim.set_visibility('dtlock',dtlock)
		windower.prim.set_visibility('rrlock',rrlock)
		windower.prim.set_visibility('knockbacklock',knockbacklock)
		windower.prim.set_visibility('mpuplock',mpuplock)
	end
	if command == "dtlock" then
		if ExclusiveLock == true then
			if dtlock == true then
				dtlock = false
			else
				dtlock = true
				mevalock = false
				rrlock = false
				knockbacklock = false
			end
		elseif ExclusiveLock == false then
			if dtlock == true then
				dtlock = false
			else
				dtlock = true
			end
		end
		windower.prim.set_visibility('mevalock',mevalock)
		windower.prim.set_visibility('dtlock',dtlock)
		windower.prim.set_visibility('rrlock',rrlock)
		windower.prim.set_visibility('knockbacklock',knockbacklock)
		windower.prim.set_visibility('mpuplock',mpuplock)
		status_change(player.status)
	end
	if command == "rrlock" then
		if ExclusiveLock == true then
			if rrlock == true then
				rrlock = false
			else
				dtlock = false
				mevalock = false
				rrlock = true
				knockbacklock = false
			end
		elseif ExclusiveLock == false then
			if rrlock == true then
				rrlock = false
			else
				rrlock = true
			end
		end
		status_change(player.status)
		windower.prim.set_visibility('mevalock',mevalock)
		windower.prim.set_visibility('dtlock',dtlock)
		windower.prim.set_visibility('rrlock',rrlock)
		windower.prim.set_visibility('knockbacklock',knockbacklock)
		windower.prim.set_visibility('mpuplock',mpuplock)
	end
	if command == "knockbacklock" then
		if ExclusiveLock == true then
			if knockbacklock == true then
				knockbacklock = false
			else
				dtlock = false
				mevalock = false
				rrlock = false
				knockbacklock = true
			end
		elseif ExclusiveLock == false then
			if knockbacklock == true then
				knockbacklock = false
			else
				knockbacklock= true
			end
		end
		status_change(player.status)
		windower.prim.set_visibility('mevalock',mevalock)
		windower.prim.set_visibility('dtlock',dtlock)
		windower.prim.set_visibility('rrlock',rrlock)
		windower.prim.set_visibility('knockbacklock',knockbacklock)
		windower.prim.set_visibility('mpuplock',mpuplock)
	end
	if command == "mpuplock" then
		if ExclusiveLock == true then
			if mpuplock == true then
				mpuplock = false
			else
				dtlock = false
				mevalock = false
				rrlock = false
				mpuplock = true
			end
		elseif ExclusiveLock == false then
			if mpuplock == true then
				mpuplock = false
			else
				mpuplock= true
			end
		end
		status_change(player.status)
		windower.prim.set_visibility('mevalock',mevalock)
		windower.prim.set_visibility('dtlock',dtlock)
		windower.prim.set_visibility('rrlock',rrlock)
		windower.prim.set_visibility('knockbacklock',knockbacklock)
		windower.prim.set_visibility('mpuplock',mpuplock)
	end
	-- special case
	if command == 'update' then
		status_change(player.status)
	end
	if command=='help' then
		if display_help=="false" then
			display_help="true"
			windower.prim.set_visibility('TCOhelp',true)
		else
			display_help="false"
			windower.prim.set_visibility('TCOhelp',false)
		end
	end
	if command=='primfix' then
		windower.prim.set_size('TP_SET',200,30)
		windower.prim.set_size('ACC_SET',200,30)
		windower.prim.set_size('IDLE_SET',200,30)
		windower.prim.set_size('WS_SET',200,30)
		windower.prim.set_size('SHIELD_SET',200,55)
		windower.prim.set_size('SWORD_SET',200,55)
		windower.prim.set_size('mevalock',200,55)
		windower.prim.set_size('dtlock',200,55)
		windower.prim.set_size('rrlock',200,55)
		windower.prim.set_size('knockbacklock',200,55)
		windower.prim.set_size('mpuplock',200,55)
		windower.prim.set_size('ACTIVE_RUNE',200,50)
		windower.prim.set_size('EXLOCK',200,50)
	end
	if command=="checkhaste" then
		effectiveHaste()
	end
	--rune commands
	if command=="Cycle_Runes" then
		runes=runes+1
		if runes > #sets.runes.index then
			runes=1
		end
		add_to_chat(206,'RUNE>>>>'..sets.runes.index[runes])
		windower.prim.set_texture('ACTIVE_RUNE',''..windower.windower_path..'addons/gearswap/data/images/'..sets.runes.index[runes]..'.png')
		send_command('pf')
	end
	if command=="Use_Rune" then
		send_command(''..sets.runes.index[runes])
	end
	--rune commands
	--mule job commands
	if command=="lelubrd" then
		lelujob="brd"
		add_to_chat(206,"Lelu is a "..lelujob)
	end
	if command=="leluwhm" then
		lelujob="whm"
		add_to_chat(206,"Lelu is a "..lelujob)
	end
	if command=="itchygeo" then
		itchyjob="geo"
		add_to_chat(206,"Itchytaru is a "..itchyjob)
	end
	--mule job commands
end

function sub_job_change(NewSubjob,OldSubjob)
	macros_setup()
end

function macros_setup()
	if player.sub_job=="WAR" then
		send_command('input /macro book 1;input /macro set 2')
		send_command('alias cmd1 input /ja "Provoke" <stnpc>')
		send_command('alias cmd2 input /ma "Flash" <stnpc>')
		send_command('alias cmd3 input /ja "Shield Bash" <stnpc>')
		send_command('alias cmd4 input /ja "Cover" <stpt>')
		send_command('alias cmd5 input /ja "Aggressor" <me>')
		send_command('alias cmd6 input /ja "Berserk" <me>')
		send_command('alias cmd7 input /ja "Warcry" <me>')
		send_command('alias cmd8 input /ws "Flat Blade" <t>')
		send_command('alias cmd9 input /ma "Holy II" <t>')
		send_command('alias cmd10 input /ma "Holy" <t>')
		add_to_chat(206, '/WAR Keybinds active')
	elseif player.sub_job=="DRK" then
		send_command('input /macro book 1;input /macro set 1')
		send_command('alias cmd1 input /ma "Poisonga" <t>')
		send_command('alias cmd2 input /ma "Absorb-TP" <t>')
		send_command('alias cmd3 input /ma "Absorb-STR" <t>')
		send_command('alias cmd4 input /ma "Absorb-VIT" <t>')
		send_command('alias cmd5 input /ma "Absorb-DEX" <t>')
		send_command('alias cmd6 input /ma "Absorb-AGI" <t>')
		send_command('alias cmd7 input /ma "Absorb-INT" <t>')
		send_command('alias cmd8 input /ma "Absorb-MND" <t>')
		send_command('alias cmd9 input /ma "Bind" <t>')
		send_command('alias cmd10 input /ma "Sleep" <t>')
		add_to_chat(206, '/DRK Keybinds active')
	elseif player.sub_job=="RUN" then
		send_command('input /macro book 1;input /macro set 10')
		send_command('alias cmd1 input /ja "Tenebrae" <me>')
		send_command('alias cmd2 input /ja "Lux" <me>')
		send_command('alias cmd3 input /ja "Tellus" <me>')
		send_command('alias cmd4 input /ja "Flabra" <me>')
		send_command('alias cmd5 input /ja "Ignis" <me>')
		send_command('alias cmd6 input /ja "Gelus" <me>')
		send_command('alias cmd7 input /ja "Sulpor" <me>')
		send_command('alias cmd8 input /ja "Unda" <me>')
		send_command('alias cmd9 input /ja "Lunge" <t>')
		send_command('alias cmd10 input /ja "Swipe" <t>')
		send_command('bind @9 input /ma "Aquaveil" <me>')
		send_command('bind @e gs c Cycle_Runes')
		send_command('bind @w gs c Use_Rune')
		windower.prim.set_visibility('ACTIVE_RUNE',true)
		add_to_chat(206, '/RUN Keybinds active')
	elseif player.sub_job=="NIN" then
		send_command('input /macro book 1;input /macro set 9')
		send_command('alias cmd1 input /ma "Holy II" <t>')
		send_command('alias cmd2 input /ma "Holy" <t>')
		send_command('alias cmd3 input /ma "Katon: Ichi" <t>')
		send_command('alias cmd4 input /ma "Hyoton: Ichi" <t>')
		send_command('alias cmd5 input /ma "Doton: Ichi" <t>')
		send_command('alias cmd6 input /ma "Raiton: Ichi" <t>')
		send_command('alias cmd7 input /ma "Huton: Ichi" <t>')
		send_command('alias cmd8 input /ma "Suiton: Ichi" <t>')
		send_command('alias cmd9 input /ma "Utsusemi: Ichi" <me>')
		send_command('alias cmd10 input /ma "Utsusemi: Ni" <me>')
		add_to_chat(206, '/NIN Keybinds active')
	elseif player.sub_job=="RDM" then
		send_command('input /macro book 1;input /macro set 8')
		send_command('alias cmd1 input /ma "Diaga" <t>')
		send_command('alias cmd2 input /ma "Dia II" <t>')
		send_command('alias cmd3 input /ma "Dispel" <t>')
		send_command('alias cmd4 input /ma "Bind" <t>')
		send_command('alias cmd5 input /ma "Blink" <me>')
		send_command('alias cmd6 input /ma "Ice Spikes" <me>')
		send_command('alias cmd7 input /ma "Blaze Spikes" <me>')
		send_command('alias cmd8 input /ma "Stone" <t>')
		send_command('alias cmd9 input /ma "Sleep II" <t>')
		send_command('alias cmd10 input /ma "Sleep" <t>')
		send_command('bind @9 input /ma "Aquaveil" <me>')
		add_to_chat(206, '/RDM Keybinds active')
	elseif player.sub_job=="BLU" then
		send_command('input /macro book 1;input /macro set 7')
		send_command('alias cmd1 input /ma "Jettatura" <t>')
		send_command('alias cmd2 input /ma "Geist Wall" <t>')
		send_command('alias cmd3 input /ma "Blank Gaze" <t>')
		send_command('alias cmd4 input /ma "Sound Blast" <t>')
		send_command('alias cmd5 input /ma "Soporific" <t>')
		send_command('alias cmd6 input /ma "Sheep Song" <t>')
		send_command('alias cmd7 input /ma "Poison Breath" <t>')
		send_command('alias cmd8 input /ma "Cursed Sphere" <t>')
		send_command('alias cmd9 input /ma "Sandspin" <t>')
		send_command('alias cmd10 input /ma "Healing Breeze" <me>')
		add_to_chat(206, '/BLU Keybinds active')
	elseif player.sub_job=="DNC" then
		send_command('input /macro book 1;input /macro set 6')
		send_command('alias cmd1 input /ja "Box Step" <t>')
		send_command('alias cmd2 input /ja "Quick Step" <t>')
		send_command('alias cmd3 input /ja "Desperate Flourish" <t>')
		send_command('alias cmd4 input /ja "Curing Waltz II" <stal>')
		send_command('alias cmd5 input /ja "Violent Flourish" <t>')
		send_command('alias cmd6 input /ja "Drain Samba II" <me>')
		send_command('alias cmd7 input /ja "Drain Samba" <me>')
		send_command('alias cmd8 input /ja "Curing Waltz" <stal>')
		send_command('alias cmd9 input /ja "Haste Samba" <me>')
		send_command('alias cmd10 input /ja "Curing Waltz III" <stal>')
	end
	if player.sub_job~="RUN" then
	windower.prim.set_visibility('ACTIVE_RUNE',false)
	end
end

function gui_create()
	windower.prim.create('TP_SET')
	windower.prim.create('ACC_SET')
	windower.prim.create('IDLE_SET')
	windower.prim.create('WS_SET')
	windower.prim.create('SHIELD_SET')
	windower.prim.create('mevalock')
	windower.prim.create('dtlock')
	windower.prim.create('rrlock')
	windower.prim.create('knockbacklock')
	windower.prim.create('mpuplock')
	windower.prim.create('EXLOCK')
	windower.prim.create('SWORD_SET')
	windower.prim.create('TCOhelp')
	windower.prim.create('ACTIVE_RUNE')
end

function gui()
	ypos1=50
	ypos2=ypos1+40
	ypos3=ypos2+40
	ypos4=ypos3+40
	ypos5=ypos4+40
	ypos6=ypos5+40
	ypos7=ypos6+40
	ypos8=ypos7+40
	ypos9=ypos8+40
	ypos10=ypos9+40
	ypos11=ypos10+40


	--[[windower.prim.create('ctrl_macros')
	windower.prim.create('alt_macros')
	windower.prim.create('win_macros')
	windower.prim.create('apps_macros')]]

	windower.prim.create('TP_SET')
	windower.prim.create('ACC_SET')
	windower.prim.create('IDLE_SET')
	windower.prim.create('WS_SET')
	windower.prim.create('SHIELD_SET')
	windower.prim.create('mevalock')
	windower.prim.create('dtlock')
	windower.prim.create('rrlock')
	windower.prim.create('knockbacklock')
	windower.prim.create('mpuplock')
	windower.prim.create('EXLOCK')
	windower.prim.create('SWORD_SET')
	windower.prim.create('TCOhelp')
	windower.prim.create('ACTIVE_RUNE')

	--[[windower.prim.set_texture('ctrl_macros',''..windower.windower_path..'addons/gearswap/data/images/'..player.main_job..'_'..player.sub_job..'_ctrl_macros.png')
	windower.prim.set_position('ctrl_macros',0.08*windower.get_windower_settings().ui_x_res,0.055*windower.get_windower_settings().ui_y_res)
	windower.prim.set_visibility('ctrl_macros',false)
	windower.prim.set_color('ctrl_macros', 255, 255, 255, 255)

	windower.prim.set_texture('alt_macros',''..windower.windower_path..'addons/gearswap/data/images/'..player.main_job..'_'..player.sub_job..'_alt_macros.png')
	windower.prim.set_position('alt_macros',0.08*windower.get_windower_settings().ui_x_res,0.055*windower.get_windower_settings().ui_y_res)
	windower.prim.set_visibility('alt_macros',false)
	windower.prim.set_color('alt_macros', 255, 255, 255, 255)

	windower.prim.set_texture('win_macros',''..windower.windower_path..'addons/gearswap/data/images/'..player.main_job..'_'..player.sub_job..'_win_macros.png')
	windower.prim.set_position('win_macros',0.08*windower.get_windower_settings().ui_x_res,0.055*windower.get_windower_settings().ui_y_res)
	windower.prim.set_visibility('win_macros',false)
	windower.prim.set_color('win_macros', 255, 255, 255, 255)

	windower.prim.set_texture('apps_macros',''..windower.windower_path..'addons/gearswap/data/images/'..player.main_job..'_'..player.sub_job..'_apps_macros.png')
	windower.prim.set_position('apps_macros',0.08*windower.get_windower_settings().ui_x_res,0.055*windower.get_windower_settings().ui_y_res)
	windower.prim.set_visibility('apps_macros',false)
	windower.prim.set_color('apps_macros', 255, 255, 255, 255)]]

	windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/'..TPSet..'mode.png')
	windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/'..Acc..'.png')
	windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/'..IdleMode..'idle.png')
	windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/images/'..WSMode..'.png')
	windower.prim.set_texture('SHIELD_SET',''..windower.windower_path..'addons/gearswap/data/images/'..shieldtype..'.png')
	windower.prim.set_texture('SWORD_SET',''..windower.windower_path..'addons/gearswap/data/images/'..swordtype..'.png')
	windower.prim.set_texture('mevalock',''..windower.windower_path..'addons/gearswap/data/images/mevalock.png')
	windower.prim.set_texture('dtlock',''..windower.windower_path..'addons/gearswap/data/images/dtlock.png')
	windower.prim.set_texture('rrlock',''..windower.windower_path..'addons/gearswap/data/images/rrlock.png')
	windower.prim.set_texture('knockbacklock',''..windower.windower_path..'addons/gearswap/data/images/knockbacklock.png')
	windower.prim.set_texture('mpuplock',''..windower.windower_path..'addons/gearswap/data/images/mpuplock.png')
	windower.prim.set_texture('ACTIVE_RUNE',''..windower.windower_path..'addons/gearswap/data/images/'..sets.runes.index[runes]..'.png')
	windower.prim.set_texture('EXLOCK',''..windower.windower_path..'addons/gearswap/data/images/exlock.png')
	windower.prim.set_texture('TCOhelp',''..windower.windower_path..'addons/gearswap/data/images/help.png')


	windower.prim.set_size('TP_SET',200,30)
	windower.prim.set_size('ACC_SET',200,30)
	windower.prim.set_size('IDLE_SET',200,30)
	windower.prim.set_size('WS_SET',200,30)
	windower.prim.set_size('SHIELD_SET',200,55)
	windower.prim.set_size('SWORD_SET',200,55)
	windower.prim.set_size('mevalock',200,55)
	windower.prim.set_size('dtlock',200,55)
	windower.prim.set_size('rrlock',200,55)
	windower.prim.set_size('knockbacklock',200,55)
	windower.prim.set_size('mpuplock',200,55)
	windower.prim.set_size('ACTIVE_RUNE',200,50)
	windower.prim.set_size('EXLOCK',200,50)
	windower.prim.set_size('TCOhelp',640,480)


	windower.prim.set_position('TP_SET',0.65*windower.get_windower_settings().ui_x_res,ypos1)
	windower.prim.set_position('ACC_SET',0.65*windower.get_windower_settings().ui_x_res,ypos2)
	windower.prim.set_position('IDLE_SET',0.65*windower.get_windower_settings().ui_x_res,ypos3)
	windower.prim.set_position('WS_SET',0.65*windower.get_windower_settings().ui_x_res,ypos4)
	windower.prim.set_position('SHIELD_SET',0.65*windower.get_windower_settings().ui_x_res,ypos5)
	windower.prim.set_position('SWORD_SET',0.50*windower.get_windower_settings().ui_x_res,ypos5)
	windower.prim.set_position('mevalock',0.65*windower.get_windower_settings().ui_x_res,ypos7)
	windower.prim.set_position('dtlock',0.65*windower.get_windower_settings().ui_x_res,ypos8)
	windower.prim.set_position('rrlock',0.65*windower.get_windower_settings().ui_x_res,ypos9)
	windower.prim.set_position('knockbacklock',0.65*windower.get_windower_settings().ui_x_res,ypos10)
	windower.prim.set_position('mpuplock',0.65*windower.get_windower_settings().ui_x_res,ypos11)
	windower.prim.set_position('ACTIVE_RUNE',0.65*windower.get_windower_settings().ui_x_res,ypos6)
	windower.prim.set_position('EXLOCK',0.75*windower.get_windower_settings().ui_x_res,ypos8)
	windower.prim.set_position('TCOhelp',0.2*windower.get_windower_settings().ui_x_res,0.1*windower.get_windower_settings().y_res)


	windower.prim.set_color('TP_SET', 100, 255, 255, 255)
	windower.prim.set_color('ACC_SET', 100, 255, 255, 255)
	windower.prim.set_color('IDLE_SET', 100, 255, 255, 255)
	windower.prim.set_color('WS_SET', 100, 255, 255, 255)
	windower.prim.set_color('SHIELD_SET', 130, 255, 255, 255)
	windower.prim.set_color('SWORD_SET', 130, 255, 255, 255)
	windower.prim.set_color('mevalock', 130, 255, 255, 255)
	windower.prim.set_color('dtlock', 130, 255, 255, 255)
	windower.prim.set_color('rrlock', 130, 255, 255, 255)
	windower.prim.set_color('knockbacklock', 130, 255, 255, 255)
	windower.prim.set_color('mpuplock', 130, 255, 255, 255)
	windower.prim.set_color('EXLOCK',100,255,255,255)
	windower.prim.set_color('ACTIVE_RUNE',100,255,255,255)
	windower.prim.set_color('TCOhelp',150,255,255,255)


	windower.prim.set_visibility('TP_SET',true)
	windower.prim.set_visibility('ACC_SET',true)
	windower.prim.set_visibility('IDLE_SET',true)
	windower.prim.set_visibility('WS_SET',true)
	windower.prim.set_visibility('SHIELD_SET',true)
	windower.prim.set_visibility('SWORD_SET',true)
	windower.prim.set_visibility('mevalock',mevalock)
	windower.prim.set_visibility('dtlock',dtlock)
	windower.prim.set_visibility('rrlock',rrlock)
	windower.prim.set_visibility('knockbacklock',knockbacklock)
	windower.prim.set_visibility('mpuplock',mpuplock)
	windower.prim.set_visibility('EXLOCK',ExclusiveLock)
	windower.prim.set_visibility('TCOhelp',false)
end

function lock()
	if mevalock==true then
		equip(sets.mevalock)
	end
	if dtlock == true then
		equip(sets.dtlock)
	end
	if rrlock == true then
		equip(sets.rrlock)
	end
	if knockbacklock == true then
		equip(sets.knockbacklock)
	end
end

--[[function osd()
	send_command('text main text "'..player.equipment.main..'"')
	send_command('text sub text "'..player.equipment.sub..'"')
	send_command('text range text "'..player.equipment.range..'"')
	send_command('text ammo text "'..player.equipment.ammo..'"')
	send_command('text head text "'..player.equipment.head..'"')
	send_command('text neck text "'..player.equipment.neck..'"')
	send_command('text left_ear text "'..player.equipment.left_ear..'"')
	send_command('text right_ear text "'..player.equipment.right_ear..'"')
	send_command('text body text "'..player.equipment.body..'"')
	send_command('text hands text "'..player.equipment.hands..'"')
	send_command('text left_ring text "'..player.equipment.left_ring..'"')
	send_command('text right_ring text "'..player.equipment.right_ring..'"')
	send_command('text back text "'..player.equipment.back..'"')
	send_command('text waist text "'..player.equipment.waist..'"')
	send_command('text legs text "'..player.equipment.legs..'"')
	send_command('text feet text "'..player.equipment.feet..'"')
end]]
-- uncomment this to use the equip osd
