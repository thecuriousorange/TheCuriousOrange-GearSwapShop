function get_sets()

	windower.send_command('alias pf gs c primfix')
	windower.send_command('bind @F12 gs c fakes')
	windower.send_command('bind @F1 gs c dd')
	windower.send_command('bind @F2 gs c hybrid')
	windower.send_command('bind @F3 gs c tppdt')
	windower.send_command('bind @F4 gs c tpmdt')
	windower.send_command('bind #F1 gs c standard')
	windower.send_command('bind #F2 gs c refresh')
	windower.send_command('bind #F3 gs c idlepdt')
	windower.send_command('bind #F4 gs c idlemdt')
	windower.send_command('bind #2 gs equip sets.idle.pdt')
	windower.send_command('bind #4 gs equip sets.idle.standard')
	windower.send_command('bind #8 gs equip sets.idle.mdt')

	song1="Honor March"
	song2="Victory March"
	song3="Blade Madrigal"
	song4="Valor Minuet V"
	song5="Valor Minuet IV"

	sets.song1=T{}
	sets.song2=T{}
	sets.song3=T{}
	sets.song4=T{}
	sets.song5=T{}

	windower.send_command('alias song1 '..song1)
	windower.send_command('alias song2 '..song2)
	windower.send_command('alias song3 '..song3)
	windower.send_command('alias song4 '..song4)
	windower.send_command('alias song5 '..song5)

	include('organizer-lib.lua')
	include('itchygeogkeys.lua')

	TPType="dd"
	IdleType="standard"
	fakes="fakes"

	sets.TPType= T{}
	sets.IdleType= T{}
	sets.fakes= T{}

	windower.prim.create('song_type')
	windower.prim.set_texture('song_type',''..windower.windower_path..'addons/gearswap/data/images/'..fakes..'.png')
	windower.prim.set_position('song_type',0.65*windower.get_windower_settings().ui_x_res,0.05*windower.get_windower_settings().y_res)
	windower.prim.set_size('song_type',300,50)
	windower.prim.set_color('song_type',150,255,255,255)
	windower.prim.set_visibility('song_type',true)

--default macro set
	send_command('input /macro book 19;input /macro set 1')
