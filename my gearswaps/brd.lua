function get_sets()
	include('organizer-lib.lua')
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

	TPType="dd"
	IdleType="standard"	
	fakes="fakes"
	
	sets.TPType= T{}
	sets.IdleType= T{}
	sets.fakes= T{}

--default macro set
	send_command('input /macro book 19;input /macro set 1')
--default macro set
	
	sets.precast={}
	
	sets.precast.fc={head="Nahtirah Hat", body="Inyanga Jubbah +1", legs="Aya. Cosciales +1", feet="Chelona Boots",
	hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}},
	neck={ name="Jeweled Collar", augments={'"Fast Cast"+2','MND+2','MP recovered while healing +2',}}, waist="Siegel Sash",
	left_ear="Loquac. Earring", right_ear="Etiolation Earring", left_ring="Prolix Ring", right_ring="Rahab Ring",
	back="Swith Cape",}
	
	sets.precast.bardsong= set_combine(sets.precast.fc, {head="Aoidos' Calot +2", neck="Aoidos' Matinee", waist="Aoidos' Belt", legs="Querkening Brais", feet="Telchine Pigaches",})
	
	sets.ja={}
	
	sets.ja["Troubadour"]={body="Bihu Justaucorps",}
	sets.ja["Nightingale"]={feet="Bihu Slippers",}
	sets.ja["Soul Voice"]={legs="Bihu Cannions",}
	
	sets.precast.ws={head="Espial Cap", body="Espial Gambison", hands="Espial Bracers",
	legs="Espial Hose", feet="Espial Socks", neck="Asperity Necklace", waist="Windbuffet Belt",
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Thundersoul Ring", 
	right_ring="Rajas Ring", back="Atheling Mantle",}
	
	sets.midcast={}
	
	sets.midcast.songbuff={head="Aoidos' Calot +2", body="Aoidos' Hngrln. +2", hands="Ad. Mnchtte. +2", legs="Aoidos' Rhing. +2",
	feet="Brioso Slippers", neck="Aoidos' Matinee", waist="Aristo Belt", left_ear="Musical Earring", right_ear="Aoidos' Earring",
	left_ring="Airy Ring", right_ring="Omega Ring", back="Refraction Cape",}
	
	sets.midcast.songbuff.fakes= set_combine(sets.midcast.songbuff, {range="Terpander",})
	
	sets.midcast.songbuff["Victory March"]= set_combine(sets.midcast.songbuff, {range="Langeleik",})
	sets.midcast.songbuff["Advancing March"]= set_combine(sets.midcast.songbuff, {range="Langeleik",})
	
	sets.midcast.songbuff["Valor Minuet"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	sets.midcast.songbuff["Valor Minuet II"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	sets.midcast.songbuff["Valor Minuet III"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	sets.midcast.songbuff["Valor Minuet IV"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	sets.midcast.songbuff["Valor Minuet V"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	
	sets.midcast.songbuff["Knight's Minne"]= set_combine(sets.midcast.songbuff, {range="Syrinx",})
	sets.midcast.songbuff["Knight's Minne II"]= set_combine(sets.midcast.songbuff, {range="Syrinx",})
	sets.midcast.songbuff["Knight's Minne III"]= set_combine(sets.midcast.songbuff, {range="Syrinx",})
	sets.midcast.songbuff["Knight's Minne IV"]= set_combine(sets.midcast.songbuff, {range="Syrinx",})
	sets.midcast.songbuff["Knight's Minne V"]= set_combine(sets.midcast.songbuff, {range="Syrinx",})
	
	sets.midcast.songbuff["Sword Madrigal"]= set_combine(sets.midcast.songbuff, {range="Cantabank's Horn",})
	sets.midcast.songbuff["Blade Madrigal"]= set_combine(sets.midcast.songbuff, {range="Cantabank's Horn",})
	
	sets.midcast.songbuff["Hunter's Prelude"]= set_combine(sets.midcast.songbuff, {range="Cantabank's Horn",})
	sets.midcast.songbuff["Archer's Prelude"]= set_combine(sets.midcast.songbuff, {range="Cantabank's Horn",})
	
	sets.midcast.songbuff["Sheepfoe Mambo"]= set_combine(sets.midcast.songbuff, {range="Vihuela"})
	sets.midcast.songbuff["Dragonfoe Mambo"]= set_combine(sets.midcast.songbuff, {range="Vihuela"})
	
	sets.midcast.songbuff["Chocobo Mazurka"]= set_combine(sets.midcast.songbuff, {range="Vihuela"})
	sets.midcast.songbuff["Raptor Mazurka"]= set_combine(sets.midcast.songbuff, {range="Vihuela"})
	
	sets.midcast.songbuff["Mage's Ballad"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	sets.midcast.songbuff["Mage's Ballad II"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	sets.midcast.songbuff["Mage's Ballad III"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	
	sets.midcast.songbuff["Army's Paeon"]= set_combine(sets.midcast.songbuff, {range="Oneiros Harp",})
	sets.midcast.songbuff["Army's Paeon II"]= set_combine(sets.midcast.songbuff, {range="Oneiros Harp",})
	sets.midcast.songbuff["Army's Paeon III"]= set_combine(sets.midcast.songbuff, {range="Oneiros Harp",})
	sets.midcast.songbuff["Army's Paeon IV"]= set_combine(sets.midcast.songbuff, {range="Oneiros Harp",})
	sets.midcast.songbuff["Army's Paeon V"]= set_combine(sets.midcast.songbuff, {range="Oneiros Harp",})
	sets.midcast.songbuff["Army's Paeon VI"]= set_combine(sets.midcast.songbuff, {range="Oneiros Harp",})
	
	sets.midcast.songbuff["Swiney Etude"]= set_combine(sets.midcast.songbuff, {range="Langeleik",})
	sets.midcast.songbuff["Dextrous Etude"]= set_combine(sets.midcast.songbuff, {range="Langeleik",})
	sets.midcast.songbuff["Vivacious Etude"]= set_combine(sets.midcast.songbuff, {range="Langeleik",})
	sets.midcast.songbuff["Quick Etude"]= set_combine(sets.midcast.songbuff, {range="Langeleik",})
	sets.midcast.songbuff["Learned Etude"]= set_combine(sets.midcast.songbuff, {range="Langeleik",})
	sets.midcast.songbuff["Spirited Etude"]= set_combine(sets.midcast.songbuff, {range="Langeleik",})
	sets.midcast.songbuff["Enhanting Etude"]= set_combine(sets.midcast.songbuff, {range="Langeleik",})
	sets.midcast.songbuff["Herculean Etude"]= set_combine(sets.midcast.songbuff, {range="Langeleik",})
	sets.midcast.songbuff["Bewitching Etude"]= set_combine(sets.midcast.songbuff, {range="Langeleik",})
	
	sets.midcast.songbuff["Fire Carol"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	sets.midcast.songbuff["Fire Carol II"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	sets.midcast.songbuff["Ice Carol"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	sets.midcast.songbuff["Ice Carol II"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	sets.midcast.songbuff["Wind Carol"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	sets.midcast.songbuff["Wind Carol II"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	sets.midcast.songbuff["Earth Carol"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	sets.midcast.songbuff["Earth Carol II"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	sets.midcast.songbuff["Lightning Carol"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	sets.midcast.songbuff["Lightning Carol II"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	sets.midcast.songbuff["Water Carol"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	sets.midcast.songbuff["Water Carol II"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	sets.midcast.songbuff["Light Carol"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	sets.midcast.songbuff["Light Carol II"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	sets.midcast.songbuff["Dark Carol"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	sets.midcast.songbuff["Dark Carol II"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
	
	sets.midcast.songbuff["Sentinel's Scherzo"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute", feet="Aoidos' Cothrn. +2",})
	
	sets.midcast.songbuff["Goddess's Hymnus"]= set_combine(sets.midcast.songbuff, {range="Eminent Flute",})
		
	sets.midcast.songenfeeb={main="Twebuliij", sub="Mephitis Grip", 
	head="Brioso Roundlet", body="Bihu Justaucorps", hands="Ad. Mnchtte. +2", legs="Bihu Cannions",
	feet="Artsieq boots", neck="Piper's Torque", waist="Demonry Sash",
	left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Sangoma Ring", right_ring="Omega Ring", 
	back="Rhapsode's Cape",}
	
	sets.midcast.songenfeeb["Foe Requiem"]= set_combine(sets.midcast.songenfeeb, {Range="Requiem Flute"})
	sets.midcast.songenfeeb["Foe Requiem II"]= set_combine(sets.midcast.songenfeeb, {Range="Requiem Flute"})
	sets.midcast.songenfeeb["Foe Requiem III"]= set_combine(sets.midcast.songenfeeb, {Range="Requiem Flute"})
	sets.midcast.songenfeeb["Foe Requiem IV"]= set_combine(sets.midcast.songenfeeb, {Range="Requiem Flute"})
	sets.midcast.songenfeeb["Foe Requiem V"]= set_combine(sets.midcast.songenfeeb, {Range="Requiem Flute"})
	sets.midcast.songenfeeb["Foe Requiem VI"]= set_combine(sets.midcast.songenfeeb, {Range="Requiem Flute"})
	sets.midcast.songenfeeb["Foe Requiem VII"]= set_combine(sets.midcast.songenfeeb, {Range="Requiem Flute"})
	
	sets.midcast.songenfeeb["Battlefield Elegy"]= set_combine(sets.midcast.songbuff, {range="Syrinx",})
	sets.midcast.songenfeeb["Carnage Elegy"]= set_combine(sets.midcast.songbuff, {range="Syrinx",})
	
	sets.midcast.songenfeeb["Fire Threnody"]= set_combine(sets.midcast.songenfeeb, {Range="Eminent Flute"})
	sets.midcast.songenfeeb["Ice Threnody"]= set_combine(sets.midcast.songenfeeb, {Range="Eminent Flute"})
	sets.midcast.songenfeeb["Wind Threnody"]= set_combine(sets.midcast.songenfeeb, {Range="Eminent Flute"})
	sets.midcast.songenfeeb["Earth Threnody"]= set_combine(sets.midcast.songenfeeb, {Range="Eminent Flute"})
	sets.midcast.songenfeeb["Lightning Threnody"]= set_combine(sets.midcast.songenfeeb, {Range="Eminent Flute"})
	sets.midcast.songenfeeb["Water Threnody"]= set_combine(sets.midcast.songenfeeb, {Range="Eminent Flute"})
	sets.midcast.songenfeeb["Light Threnody"]= set_combine(sets.midcast.songenfeeb, {Range="Eminent Flute"})
	sets.midcast.songenfeeb["Dark Threnody"]= set_combine(sets.midcast.songenfeeb, {Range="Eminent Flute"})
	
	sets.midcast.songenfeeb["Pining Nocturne"]= set_combine(sets.midcast.songenfeeb, {Range="Eminent Flute"})
	
	sets.midcast.songenfeeb["Foe Lullaby"]= set_combine(sets.midcast.songenfeeb, {Range="Pan's Horn"})
	sets.midcast.songenfeeb["Foe Lullaby II"]= set_combine(sets.midcast.songenfeeb, {Range="Pan's Horn"})
	
	sets.midcast.songenfeeb["Horde Lullaby"]= set_combine(sets.midcast.songenfeeb, {Range="Pan's Horn"})
	sets.midcast.songenfeeb["Horde Lullaby II"]= set_combine(sets.midcast.songenfeeb, {Range="Pan's Horn"})
	
	sets.midcast.songenfeeb["Magic Finale"]= set_combine(sets.midcast.songenfeeb, {Range="Pan's Horn"})
	
	sets.midcast.cure={head={ name="Gende. Caubeen", augments={'Phys. dmg. taken -4%','"Cure" potency +5%',}},
    body={ name="Gendewitha Bliaut", augments={'Phys. dmg. taken -4%','"Cure" potency +5%',}},    
    feet={ name="Gende. Galoshes", augments={'Phys. dmg. taken -2%','"Cure" potency +1%',}},
	main="Legato Dagger", sub="Genbu's Shield", hands="Bokwus Gloves", legs="Nares Trews", neck="Aoidos' Matinee",
	waist="Cascade Belt", left_ear="Lifestorm Earring", right_ear="Loquac. Earring", left_ring="Aquasoul Ring", 
	right_ring="Aquasoul Ring", back="Solemnity Cape",}
	
	sets.midcast.enhancing={}
	
	sets.midcast.na={head={ name="Gende. Caubeen", augments={'Phys. dmg. taken -4%','"Cure" potency +5%',}},
	body={ name="Gendewitha Bliaut", augments={'Phys. dmg. taken -4%','"Cure" potency +5%',}},
	legs={ name="Gendewitha Spats", augments={'Phys. dmg. taken -3%','Song recast delay -2',}},
	feet={ name="Gende. Galoshes", augments={'Phys. dmg. taken -2%','"Cure" potency +1%',}},
	hands="Bokwus Gloves", neck="Aoidos' Matinee", waist="Cascade Belt", left_ear="Lifestorm Earring", right_ear="Loquac. Earring",
	left_ring="Ephedra Ring", right_ring="Aquasoul Ring", back="Swith Cape",}
	
	sets.idle={}
	
	sets.idle.standard={main="Legato Dagger", sub="Genbu's Shield", 
	head={ name="Wivre Hairpin", augments={'"Refresh"+1','Water resistance+6','Dark resistance+5',}},
    body={ name="Gendewitha Bliaut", augments={'Phys. dmg. taken -4%','"Cure" potency +5%',}},
	hands="Serpentes Cuffs", legs="Nares Trews", feet="Aoidos' Cothrn. +2", neck="Loricate Torque +1",
	waist="Cascade Belt", left_ear="Ethereal Earring", right_ear="Aoidos' Earring", 
	left_ring={ name="Vocane Ring", augments={'Phys. dmg. taken -3%','Magic dmg. taken -5%',}},
    right_ring="Shadow Ring", back="Shadow Mantle",}
	
	sets.idle.refresh={main="Legato Dagger", sub="Genbu's Shield", 
	head={ name="Wivre Hairpin", augments={'"Refresh"+1','Water resistance+6','Dark resistance+5',}},
    body={ name="Gendewitha Bliaut", augments={'Phys. dmg. taken -4%','"Cure" potency +5%',}},
	hands="Serpentes Cuffs", legs="Nares Trews", feet="Serpentes Sabots", neck="Loricate Torque +1",
	waist="Cascade Belt", left_ear="Ethereal Earring", right_ear="Aoidos' Earring", 
	left_ring={ name="Vocane Ring", augments={'Phys. dmg. taken -3%','Magic dmg. taken -5%',}},
    right_ring="Shadow Ring", back="Shadow Mantle",}
	
	sets.idle.pdt={head={ name="Gende. Caubeen", augments={'Phys. dmg. taken -4%','"Cure" potency +5%',}},
	body={ name="Gendewitha Bliaut", augments={'Phys. dmg. taken -4%','"Cure" potency +5%',}},
	hands={ name="Gendewitha Gages", augments={'Phys. dmg. taken -1%','Song recast delay -3',}},
	legs={ name="Gendewitha Spats", augments={'Phys. dmg. taken -3%','Song recast delay -2',}},
	feet={ name="Gende. Galoshes", augments={'Phys. dmg. taken -2%','"Cure" potency +1%',}},
	main="Earth Staff", neck="Loricate Torque +1", waist="Cascade Belt", left_ear="Ethereal Earring", right_ear="Aoidos' Earring",
	left_ring={ name="Vocane Ring", augments={'Phys. dmg. taken -3%','Magic dmg. taken -5%',}},
    right_ring="Vocane Ring", back="Repulse Mantle",}
	
	sets.idle.mdt= set_combine(sets.idle.pdt, {main="Legato Dagger", sub="Genbu's Shield",})
	
	sets.tp={}
	
	sets.tp.dd={head="Aya. Zucchetto +1", body="Ayanmo Corazza +1", hands="Aya. Manopolas +1", legs="Querkening Brais",
	feet="Aya. Gambieras +1", neck="Lissome Necklace", waist="Windbuffet Belt +1", left_ear="Suppanomimi", right_ear="Telos Earring",
	left_ring="Petrov Ring", right_ring="Hetairoi Ring", back="Letalis Mantle",}
	
	sets.tp.hybrid={head={ name="Gende. Caubeen", augments={'Phys. dmg. taken -4%','"Cure" potency +5%',}},
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
		equip(sets.precast.ws)
	end
end

function midcast(spell)
	if spell.prefix=="/song" then
		if spell.target.type=="MONSTER" then
			equip(sets.midcast.songenfeeb[spell.english])			
		else
			if fakes=="fakes" then
				equip(sets.midcast.songbuff.fakes)
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
end

function aftercast(spell)
	if player.status=="Engaged" then
		equip(sets.tp[TPType])
	else
		equip(sets.idle[IdleType])
	end
end

function status_change(new,old)
	if new=="Engaged" then
		equip(sets.tp[TPType])
	else
		equip(sets.idle[IdleType])
	end
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
	end
end