--default macro set

	sets.precast={}

	sets.precast.fc={main="Kali", sub="Genbu's Shield", head="Nahtirah Hat",
	body="Inyanga Jubbah +2", hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -1%','Song spellcasting time -3%',}},
	legs="Aya. Cosciales +2", feet="Chelona Boots", neck="Aoidos' Matinee", waist="Embla Sash", left_ear="Loquac. Earring",
	right_ear="Enchanter Earring +1", right_ring="Kishar Ring",
	left_ring="Defending Ring",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10',}},}

	sets.precast.bardsong= set_combine(sets.precast.fc, {head="Fili Calot +1", legs="Gendewitha Spats", feet="Bihu Slippers +3",})

	sets.precast.hm= set_combine(sets.precast.bardsong, {range="Marsyas"})

	sets.ja={}

	sets.ja["Troubadour"]={body="Bihu Jstcorps. +3",}
	sets.ja["Nightingale"]={feet="Bihu Slippers +3",}
	sets.ja["Soul Voice"]={legs="Bihu Cannions +3",}

	sets.precast.ws={head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
    body={ name="Lustratio Harness", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
    hands={ name="Lustratio Mittens", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
    legs="Aya. Cosciales +2",
    feet={ name="Lustratio Leggings", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
    neck="Rancor Collar",
    waist="Fotia Belt",
    left_ear="Bladeborn Earring",
    right_ear="Steelflash Earring",
    left_ring="Ilabrat Ring",
    right_ring="Ramuh Ring",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
	}

	sets.precast.ws["Mordant Rime"]={
		range="Gjallarhorn",
    head={ name="Bihu Roundlet +3", augments={'Enhances "Con Anima" effect',}},
    body={ name="Bihu Jstcorps. +3", augments={'Enhances "Troubadour" effect',}},
    hands="Brioso Cuffs +3",
    legs="Bihu Cannions +3",
    feet="Bihu Slippers +3",
    neck="Mnbw. Whistle +1",
    waist="Aristo Belt",
    left_ear="Regal Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Ilabrat Ring",
    right_ring="Ramuh Ring",
    back={ name="Intarabus's Cape", augments={'CHR+20','Accuracy+20 Attack+20','CHR+10','Weapon skill damage +10%',}},
	}

	sets.midcast={}

	sets.midcast.songbuff={
		main="Carnwenhan",
		head="Fili Calot +1",
		body="Fili Hongreline +1", hands="Fili Manchettes", legs="Inyanga Shalwar +2",
	feet="Brioso Slippers +3", waist="Aristo Belt", neck="Moonbow Whistle +1", left_ear="Musical Earring", right_ear="Aoidos' Earring",
	left_ring="Airy Ring", right_ring="Omega Ring", back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10',}},}

	sets.midcast.songbuff.fakes= set_combine(sets.midcast.songbuff, {range="Daurdabla",})

	sets.midcast.songbuff["Victory March"]= set_combine(sets.midcast.songbuff, {range="Marsyas",})
	sets.midcast.songbuff["Advancing March"]= set_combine(sets.midcast.songbuff, {range="Marsyas",})
	sets.midcast.songbuff["Honor March"]= set_combine(sets.midcast.songbuff, {range="Marsyas",})

	sets.midcast.songbuff["Valor Minuet"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn",})
	sets.midcast.songbuff["Valor Minuet II"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn",})
	sets.midcast.songbuff["Valor Minuet III"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn",})
	sets.midcast.songbuff["Valor Minuet IV"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn",})
	sets.midcast.songbuff["Valor Minuet V"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn",})

	sets.midcast.songbuff["Knight's Minne"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", legs="Mou. Seraweels +1",})
	sets.midcast.songbuff["Knight's Minne II"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", legs="Mou. Seraweels +1",})
	sets.midcast.songbuff["Knight's Minne III"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", legs="Mou. Seraweels +1",})
	sets.midcast.songbuff["Knight's Minne IV"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", legs="Mou. Seraweels +1",})
	sets.midcast.songbuff["Knight's Minne V"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", legs="Mou. Seraweels +1",})

	sets.midcast.songbuff["Sword Madrigal"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn",})
	sets.midcast.songbuff["Blade Madrigal"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn",})

	sets.midcast.songbuff["Hunter's Prelude"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn",})
	sets.midcast.songbuff["Archer's Prelude"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn",})

	sets.midcast.songbuff["Sheepfoe Mambo"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn"})
	sets.midcast.songbuff["Dragonfoe Mambo"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn"})

	sets.midcast.songbuff["Chocobo Mazurka"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn"})
	sets.midcast.songbuff["Raptor Mazurka"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn"})

	sets.midcast.songbuff["Mage's Ballad"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", legs="Fili Rhingrave +1",})
	sets.midcast.songbuff["Mage's Ballad II"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", legs="Fili Rhingrave +1",})
	sets.midcast.songbuff["Mage's Ballad III"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", legs="Fili Rhingrave +1",})

	sets.midcast.songbuff["Army's Paeon"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", head="Brioso Roundlet +3",})
	sets.midcast.songbuff["Army's Paeon II"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", head="Brioso Roundlet +3",})
	sets.midcast.songbuff["Army's Paeon III"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", head="Brioso Roundlet +3",})
	sets.midcast.songbuff["Army's Paeon IV"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", head="Brioso Roundlet +3",})
	sets.midcast.songbuff["Army's Paeon V"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", head="Brioso Roundlet +3",})
	sets.midcast.songbuff["Army's Paeon VI"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", head="Brioso Roundlet +3",})

	sets.midcast.songbuff["Sinewy Etude"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", head="Mousai Turban",})
	sets.midcast.songbuff["Dextrous Etude"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", head="Mousai Turban",})
	sets.midcast.songbuff["Vivacious Etude"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", head="Mousai Turban",})
	sets.midcast.songbuff["Quick Etude"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", head="Mousai Turban",})
	sets.midcast.songbuff["Learned Etude"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", head="Mousai Turban",})
	sets.midcast.songbuff["Spirited Etude"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", head="Mousai Turban",})
	sets.midcast.songbuff["Enchanting Etude"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", head="Mousai Turban",})
	sets.midcast.songbuff["Herculean Etude"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", head="Mousai Turban",})
	sets.midcast.songbuff["Bewitching Etude"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", head="Mousai Turban",})
	sets.midcast.songbuff["Swift Etude"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", head="Mousai Turban",})
	sets.midcast.songbuff["Sage Etude"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", head="Mousai Turban",})
	sets.midcast.songbuff["Logical Etude"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", head="Mousai Turban",})
	sets.midcast.songbuff["Uncanny Etude"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", head="Mousai Turban",})
	sets.midcast.songbuff["Vital Etude"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", head="Mousai Turban",})

	sets.midcast.songbuff["Fire Carol"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", hands="Mousai Gages +1"})
	sets.midcast.songbuff["Fire Carol II"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", hands="Mousai Gages +1"})
	sets.midcast.songbuff["Ice Carol"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", hands="Mousai Gages +1"})
	sets.midcast.songbuff["Ice Carol II"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", hands="Mousai Gages +1"})
	sets.midcast.songbuff["Wind Carol"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", hands="Mousai Gages +1"})
	sets.midcast.songbuff["Wind Carol II"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", hands="Mousai Gages +1"})
	sets.midcast.songbuff["Earth Carol"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", hands="Mousai Gages +1"})
	sets.midcast.songbuff["Earth Carol II"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", hands="Mousai Gages +1"})
	sets.midcast.songbuff["Lightning Carol"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", hands="Mousai Gages +1"})
	sets.midcast.songbuff["Lightning Carol II"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", hands="Mousai Gages +1"})
	sets.midcast.songbuff["Water Carol"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", hands="Mousai Gages +1"})
	sets.midcast.songbuff["Water Carol II"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", hands="Mousai Gages +1"})
	sets.midcast.songbuff["Light Carol"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", hands="Mousai Gages +1"})
	sets.midcast.songbuff["Light Carol II"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", hands="Mousai Gages +1"})
	sets.midcast.songbuff["Dark Carol"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", hands="Mousai Gages +1"})
	sets.midcast.songbuff["Dark Carol II"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", hands="Mousai Gages +1"})

	sets.midcast.songbuff["Sentinel's Scherzo"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn", feet="Fili Cothurnes +1",})

	sets.midcast.songbuff["Foe Sirvente"]= set_combine(sets.midcast.songbuff,{range="Gjallarhorn",})
	sets.midcast.songbuff["Adventurer's Dirge"]= set_combine(sets.midcast.songbuff,{range="Gjallarhorn",})

	sets.midcast.songbuff["Goddess's Hymnus"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn",})

	sets.midcast.songenfeeb={
		main={ name="Kali", augments={'DMG:+15','CHR+15','Mag. Acc.+15',}},
    sub="Ammurapi Shield",
    range="Gjallarhorn",
    head="Brioso Roundlet +3",
    body="Brioso Justau. +3",
    hands="Brioso Cuffs +3",
    legs="Brioso Cannions +3",
    feet="Brioso Slippers +3",
    neck="Mnbw. Whistle +1",
    waist="Demonry Sash",
    left_ear="Regal Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10',}},
	}

	sets.midcast.songenfeeb["Foe Requiem"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})
	sets.midcast.songenfeeb["Foe Requiem II"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})
	sets.midcast.songenfeeb["Foe Requiem III"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})
	sets.midcast.songenfeeb["Foe Requiem IV"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})
	sets.midcast.songenfeeb["Foe Requiem V"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})
	sets.midcast.songenfeeb["Foe Requiem VI"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})
	sets.midcast.songenfeeb["Foe Requiem VII"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})

	sets.midcast.songenfeeb["Battlefield Elegy"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn",})
	sets.midcast.songenfeeb["Carnage Elegy"]= set_combine(sets.midcast.songbuff, {range="Gjallarhorn",})

	sets.midcast.songenfeeb["Fire Threnody"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})
	sets.midcast.songenfeeb["Ice Threnody"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})
	sets.midcast.songenfeeb["Wind Threnody"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})
	sets.midcast.songenfeeb["Earth Threnody"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})
	sets.midcast.songenfeeb["Lightning Threnody"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})
	sets.midcast.songenfeeb["Water Threnody"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})
	sets.midcast.songenfeeb["Light Threnody"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})
	sets.midcast.songenfeeb["Dark Threnody"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})
	sets.midcast.songenfeeb["Fire Threnody II"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})
	sets.midcast.songenfeeb["Ice Threnody II"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})
	sets.midcast.songenfeeb["Wind Threnody II"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})
	sets.midcast.songenfeeb["Earth Threnody II"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})
	sets.midcast.songenfeeb["Lightning Threnody II"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})
	sets.midcast.songenfeeb["Water Threnody II"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})
	sets.midcast.songenfeeb["Light Threnody II"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})
	sets.midcast.songenfeeb["Dark Threnody II"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})

	sets.midcast.songenfeeb["Pining Nocturne"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})

	sets.midcast.songenfeeb["Foe Lullaby"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn", hands="Brioso Cuffs +3", legs="Inyanga Shalwar +2", feet="Brioso Slippers +3",})
	sets.midcast.songenfeeb["Foe Lullaby II"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn", hands="Brioso Cuffs +3", legs="Inyanga Shalwar +2", feet="Brioso Slippers +3",})

	sets.midcast.songenfeeb["Horde Lullaby"]= set_combine(sets.midcast.songenfeeb, {range="Blurred Harp", hands="Brioso Cuffs +3", legs="Inyanga Shalwar +2", feet="Brioso Slippers +3",})
	sets.midcast.songenfeeb["Horde Lullaby II"]= set_combine(sets.midcast.songenfeeb, {range="Blurred Harp", hands="Brioso Cuffs +3", legs="Inyanga Shalwar +2", feet="Brioso Slippers +3",})

	sets.midcast.songenfeeb["Magic Finale"]= set_combine(sets.midcast.songenfeeb, {Range="Gjallarhorn"})

	sets.midcast.cure={head={ name="Gende. Caubeen +1", augments={'Phys. dmg. taken -3%','"Cure" potency +6%',}},
    body={ name="Gendewitha Bliaut", augments={'Phys. dmg. taken -4%','"Cure" potency +5%',}},
    feet={ name="Gende. Galoshes", augments={'Phys. dmg. taken -2%','"Cure" potency +1%',}},
	main="Kali", sub="Genbu's Shield", hands="Bokwus Gloves", legs="Nares Trews", neck="Aoidos' Matinee",
	waist="Cascade Belt", left_ear="Lifestorm Earring", right_ear="Loquac. Earring", left_ring="Aquasoul Ring",
	right_ring="Aquasoul Ring", back="Oretania's Cape",}

	sets.midcast.enhancing={}

	sets.midcast.na={head={ name="Gende. Caubeen", augments={'Phys. dmg. taken -4%','"Cure" potency +5%',}},
	body={ name="Gendewitha Bliaut", augments={'Phys. dmg. taken -4%','"Cure" potency +5%',}},
	legs={ name="Gendewitha Spats", augments={'Phys. dmg. taken -3%','Song recast delay -2',}},
	feet={ name="Gende. Galoshes", augments={'Phys. dmg. taken -2%','"Cure" potency +1%',}},
	hands="Bokwus Gloves", neck="Aoidos' Matinee", waist="Cascade Belt", left_ear="Lifestorm Earring", right_ear="Loquac. Earring",
	left_ring="Ephedra Ring", right_ring="Aquasoul Ring", back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10',}},}

	sets.idle={}

	sets.idle.standard={main={ name="Kali", augments={'DMG:+15','CHR+15','Mag. Acc.+15',}},
    sub="Genmei Shield",
    range="Daurdabla",
    head="Inyanga Tiara +2",
    body="Inyanga Jubbah +2",
    hands="Inyan. Dastanas +2",
    legs="Inyanga Shalwar +2",
    feet="Fili Cothurnes +1",
    neck="Twilight Torque",
    waist="Cascade Belt",
    left_ear="Ethereal Earring",
    right_ear="Aoidos' Earring",
    left_ring="Defending Ring",
    right_ring="Inyanga Ring",
    back="Shadow Mantle",}
	--[[{main="Kali", sub="Genbu's Shield",
	head={ name="Wivre Hairpin", augments={'"Refresh"+1','Water resistance+6','Dark resistance+5',}},
    body={ name="Gendewitha Bliaut", augments={'Phys. dmg. taken -4%','"Cure" potency +5%',}},
	hands="Serpentes Cuffs", legs="Nares Trews", feet="Fili Cothurnes +1", neck="Twilight Torque",
	waist="Cascade Belt", left_ear="Ethereal Earring", right_ear="Aoidos' Earring",
	left_ring="Defending Ring",
    right_ring="Shadow Ring", back="Shadow Mantle",}]]

	sets.idle.refresh={main="Kali", sub="Genbu's Shield",
	head={ name="Wivre Hairpin", augments={'"Refresh"+1','Water resistance+6','Dark resistance+5',}},
    body={ name="Gendewitha Bliaut", augments={'Phys. dmg. taken -4%','"Cure" potency +5%',}},
	hands="Serpentes Cuffs", legs="Nares Trews", feet="Fili Cothurnes +1", neck="Twilight Torque",
	waist="Cascade Belt", left_ear="Ethereal Earring", right_ear="Aoidos' Earring",
	left_ring="Defending Ring",
    right_ring="Shadow Ring", back="Shadow Mantle",}

	sets.idle.pdt={head={ name="Gende. Caubeen", augments={'Phys. dmg. taken -4%','"Cure" potency +5%',}},
	body={ name="Gendewitha Bliaut", augments={'Phys. dmg. taken -4%','"Cure" potency +5%',}},
	hands={ name="Gendewitha Gages", augments={'Phys. dmg. taken -1%','Song recast delay -3',}},
	legs={ name="Gendewitha Spats", augments={'Phys. dmg. taken -3%','Song recast delay -2',}},
	feet={ name="Gende. Galoshes", augments={'Phys. dmg. taken -2%','"Cure" potency +1%',}},
	main="Earth Staff", neck="Twilight Torque", waist="Cascade Belt", left_ear="Ethereal Earring", right_ear="Aoidos' Earring",
	left_ring="Defending Ring",
    right_ring="Dark Ring", back="Repulse Mantle",}

	sets.idle.mdt= set_combine(sets.idle.pdt, {main="Kali", sub="Genbu's Shield",})

	sets.tp={}

	sets.tp.dd={main="Kali",
	sub={ name="Genbu's Shield", augments={'"Cure" potency +3%','"Cure" spellcasting time -6%',}},
	head="Aya. Zucchetto +2",
    body="Ayanmo Corazza +2",
    hands="Aya. Manopolas +2",
    legs="Aya. Cosciales +2",
    feet="Aya. Gambieras +2",
    neck="Iqabi Necklace",
    waist="Windbuffet Belt",
    left_ear="Mache Earring",
    right_ear="Mache Earring",
    left_ring="Ilabrat Ring",
    right_ring="Ramuh Ring",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},}

	sets.tp.hybrid={main="Kali", sub={ name="Genbu's Shield", augments={'"Cure" potency +3%','"Cure" spellcasting time -6%',}},
	head={ name="Gende. Caubeen", augments={'Phys. dmg. taken -4%','"Cure" potency +5%',}},
    body={ name="Gendewitha Bliaut", augments={'Phys. dmg. taken -4%','"Cure" potency +5%',}},
    hands={ name="Gendewitha Gages", augments={'Phys. dmg. taken -1%','Song recast delay -3',}},
    legs={ name="Gendewitha Spats", augments={'Phys. dmg. taken -3%','Song recast delay -2',}},
    feet={ name="Gende. Galoshes", augments={'Phys. dmg. taken -2%','"Cure" potency +1%',}},
    neck="Asperity Necklace", waist="Windbuffet Belt", left_ear="Steelflash Earring",
	right_ear="Bladeborn Earring", left_ring="Ulthalam's Ring", right_ring="Rajas Ring",
	back="Atheling Mantle",}

	sets.tp.pdt=sets.idle.pdt

	sets.tp.mdt=sets.idle.mdt
end

function precast(spell)
	if spell.prefix=="/song" then
		equip(sets.precast.bardsong)
		add_to_chat(206, 'bardsong') --put in for testing purposes
	elseif spell.prefix=="/magic" or spell.prefix=="/ninjutsu" then
		equip(sets.precast.fc)
		add_to_chat(206, 'magic or ninjutsu')
	elseif spell.prefix=="/jobability" then
		equip(sets.ja[spell.english])
		add_to_chat(206, 'job abilities')
	elseif spell.prefix=="/weaponskill" then
		if spell.english=="Mordant Rime" then
			equip(sets.precast.ws[spell.english])
		else
			equip(sets.precast.ws)
		end
	end
	if spell.english=="Honor March" then
		equip(sets.precast.hm)
	end
	windower.send_command('pf')
end

function midcast(spell)
	if spell.prefix=="/song" then
		if spell.target.type=="MONSTER" then
			equip(sets.midcast.songenfeeb[spell.english])
		else
			if fakes=="fakes" then
				if spell.english~="Honor March" then
					equip(sets.midcast.songbuff.fakes)
				elseif spell.english=="Honor March" then
					equip(sets.midcast.songbuff[spell.english])
				end
			elseif fakes=="real" then
				equip(sets.midcast.songbuff[spell.english])
			end
		end
	elseif spell.prefix=="/magic" then
		if spell.english:find('Cure') or spell.english:find('Curaga') then
			equip(sets.midcast.cure)
		end
		if spell.english:find('na') or spell.english:find('Erase') then
			equip(sets.midcast.na)
		end
	end
	windower.send_command('pf')
end

function aftercast(spell)
	if player.status=="Engaged" then
		equip(sets.tp[TPType])
	else
		equip(sets.idle[IdleType])
	end
	windower.send_command('pf')
end

function status_change(new,old)
	if new=="Engaged" then
		equip(sets.tp[TPType])
	else
		equip(sets.idle[IdleType])
	end
	windower.send_command('pf')
end

function self_command(command)
	if command=="dd" then
		TPType="dd"
	end
	if command=="hybrid" then
		TPType="hybrid"
	end
	if command=="tppdt" then
		TPType="pdt"
	end
	if command=="tpmdt" then
		TPType="mdt"
	end
	if command=="standard" then
		IdleType="standard"
	end
	if command=="refresh" then
		IdleType="refresh"
	end
	if command=="idlepdt" then
		IdleType="pdt"
	end
	if command=="idlemdt" then
		IdleType="mdt"
	end
	if command=="fakes" then
		if fakes=="fakes" then
			fakes="real"
			add_to_chat(207, 'REAL SONGS')
		else
			fakes="fakes"
			add_to_chat(207, 'FAKE SONGS')
		end
		windower.send_command('pf')
		windower.prim.set_texture('song_type',''..windower.windower_path..'addons/gearswap/data/images/'..fakes..'.png')
	end
	if command=="primfix" then
		windower.prim.set_size('song_type',300,50)
	end
	if command=="singfakes" then
		fakes="fakes"
		windower.prim.set_texture('song_type',''..windower.windower_path..'addons/gearswap/data/images/'..fakes..'.png')
		windower.send_command('song1;wait 6.5;song2;wait 6.5;song3;wait 6.5;song4')
	end
	if command=="singreals" then
		fakes="real"
		windower.prim.set_texture('song_type',''..windower.windower_path..'addons/gearswap/data/images/'..fakes..'.png')
		windower.send_command('song1;wait 6.5;song2;wait 6.5;song3;wait 6.5;song4')
	end
	if command=="singjareals" then
		fakes="real"
		windower.prim.set_texture('song_type',''..windower.windower_path..'addons/gearswap/data/images/'..fakes..'.png')
		windower.send_command('Troubadour;wait 2;Nightingale;wait 2;Marcato;wait 5;song1;wait 5;song2;wait 5;song3;wait 5;song4')
	end
	if command=="cc5fakes" then
		fakes="fakes"
		windower.prim.set_texture('song_type',''..windower.windower_path..'addons/gearswap/data/images/'..fakes..'.png')
		windower.send_command('clarioncall;wait 2;song1;wait 6.5;song2;wait 6.5;song3;wait 6.5;song4;wait 6.5;song5')
	end
	if command=="sv5jareals" then
		fakes="real"
		windower.prim.set_texture('song_type',''..windower.windower_path..'addons/gearswap/data/images/'..fakes..'.png')
		windower.send_command('soulvoice;wait 2;Troubadour;wait 2;Nightingale;wait 5;song1;wait 5;song2;wait 5;song3;wait 5;song4;wait 5.5;song5')
	end
	if command=="5jareals" then
		fakes="real"
		windower.prim.set_texture('song_type',''..windower.windower_path..'addons/gearswap/data/images/'..fakes..'.png')
		windower.send_command('Marcato;wait 2;Troubadour;wait 2;Nightingale;wait 5;song1;wait 5;song2;wait 5;song3;wait 5;song4;wait 5;song5')
	end
	if command=="5reals" then
		fakes="real"
		windower.prim.set_texture('song_type',''..windower.windower_path..'addons/gearswap/data/images/'..fakes..'.png')
		windower.send_command('song1;wait 6.5;song2;wait 6.5;song3;wait 6.5;song4;wait 6.5;song 5')
	end
	if command=="ddh1" then
		song1="Honor March"
		song2="Victory March"
		song3="Valor Minuet V"
		song4="Valor Minuet IV"
		song5="Adventurer's Dirge"
		windower.send_command('alias song1 '..song1)
		windower.send_command('alias song2 '..song2)
		windower.send_command('alias song3 '..song3)
		windower.send_command('alias song4 '..song4)
		windower.send_command('alias song5 '..song5)
		add_to_chat(222,"song1="..song1.." song2="..song2.." song3="..song3.." song4="..song4.." song5="..song5)
	end
	if command=="ddh1acc" then
		song1="Honor March"
		song2="Victory March"
		song3="Blade Madrigal"
		song4="Valor Minuet V"
		song5="Valor Minuet IV"
		windower.send_command('alias song1 '..song1)
		windower.send_command('alias song2 '..song2)
		windower.send_command('alias song3 '..song3)
		windower.send_command('alias song4 '..song4)
		windower.send_command('alias song5 '..song5)
		add_to_chat(222,"song1="..song1.." song2="..song2.." song3="..song3.." song4="..song4.." song5="..song5)
	end
	if command=="ddh2" then
		song1="Honor March"
		song2="Blade Madrigal"
		song3="Valor Minuet V"
		song4="Valor Minuet IV"
		song5="Sword Madrigal"
		windower.send_command('alias song1 '..song1)
		windower.send_command('alias song2 '..song2)
		windower.send_command('alias song3 '..song3)
		windower.send_command('alias song4 '..song4)
		windower.send_command('alias song5 '..song5)
		add_to_chat(222,"song1="..song1.." song2="..song2.." song3="..song3.." song4="..song4.." song5="..song5)
	end
	if command=="di" then
		song1="Honor March"
		song2="Valor Minuet V"
		song3="Valor Minuet IV"
		song4="Valor Minuet III"
		song5="Herculean Etude"
		windower.send_command('alias song1 '..song1)
		windower.send_command('alias song2 '..song2)
		windower.send_command('alias song3 '..song3)
		windower.send_command('alias song4 '..song4)
		windower.send_command('alias song5 '..song5)
		add_to_chat(222,"song1="..song1.." song2="..song2.." song3="..song3.." song4="..song4.." song5="..song5)
	end
	if command=="ddh2acc" then
		song1="Honor March"
		song2="Blade Madrigal"
		song3="Sword Madrigal"
		song4="Valor Minuet V"
		song5="Valor Minuet IV"
		windower.send_command('alias song1 '..song1)
		windower.send_command('alias song2 '..song2)
		windower.send_command('alias song3 '..song3)
		windower.send_command('alias song4 '..song4)
		windower.send_command('alias song5 '..song5)
		add_to_chat(222,"song1="..song1.." song2="..song2.." song3="..song3.." song4="..song4.." song5="..song5)
	end
	if command=="ddh2w1" then
		song1="Honor March"
		song2="Valor Minuet V"
		song3="Valor Minuet IV"
		song4="Sentinel's Scherzo"
		song5="valor minuet iii"
		windower.send_command('alias song1 '..song1)
		windower.send_command('alias song2 '..song2)
		windower.send_command('alias song3 '..song3)
		windower.send_command('alias song4 '..song4)
		windower.send_command('alias song5 '..song5)
		add_to_chat(222,"song1="..song1.." song2="..song2.." song3="..song3.." song4="..song4.." song5="..song5)
	end
	if command=="ddh1w1" then
		song1="Honor March"
		song2="Victory March"
		song3="Valor Minuet V"
		song4="Sentinel's Scherzo"
		song5="Valor Minuet IV"
		windower.send_command('alias song1 '..song1)
		windower.send_command('alias song2 '..song2)
		windower.send_command('alias song3 '..song3)
		windower.send_command('alias song4 '..song4)
		windower.send_command('alias song5 '..song5)
		add_to_chat(222,"song1="..song1.." song2="..song2.." song3="..song3.." song4="..song4.." song5="..song5)
	end
	if command=="ddh2w2" then
		song1="Honor March"
		song2="Blade Madrigal"
		song3="Valor Minuet V"
		song4="Sentinel's Scherzo"
		song5="Valor Minuet IV"
		windower.send_command('alias song1 '..song1)
		windower.send_command('alias song2 '..song2)
		windower.send_command('alias song3 '..song3)
		windower.send_command('alias song4 '..song4)
		windower.send_command('alias song5 '..song5)
		add_to_chat(222,"song1="..song1.." song2="..song2.." song3="..song3.." song4="..song4.." song5="..song5)
	end
	if command=="tankh2w1" then
		song1="Honor March"
		song2="Knight's Minne V"
		song3="Sentinel's Scherzo"
		song4="Mages Ballad III"
		song5="Knight's Minne V"
		windower.send_command('alias song1 '..song1)
		windower.send_command('alias song2 '..song2)
		windower.send_command('alias song3 '..song3)
		windower.send_command('alias song4 '..song4)
		windower.send_command('alias song5 '..song5)
		add_to_chat(222,"song1="..song1.." song2="..song2.." song3="..song3.." song4="..song4.." song5="..song5)
	end
	if command=="tank1" then
		song1="Honor March"
		song2="Knight's Minne V"
		song3="Knight's Minne IV"
		song4="Mages Ballad III"
		song5="Mages Ballad II"
		windower.send_command('alias song1 '..song1)
		windower.send_command('alias song2 '..song2)
		windower.send_command('alias song3 '..song3)
		windower.send_command('alias song4 '..song4)
		windower.send_command('alias song5 '..song5)
		add_to_chat(222,"song1="..song1.." song2="..song2.." song3="..song3.." song4="..song4.." song5="..song5)
	end
	if command=="tank1" then
		song1="Honor March"
		song2="Knight's Minne V"
		song3="Knight's Minne IV"
		song4="Mages Ballad III"
		song5="Mages Ballad II"
		windower.send_command('alias song1 '..song1)
		windower.send_command('alias song2 '..song2)
		windower.send_command('alias song3 '..song3)
		windower.send_command('alias song4 '..song4)
		windower.send_command('alias song5 '..song5)
		add_to_chat(222,"song1="..song1.." song2="..song2.." song3="..song3.." song4="..song4.." song5="..song5)
	end
	if command=="tank1h1" then
		song1="Honor March"
		song2="Victory March"
		song3="Knight's Minne V"
		song4="Mages Ballad III"
		song5="Knight's Minne IV"
		windower.send_command('alias song1 '..song1)
		windower.send_command('alias song2 '..song2)
		windower.send_command('alias song3 '..song3)
		windower.send_command('alias song4 '..song4)
		windower.send_command('alias song5 '..song5)
		add_to_chat(222,"song1="..song1.." song2="..song2.." song3="..song3.." song4="..song4.." song5="..song5)
	end
	if command=="omen" then
		song1="Honor March"
		song2="Blade Madrigal"
		song3="Valor Minuet V"
		song4="Mage's Ballad III"
		windower.send_command('alias song1 '..song1)
		windower.send_command('alias song2 '..song2)
		windower.send_command('alias song3 '..song3)
		windower.send_command('alias song4 '..song4)
		windower.send_command('alias song5 '..song5)
		add_to_chat(222,"song1="..song1.." song2="..song2.." song3="..song3.." song4="..song4.." song5="..song5)
	end
	if command=="ddh2def" then
		song1="Honor March"
		song2="Blade Madrigal"
		song3="Knight's Minne V"
		song4="Valor Minuet V"
		song5="Valor Minuet IV"

		windower.send_command('alias song1 '..song1)
		windower.send_command('alias song2 '..song2)
		windower.send_command('alias song3 '..song3)
		windower.send_command('alias song4 '..song4)
		windower.send_command('alias song5 '..song5)
		add_to_chat(222,"song1="..song1.." song2="..song2.." song3="..song3.." song4="..song4.." song5="..song5)
	end
	if command=="blkprl" then
		song1="Honor March"
		song2="Victory March"
		song3="Valor Minuet V"
		song4="Mage's Ballad III"
		song5="Valor Minuet IV"

		windower.send_command('alias song1 '..song1)
		windower.send_command('alias song2 '..song2)
		windower.send_command('alias song3 '..song3)
		windower.send_command('alias song4 '..song4)
		windower.send_command('alias song5 '..song5)
		add_to_chat(222,"song1="..song1.." song2="..song2.." song3="..song3.." song4="..song4.." song5="..song5)
	end
	if command=="b3p1" then
		send_command('pianissimo;wait 1;magesballad3 p1')
	end
	if command=="b3p2" then
		send_command('pianissimo;wait 1;magesballad3 p2')
	end
	if command=="b3p3" then
		send_command('pianissimo;wait 1;magesballad3 p3')
	end
	if command=="b3p4" then
		send_command('pianissimo;wait 1;magesballad3 p4')
	end
	if command=="b3p5" then
		send_command('pianissimo;wait 1;magesballad3 p5')
	end
	if command=="selfbuffs" then
		send_command("haste me;wait 4.5;blink;wait 6;ss;wait 6.5;aquaveil;wait 5.5;")
	end
end
