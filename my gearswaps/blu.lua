function get_sets()
	windower.send_command('bind @F11 gs c weaponrytoggle')
	windower.send_command('bind @F12 gs c wstoggle')
	windower.send_command('bind @F1 gs c dd')
	windower.send_command('bind @F2 gs c hybrid')
	windower.send_command('bind @F3 gs c pdt')
	windower.send_command('bind @F4 gs c mdt')
	windower.send_command('bind #F1 gs c accuracytoggle')
	windower.send_command('bind #F4 gs c idletoggle')
	windower.send_command('bind #g gs c learningmode')
	windower.send_command('bind #2 gs equip sets.pdt')
	windower.send_command('bind #8 gs equip sets.mdt')
	windower.send_command('bind #t gs c tpset')
	windower.send_command('bind #4 gs c idleset')
	windower.send_command('bind #h gs c hybridset')
	
	windower.send_command('input /macro book 2;input /macro set 5')
--variables
	TPType="DD"
	wsacc="Damage"
	bluelearning="off"
	
	sets.bluelearning=T{}
	sets.TPType=T{}
	sets.wsacc=T{}
--variables

--indexes
	sets.idle={}
	sets.idle.index={'refresh','regen','dt'}
	idle_ind=1
	
	sets.tp={}
	sets.tp.buffed={}
	sets.tp.buffed.index={'accI','accII','accIII','accIV','accV','accVI','accVII','accVIII','accIX','accX','accXI'}
	buffed_ind=1
	
	sets.tp.unbuffed={}
	sets.tp.unbuffed.index={'accI','accII','accIII','accIV','accV','accVI','accVII','accVIII','accIX','accX','accXI'}
	unbuffed_ind=1
	
	sets.hybrid={}
	sets.hybrid.index={'accI','accII','accIII'}
	hybrid_ind=1
--indexes

--basesets
	sets.weaponry={}
	sets.precast={}
	sets.midcast={}
	sets.precast.ma={}
	sets.precast.ja={}
	sets.ws={}
	sets.ws.damage={}
	sets.ws.accuracy={}
--basesets

--weaponry
	sets.weaponry.index={'buraana','buragenbu','bolebura','bolebura','boletax','bolegenbu'}
	weaponry_ind=1
	sets.weaponry.buraana={main="Buramenk'ah", sub="Anahera Saber",}
	sets.weaponry.buragenbu={main="Buramenk'ah", sub="Genbu's Shield",}
	sets.weaponry.bolebura={main="Bolelabunga", sub="Buramenk'ah"}
	sets.weaponry.boletax={main="Bolelabunga", sub="Tamaxchi"}
	sets.weaponry.bolegenbu={main="Bolelabunga", sub="Genbu's Shield",}
--weaponry

--precast sets
	--magic sets
	sets.precast.fc={head="Haruspex Hat", body="Vanir Cotehardie", hands="Thaumas Gloves", legs="Enif Cosciales", feet="Chelona Boots", 
	neck={ name="Jeweled Collar", augments={'"Fast Cast"+2','MND+2','MP recovered while healing +2',}}, 
	waist="Siegel Sash", left_ear="Loquac. Earring", right_ear="Ethereal Earring", left_ring="Prolix Ring",
	right_ring="Veneficium Ring", back="Swith Cape",}
	
	sets.precast.blu= set_combine(sets.precast.fc, {body="Mavi Mintan +2",})
	
	sets.precast.nin= set_combine(sets.precast.fc, {neck="Magoraga Beads"})
	--magic sets
	
	--sword weaponskill sets
	sets.ws.damage["Fast Blade"]={ammo="Cheruski needle", head="Uk'uxkaj cap", neck="Asperity Necklace",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1",
	ring1="Epona's ring", ring2="Rajas ring", back="Atheling mantle", waist="Windbuffet Belt +1",
	legs="Manibozho brais", feet="Qaaxo Leggings"}
	
	sets.ws.accuracy["Fast Blade"]={ammo="Honed Tathlum", head="Whirlpool Mask", neck="Asperity Necklace",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1",
	ring1="Epona's ring", ring2="Rajas ring", back="Letalis mantle", waist="Windbuffet Belt +1",
	legs="Manibozho brais", feet="Qaaxo Leggings"}
	
	sets.ws.damage["Burning Blade"]={ammo="Mavi Tathlum", head="Hagondes Hat +1", neck="Eddy necklace", 
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes cuffs",
	ring1="Archon ring", ring2="Diamond ring", back="Refraction Cape",waist="Caudata belt", 
	legs="Hagondes pants",feet="Hagondes sabots"}
	
	sets.ws.accuracy["Burning Blade"]={ammo="Mavi Tathlum", head="Hagondes Hat +1", neck="Eddy necklace", 
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes cuffs",
	ring1="Archon ring", ring2="Diamond ring", back="Refraction Cape",waist="Caudata belt", 
	legs="Hagondes pants",feet="Hagondes sabots"}
	
	sets.ws.damage["Red Lotus Blade"]={ammo="Mavi Tathlum", head="Hagondes Hat +1", neck="Eddy necklace", 
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes cuffs",
	ring1="Archon ring", ring2="Diamond ring", back="Refraction Cape",waist="Caudata belt", 
	legs="Hagondes pants",feet="Hagondes sabots"}
	
	sets.ws.accuracy["Red Lotus Blade"]={ammo="Mavi Tathlum", head="Hagondes Hat +1", neck="Eddy necklace", 
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes cuffs",
	ring1="Archon ring", ring2="Diamond ring", back="Refraction Cape",waist="Caudata belt", 
	legs="Hagondes pants",feet="Hagondes sabots"}
	
	sets.ws.damage["Flat Blade"]={ammo="Honed Tathlum", head="Whirlpool Mask", neck="Asperity Necklace",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1",
	ring1="Epona's ring", ring2="Rajas ring", back="Letalis mantle", waist="Windbuffet Belt +1",
	legs="Manibozho brais", feet="Qaaxo Leggings"}
	
	sets.ws.accuracy["Flat Blade"]={ammo="Honed Tathlum", head="Whirlpool Mask", neck="Asperity Necklace",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1",
	ring1="Epona's ring", ring2="Rajas ring", back="Letalis mantle", waist="Windbuffet Belt +1",
	legs="Manibozho brais", feet="Qaaxo Leggings"}
	
	sets.ws.damage["Shining Blade"]={ammo="Mavi Tathlum", head="Hagondes Hat +1", neck="Eddy necklace", 
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes cuffs",
	ring1="Archon ring", ring2="Diamond ring", back="Refraction Cape",waist="Caudata belt", 
	legs="Hagondes pants",feet="Hagondes sabots"}
	
	sets.ws.accuracy["Shining Blade"]={ammo="Mavi Tathlum", head="Hagondes Hat +1", neck="Eddy necklace", 
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes cuffs",
	ring1="Archon ring", ring2="Diamond ring", back="Refraction Cape",waist="Caudata belt", 
	legs="Hagondes pants",feet="Hagondes sabots"}
	
	sets.ws.damage["Seraph Blade"]={ammo="Mavi Tathlum", head="Hagondes Hat +1", neck="Eddy necklace", 
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes cuffs",
	ring1="Archon ring", ring2="Diamond ring", back="Refraction Cape",waist="Caudata belt", 
	legs="Hagondes pants",feet="Hagondes sabots"}
	
	sets.ws.accuracy["Seraph Blade"]={ammo="Mavi Tathlum", head="Hagondes Hat +1", neck="Eddy necklace", 
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes cuffs",
	ring1="Archon ring", ring2="Diamond ring", back="Refraction Cape",waist="Caudata belt", 
	legs="Hagondes pants",feet="Hagondes sabots"}
	
	sets.ws.damage["Circle Blade"]={ammo="Cheruski needle", head="Uk'uxkaj cap", neck="Asperity Necklace",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1",
	ring1="Epona's ring", ring2="Rajas ring", back="Atheling mantle", waist="Windbuffet Belt +1",
	legs="Manibozho brais", feet="Qaaxo Leggings"}
	
	sets.ws.accuracy["Circle Blade"]={ammo="Honed Tathlum", head="Whirlpool Mask", neck="Asperity Necklace",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1",
	ring1="Epona's ring", ring2="Rajas ring", back="Letalis mantle", waist="Windbuffet Belt +1",
	legs="Manibozho brais", feet="Qaaxo Leggings"}
	
	sets.ws.damage["Spirits Within"]={}
	
	sets.ws.accuracy["Spirits Within"]={}
	
	sets.ws.damage["Vorpal Blade"]={ammo="Honed Tathlum", head="Whirlpool Mask", neck="Asperity Necklace",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1",
	ring1="Epona's ring", ring2="Rajas ring", back="Letalis mantle", waist="Windbuffet Belt +1",
	legs="Manibozho brais", feet="Qaaxo Leggings"}
	
	sets.ws.accuracy["Vorpal Blade"]={ammo="Honed Tathlum", head="Whirlpool Mask", neck="Asperity Necklace",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1",
	ring1="Epona's ring", ring2="Rajas ring", back="Letalis mantle", waist="Windbuffet Belt +1",
	legs="Manibozho brais", feet="Qaaxo Leggings"}
	
	sets.ws.damage["Savage Blade"]={}
	
	sets.ws.accuracy["Savage Blade"]={}
	
	sets.ws.damage["Expiation"]={ammo="Cheruski needle", head="Uk'uxkaj cap", neck="Shadow Gorget",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1",
	ring1="Epona's ring", ring2="Rajas ring", back="Atheling Mantle", waist="Shadow Belt",
	legs="Manibozho brais", feet="Qaaxo Leggings"}
	
	sets.ws.accuracy["Expiation"]={ammo="Honed Tathlum", head="Uk'uxkaj cap", neck="Shadow Gorget",
	ear1="Bladeborn Earring", ear2="Steelflash earring", body="Assim. Jubbah +1",hands="Assim. Bazu. +1",
	ring1="Epona's ring", ring2="Mars's ring", back="Letalis Mantle", waist="Shadow Belt",
	legs="Manibozho brais", feet="Qaaxo Leggings"}
	
	sets.ws.damage["Sanguine Blade"]={ammo="Mavi Tathlum", head="Hagondes Hat +1", neck="Eddy necklace", 
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes cuffs",
	ring1="Archon ring", ring2="Diamond ring", back="Refraction Cape",waist="Caudata Belt", 
	legs="Hagondes pants",feet="Hagondes sabots"}
	
	sets.ws.accuracy["Sanguine Blade"]={ammo="Mavi Tathlum", head="Hagondes Hat +1", neck="Eddy necklace", 
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes cuffs",
	ring1="Archon ring", ring2="Acumen ring", back="Refraction Cape",waist="Caudata Belt", 
	legs="Hagondes pants",feet="Hagondes sabots"}
	
	sets.ws.damage["Chant du Cygne"]={ammo="Cheruski needle", head="Uk'uxkaj cap", neck="Light Gorget",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1",
	ring1="Epona's ring", ring2="Ramuh Ring", back="Rancorous mantle", waist="Windbuffet Belt +1",
	legs="Manibozho brais", feet="Qaaxo Leggings"}
	
	sets.ws.accuracy["Chant du Cygne"]={ammo="Honed Tathlum", head="Uk'uxkaj cap", neck="Light Gorget",
	ear1="Bladeborn Earring", ear2="Steelflash earring", body="Assim. Jubbah +1",hands="Assim. Bazu. +1",
	ring1="Rajas ring", ring2="Ramuh Ring", back="Rancorous mantle", waist="Light belt",
	legs="Manibozho brais", feet="Qaaxo Leggings"}
	
	sets.ws.damage["Requiescat"]={ammo="Cheruski Needle", head="Whirlpool mask", neck="Shadow Gorget", ear1="Brutal Earring",
	ear2="Moonshade earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1", ring1="Epona's ring", ring2="Levia. Ring",
	back="Atheling mantle", waist="Shadow belt",legs="Quiahuiz trousers", feet="Qaaxo Leggings"}
	
	sets.ws.accuracy["Requiescat"]={ammo="Honed Tathlum", head="Whirlpool mask", neck="Shadow Gorget", ear1="Bladeborn Earring",
	ear2="Steelflash earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1", ring1="Mars's ring", ring2="Levia. Ring",
	back="Atheling mantle", waist="Shadow belt",legs="Quiahuiz trousers", feet="Qaaxo Leggings"}
	
	--sword weaponskill sets
	
	--club weaponskill sets
	sets.ws.damage["Shining Strike"]={}
	
	sets.ws.accuracy["Shining Strike"]={}
	
	sets.ws.damage["Seraph Strike"]={}
	
	sets.ws.accuracy["Seraph Strike"]={}
	
	sets.ws.damage["Brainshaker"]={}
	
	sets.ws.accuracy["Brainshaker"]={}
	
	sets.ws.damage["Starlight"]={}
	
	sets.ws.accuracy["Starlight"]={}
	
	sets.ws.damage["Moonlight"]={}
	
	sets.ws.accuracy["Moonlight"]={}
	
	sets.ws.damage["Skullbreaker"]={}
	
	sets.ws.accuracy["Skullbreaker"]={}
	
	sets.ws.damage["True Strike"]={}
	
	sets.ws.accuracy["True Strike"]={}
	
	sets.ws.damage["Judgement"]={}
	
	sets.ws.accuracy["Judgement"]={}
	
	sets.ws.damage["Black Halo"]={}
	
	sets.ws.accuracy["Black Halo"]={}
	
	sets.ws.damage["Flash Nova"]={}
	
	sets.ws.accuracy["Flash Nova"]={}
	--club weaponskill sets
	
	--Job Ability Sets
	
	sets.JA = {}
	
	sets.JA.ChainAffinity = {feet="Assim. Charuqs +1"}
	
	sets.JA.BurstAffinity = {feet="Mavi Basmak +2"}
	
	sets.JA.Efflux = {legs="Mavi Tayt +2"}
	
	sets.JA.AzureLore = {hands="Luhlaza Bazubands"}
	
	sets.JA.Diffusion = {feet="Luhlaza Charuqs"}
	
	--Job Ability Sets
--precast sets

--midcast sets	
	--Blue Magic Sets--
	sets.BlueMagic = {}
	
	sets.BlueMagic.STR = {ammo="Mavi Tathlum",
			      head="Luhlaza Keffiyeh",neck="Mavi Scarf",ear1="Psystorm earring",ear2="Lifestorm earring",
			      body="Assim. Jubbah +1",hands="Assim. Bazu. +1",ring1="Ifrit Ring",ring2="Rajas ring",
			      back="Cornflower cape",waist="Wanion belt",legs="Quiahuiz trousers",feet="Luhlaza Charuqs"}
						  
	sets.BlueMagic.STRDEX = {ammo="Cheruski needle",
				 head="Luhlaza Keffiyeh",neck="Mavi Scarf",ear1="Psystorm earring",ear2="Lifestorm earring",
				 body="Assim. Jubbah +1",hands="Assim. Bazu. +1",ring1="Ifrit Ring",ring2="Rajas ring",
				 back="Cornflower cape",waist="Wanion belt",legs="Manibozho brais",feet="Luhlaza Charuqs"}
							
	sets.BlueMagic.STRVIT = {ammo="Mavi Tathlum",
				 head="Luhlaza Keffiyeh",neck="Mavi Scarf",ear1="Psystorm earring",ear2="Lifestorm earring",
				 body="Assim. Jubbah +1",hands="Assim. Bazu. +1",ring1="Ifrit Ring",ring2="Rajas ring",
				 back="Cornflower cape",waist="Caudata belt",legs="Quiahuiz trousers",feet="Luhlaza Charuqs"}
							 
	sets.BlueMagic.STRMND = {ammo="Mavi Tathlum",
				 head="Luhlaza Keffiyeh",neck="Mavi Scarf",ear1="Psystorm earring",ear2="Lifestorm earring",
				 body="Assim. Jubbah +1",hands="Assim. Bazu. +1",ring1="Levia. Ring",ring2="Rajas Ring",
				 back="Cornflower cape",waist="Aswang sash",legs="Quiahuiz trousers",feet="Luhlaza Charuqs"}
								
	sets.BlueMagic.AGI = {ammo="Mavi Tathlum",
		              head="Luhlaza Keffiyeh",neck="Mavi Scarf",ear1="Psystorm earring",ear2="Lifestorm earring",
			      body="Assim. Jubbah +1",hands="Iuitl wristbands",ring1="Ifrit Ring",ring2="Rajas ring",
		              back="Cornflower cape",waist="Aswang Sash",legs="Quiahuiz trousers",feet="Luhlaza Charuqs"}
						  
	sets.BlueMagic.INT = {ammo="Mavi Tathlum",
			      head="Hagondes Hat +1",neck="Eddy necklace",ear1="Crematio earring",ear2="Friomisi earring",
			      body="Hagondes Coat +1",hands="Mv. Bazubands +2",ring1="Acumen ring",ring2="Diamond ring",
			      back="Cornflower cape",waist="Aswang Sash",legs="Hagondes pants",feet="Mavi Basmak +2"}
						  
	sets.BlueMagic.Cures = {ammo="Mavi Tathlum",
			        head="Uk'uxkaj cap",neck="Mavi Scarf",ear1="Loquac. Earring",ear2="Novia earring",
			        body="Assim. Jubbah +1",hands="Buremte gloves",ring1="Levia. Ring",ring2="Sirona's ring",
			        back="Oretania's cape",waist="Chuq'aba Belt",legs="Quiahuiz trousers",feet="Assim. Charuqs +1"}
							
	sets.BlueMagic.Stun = {ammo="Mavi Tathlum",
			       head="Assim. Keffiyeh +1",neck="Eddy necklace",ear1="Loquac. Earring",
			       body="Assim. Jubbah +1",hands="Mv. Bazubands +2",ring1="Prolix ring",ring2="Sangoma ring",
			       back="Cornflower cape",waist="Hurch'lan Sash",legs="Mavi Tayt +2",feet="Luhlaza Charuqs"}
						   
	sets.BlueMagic.HeavyStrike = {ammo="Honed Tathlum",
			              head="Whirlpool mask",neck="Mavi Scarf",ear1="Steelflash Earring",ear2="Heartseeker earring",
			              body="Assim. Jubbah +1",hands="Buremte gloves",ring1="Ifrit Ring",ring2="Rajas ring",
			              back="Cornflower cape",waist="Dynamic belt +1",legs="Manibozho brais",feet="Assim. Charuqs +1"}
								  
	sets.BlueMagic.ChargedWhisker = {ammo="Mavi Tathlum",
			                 head="Uk'uxkaj cap",neck="Eddy necklace",ear1="Crematio earring",ear2="Friomisi earring",
			                 body="Hagondes Coat +1",hands="Assim. Bazu. +1",ring1="Diamond ring",ring2="Rajas ring",
				         back="Cornflower cape",waist="Aswang Sash",legs="Hagondes pants",feet="Mavi Basmak +2"} 
	
	sets.BlueMagic.WhiteWind = {ammo="Mavi Tathlum",
				    head="Luhlaza Keffiyeh",neck="Jeweled collar",ear1="Ethereal earring",ear2="Loquac. Earring",
				    body="Assim. Jubbah +1",hands="Weath. Cuffs +1",
				    back="Oretania's cape",legs="Enif Cosciales",feet="Assim. Charuqs +1"}
									 
	sets.BlueMagic.MagicAccuracy = {ammo="Mavi Tathlum",
				        head="Assim. Keffiyeh +1",neck="Eddy necklace",ear1="Psystorm earring",ear2="Lifestorm earring",
				        body="Assim. Jubbah +1",hands="Hagondes cuffs",ring1="Strendu Ring",ring2="Sangoma ring",
				        back="Cornflower cape",waist="Aswang Sash",legs="Mavi Tayt +2",feet="Luhlaza Charuqs"} 
									 
	sets.BlueMagic.Skill = {ammo="Mavi Tathlum",
				head="Luhlaza Keffiyeh",neck="Jeweled collar",ear1="Loquac. Earring",
				body="Assim. Jubbah +1",hands="Mv. Bazubands +2",ring1="Prolix ring",
				back="Cornflower cape",waist="Hurch'lan Sash",legs="Mavi Tayt +2",feet="Luhlaza Charuqs"}
							
	sets.BlueMagic.SkillRecast = {ammo="Mavi Tathlum",
				      head="Luhlaza Keffiyeh",neck="Jeweled collar",ear1="Loquac. Earring",
				      body="Assim. Jubbah +1",hands="Mv. Bazubands +2",ring1="Prolix ring",
				      back="Swith cape",waist="Hurch'lan Sash",legs="Mavi Tayt +2",feet="Luhlaza Charuqs"}
	--Blue Magic Sets
--midcast sets
	
	
--aftercast sets
	--tp sets	
	sets.tp.buffed.accI={ammo="Vanir Battery", head="Iuitl Headgear +1",
    body="Thaumas Coat", hands={ name="Qaaxo Mitaines", augments={'Attack+15','Evasion+15','"Dbl.Atk."+2',}},
	legs={ name="Qaaxo Tights", augments={'Attack+15','Evasion+15','"Dbl.Atk."+2',}}, feet={ name="Manibozho boots", augments={'Attack+15','Accuracy+10','STR+10',}},
	neck="Asperity Necklace", waist="Windbuffet Belt +1", left_ear="Suppanomimi", right_ear="Brutal Earring",
	left_ring="Epona's Ring", right_ring="Rajas Ring", back="Atheling Mantle",}
	
	sets.tp.buffed.accII= set_combine(sets.tp.buffed.accI, {ammo="Honed Tathlum",})
	
	sets.tp.buffed.accIII= set_combine(sets.tp.buffed.accII, {back="Letalis Mantle",})
	
	sets.tp.buffed.accIV= set_combine(sets.tp.buffed.accIII, {waist="Hurch'lan Sash",})
	
	sets.tp.buffed.accV= set_combine(sets.tp.buffed.accIV, {right_ring="Mars's Ring",})
	
	sets.tp.buffed.accVI= set_combine(sets.tp.buffed.accV, {neck="Iqabi Necklace",})
	
	sets.tp.buffed.accVII= set_combine(sets.tp.buffed.accVI, {left_ear="Heartseeker Earring", right_ear="Dudgeon Earring",})
	
	sets.tp.buffed.accVIII= set_combine(sets.tp.buffed.accVII, {legs="Manibozho Brais"})
	
	sets.tp.buffed.accIX= set_combine(sets.tp.buffed.accVIII, {head="Whirlpool Mask",})
	
	sets.tp.buffed.accX= set_combine(sets.tp.buffed.accIX, {left_ring="Patricius Ring",})
	
	sets.tp.buffed.accXI= set_combine(sets.tp.buffed.accX, {body="Mekosu. Harness",})
	
	sets.tp.unbuffed.accI= set_combine(sets.tp.buffed.accI, {left_ear="Heartseeker Earring", right_ear="Dudgeon Earring",})
	
	sets.tp.unbuffed.accII= set_combine(sets.tp.unbuffed.accI, {ammo="Honed Tathlum",})
	
	sets.tp.unbuffed.accIII= set_combine(sets.tp.unbuffed.accII, {back="Letalis Mantle",})
	
	sets.tp.unbuffed.accIV= set_combine(sets.tp.unbuffed.accIII, {waist="Hurch'lan Sash",})
	
	sets.tp.unbuffed.accV= set_combine(sets.tp.buffed.accIV, {right_ring="Mars's Ring",})
	
	sets.tp.unbuffed.accVI= set_combine(sets.tp.unbuffed.accV, {neck="Iqabi Necklace",})
	
	sets.tp.unbuffed.accVII= set_combine(sets.tp.unbuffed.accVI, {legs="Manibozho Brais"})
	
	sets.tp.unbuffed.accVIII= set_combine(sets.tp.unbuffed.accVII, {head="Whirlpool Mask",})
	
	sets.tp.unbuffed.accIX= set_combine(sets.tp.unbuffed.accVIII, {left_ring="Patricius Ring",})
	
	sets.tp.unbuffed.accX= set_combine(sets.tp.unbuffed.accIX, {body="Manibozho Jerkin",})
	
	sets.tp.unbuffed.accXI= sets.tp.unbuffed.accX
	
	sets.learning={main="Nmd. Moogle Rod", sub="Genbu's Shield", ammo="Mavi Tathlum",
	head={ name="Luhlaza Keffiyeh", augments={'Enhances "Convergence" effect',}},
	body="Assim. Jubbah +1", hands="Assim. Bazu. +1", legs="Mavi Tayt +2", feet="Assim. Charuqs +1",
	neck="Mavi Scarf", waist="Windbuffet Belt +1", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
	left_ring="Epona's Ring", right_ring="Rajas Ring",
	back={ name="Cornflower Cape", augments={'MP+19','DEX+1','Accuracy+1','Blue Magic skill +7',}},}
	--tp sets
	
	--idle sets
	sets.idle.refresh={ammo="Demonry Stone", head="Wivre Hairpin", body="Mekosu. Harness", hands="Serpentes Cuffs",
	legs="Blood Cuisses", feet="Serpentes Sabots", neck="Twilight Torque", waist="Flume Belt", left_ear="Sanare Earring",
    right_ear="Ethereal Earring", left_ring="Shadow Ring", right_ring="Sheltered Ring", back="Shadow Mantle",}
	
	sets.idle.regen= set_combine(sets.idle.refresh, {head="Oce. Headpiece +1", left_ring="Paguroidea Ring",})
	
	sets.idle.dt= set_combine(sets.idle.refresh, {head="Iuitl Headgear +1", hands="Umuthi Gloves", left_ring="Defending Ring", right_ring="Dark Ring",})
	--idle sets
	
	--dt sets
	sets.pdt= set_combine(sets.idle.dt, {body="Iuitl Vest +1", back="Mollusca Mantle", legs="Osmium Cuisses",})
	sets.mdt= set_combine(sets.pdt, {head="Hagondes Hat +1", body="Vanir Cotehardie", hands="Qaaxo Mitaines", right_ring="Shadow Ring", feet="Qaaxo Leggings",})
--aftercast sets
end

function precast(spell)
	if spell.prefix=="/magic" then	
		if spell.skill=="Blue Magic" then
			equip(sets.precast.blu)
		elseif spell.skill=="Ninjutsu" then
			equip(sets.precast.nin)
		else
			equip(sets.precast.fc)
		end
	end
	if spell.prefix=="/weaponskill" then
		if wsacc=="Damage" then
			equip(sets.ws.damage[spell.english])
		elseif wsacc=="Accuracy" then
			equip(sets.ws.accuracy[spell.english])
		end
	end
	if spell.prefix=="/jobability" then
		equip(sets.JA[spell.english])
	end
end

function midcast(spell)
	if spell.english == 'Vertical Cleave' or spell.english == 'Death Scissors' or spell.english == 'Empty Thrash' or spell.english == 'Dimensional Death' or spell.english == 'Quadrastrike' or spell.english == 'Bloodrake' then
		equip(sets.BlueMagic.STR)
		if buffactive['Chain Affinity'] then
			equip(sets.JA.ChainAffinity)
		end
		if buffactive['Efflux'] then
			equip(sets.JA.Efflux)
		end
	end
		
	if spell.english == 'Disseverment' or spell.english == 'Hysteric Barrage' or spell.english == 'Frenetic Rip' or spell.english == 'Seedspray' or spell.english == 'Vanity Dive' or spell.english == 'Goblin Rush' or spell.english == 'Paralyzing Triad' then
		equip(sets.BlueMagic.STRDEX)
		if buffactive['Chain Affinity'] then
			equip(sets.JA.ChainAffinity)
		end
		if buffactive['Efflux'] then
			equip(sets.JA.Efflux)
		end
	end
	
	if spell.english == 'Quad. Continuum' or spell.english == 'Delta Thrust' or spell.english == 'Cannonball' or spell.english == 'Glutinous Dart' then
		equip(sets.BlueMagic.STRVIT)
		if buffactive['Chain Affinity'] then
			equip(sets.JA.ChainAffinity)
		end
		if buffactive['Efflux'] then
			equip(sets.JA.Efflux)
		end
	end
	
	if spell.english == 'Whirl of Rage' then
		equip(sets.BlueMagic.STRMND)
		if buffactive['Chain Affinity'] then
			equip(sets.JA.ChainAffinity)
		end
		if buffactive['Efflux'] then
			equip(sets.JA.Efflux)
		end
	end
	
	if spell.english == 'Benthic Typhoon' or spell.english == 'Final Sting' or spell.english == 'Spiral Spin' then
		equip(sets.BlueMagic.AGI)
		if buffactive['Chain Affinity'] then
			equip(sets.JA.ChainAffinity)
		end
		if buffactive['Efflux'] then
			equip(sets.JA.Efflux)
		end
	end
	
	if spell.english == 'Gates of Hades' or spell.english == 'Leafstorm' or spell.english == 'Firespit' or spell.english == 'Acrid Stream' or spell.english == 'Regurgitation' or spell.english == 'Corrosive Ooze' or spell.english == 'Thermal Pulse' or spell.english == 'Magic Hammer' or spell.english == 'Evryone. Grudge' or spell.english == 'Water Bomb' or spell.english == 'Dark Orb' or spell.english == 'Thunderbolt' or spell.english == 'Tem. Upheaval' or spell.english == 'Embalming Earth' or spell.english == 'Foul Waters' or spell.english == 'Rending Deluge' or spell.english == 'Droning Whirlwind' then
		equip(sets.BlueMagic.INT)
		if buffactive['Burst Affinity'] then
			equip(sets.JA.BurstAffinity)
		end
	end
	
	if spell.english == 'Magic Fruit' or spell.english == 'Plenilune Embrace' or spell.english == 'Wild Carrot' or spell.english == 'Pollen' or spell.english == 'Cure IV' then
		equip(sets.BlueMagic.Cures)
	end
	
	if spell.english == 'White Wind' then
		equip(sets.BlueMagic.WhiteWind)
	end
	
	if spell.english == 'Head Butt' or spell.english == 'Sudden Lunge' or spell.english == 'Blitzstrahl' then
		equip(sets.BlueMagic.Stun)
	end
	
	if spell.english == 'Heavy Strike' then
		equip(sets.BlueMagic.HeavyStrike)
	end
	
	if spell.english == 'Charged Whisker' then
		equip(sets.BlueMagic.ChargedWhisker)
		if buffactive['Burst Affinity'] then
			equip(sets.JA.BurstAffinity)
		end
	end
	
	if spell.english == 'Frightful Roar' or spell.english == 'Infrasonics' or spell.english == 'Barbed Crescent' or spell.english == 'Tourbillion' or spell.english == 'Cimicine Discharge' or spell.english == 'Sub-zero smash' or spell.english == 'Filamented Hold' or spell.english == 'Mind Blast' or spell.english == 'Sandspin' or spell.english == 'Hecatomb Wave' or spell.english == 'Cold Wave' or spell.english == 'Terror Touch' then
		equip(sets.BlueMagic.MagicAccuracy)
	end
	
	if spell.english == 'MP Drainkiss' or spell.english == 'Digest' or spell.english == 'Blood Saber' or spell.english == 'Blood Drain' or spell.english == 'Osmosis' or spell.english == 'Occultation' or spell.english == 'Magic Barrier' or spell.english == 'Diamondhide' or spell.english == 'Metallic Body' or spell.english == 'Retinal Glare' then
		equip(sets.BlueMagic.SkillRecast)
		if buffactive['Diffusion'] then
			equip(sets.JA.Diffusion)
		end
	end
	
	if spell.english == 'Cocoon' or spell.english == 'Harden Shell' or spell.english == 'Animating Wail' or spell.english == 'Battery Charge' or spell.english == 'Nat. Meditation' or spell.english == 'Carcharian Verve' or spell.english == 'O. Counterstance' or spell.english == 'Barrier Tusk' or spell.english == 'Saline Coat' or spell.english == 'Regeneration' then
		if buffactive['Diffusion'] then
			equip(sets.JA.Diffusion)
		end
	end
end

function aftercast(spell)
	if player.status=="Engaged" then
		if TPType=="DD" then
			if buffactive.march and (buffactive.march==2 or buffactive.embrava) then
				equip(sets.weaponry[sets.weaponry.index[weaponry_ind]])
				equip(sets.tp.buffed[sets.tp.buffed.index[buffed_ind]])			
			else
				equip(sets.weaponry[sets.weaponry.index[weaponry_ind]])
				equip(sets.tp.unbuffed[sets.tp.unbuffed.index[unbuffed_ind]])
			end
		elseif TPType=="Hybrid" then
			equip(sets.weaponry[sets.weaponry.index[weaponry_ind]])
			equip(sets.hybrid[sets.hybrid.index[hybrid_ind]])
		elseif TPType=="PDT" then
			equip(sets.weaponry[sets.weaponry.index[weaponry_ind]])
			equip(sets.pdt)
		elseif TPType=="MDT" then
			equip(sets.weaponry[sets.weaponry.index[weaponry_ind]])
			equip(sets.mdt)
		end
	else
		equip(sets.weaponry[sets.weaponry.index[weaponry_ind]])
		equip(sets.idle[sets.idle.index[idle_ind]])
	end
end

function status_change(new,old)
	if new=="Engaged" then
		if TPType=="DD" then
			if buffactive.march and (buffactive.march==2 or buffactive.embrava) then
				equip(sets.weaponry[sets.weaponry.index[weaponry_ind]])
				equip(sets.tp.buffed[sets.tp.buffed.index[buffed_ind]])			
			else
				equip(sets.weaponry[sets.weaponry.index[weaponry_ind]])
				equip(sets.tp.unbuffed[sets.tp.unbuffed.index[unbuffed_ind]])
			end
		elseif TPType=="Hybrid" then
			equip(sets.weaponry[sets.weaponry.index[weaponry_ind]])
			equip(sets.hybrid[sets.hybrid.index[hybrid_ind]])
		elseif TPType=="PDT" then
			equip(sets.weaponry[sets.weaponry.index[weaponry_ind]])
			equip(sets.pdt)
		elseif TPType=="MDT" then
			equip(sets.weaponry[sets.weaponry.index[weaponry_ind]])
			equip(sets.mdt)
		end
	else
		equip(sets.weaponry[sets.weaponry.index[weaponry_ind]])
		equip(sets.idle[sets.idle.index[idle_ind]])
	end
end

function self_command(command)
	if command=='dd' then
		TPType="DD"
		add_to_chat(206, 'DD MODE')
	end
	if command=='hybrid' then
		TPType="hybrid"
		add_to_chat(206, 'HYBRID MODE')
	end
	if command=='pdt' then
		TPType="pdt"
		add_to_chat(206, 'PDT MODE')
	end
	if command=='mdt' then
		TPType="mdt"
		add_to_chat(206, 'MDT MODE')
	end
	if command=='weaponrytoggle' then
		weaponry_ind = weaponry_ind +1
		if weaponry_ind > #sets.weaponry.index then
			weaponry_ind = 1
		end
		status_change(player.status)
		add_to_chat(206, 'WEAPONRY: '..sets.weaponry.index[weaponry_ind])
	end
	if command=='idletoggle' then
		idle_ind= idle_ind +1
		if idle_ind > #sets.idle.index then
			idle_ind=1
		end
		status_change(player.status)
		add_to_chat(206, 'IDLE: '..sets.idle.index[idle_ind])
	end
	if command=='accuracytoggle' then
		buffed_ind = buffed_ind +1
		unbuffed_ind = unbuffed_ind +1
		if buffed_ind > #sets.tp.buffed.index then
			buffed_ind=1
		end
		if unbuffed_ind > #sets.tp.unbuffed.index then
			unbuffed_ind=1
		end
		status_change(player.status)
		add_to_chat(206, 'TP ACCURACY: '..sets.tp.buffed.index[buffed_ind])
	end
	if command=='learningmode' then
		if bluelearning=="off" then
			bluelearning="on"
			equip(sets.learning)
			disable('main','sub','ammo','head','neck','body','hands','back','waist','legs','feet')
			add_to_chat(206, 'BLUE LEARNING MODE: ON')
		else
			bluelearning="off"
			enable('main','sub','ammo','head','neck','body','hands','back','waist','legs','feet')
			add_to_chat(206, 'BLUE LEARNING MODE: OFF')
			status_change(player.status)
		end
	end
	if command=='tpset' then
		if buffactive.march and (buffactive.march==2 or buffactive.embrava) then
			equip(sets.tp.buffed[sets.tp.buffed.index[buffed_ind]])			
		else
			equip(sets.tp.unbuffed[sets.tp.unbuffed.index[unbuffed_ind]])
		end
	end
	if command=='hybridset' then
		equip(sets.hybrid[sets.hybrid.index[hybrid_ind]])
	end
	if command=='idleset' then
		equip(sets.idle[sets.idle.index[idle_ind]])
	end
	if command=='wstoggle' then
		if wsacc=="Damage" then
			wsacc="Accuracy"
			add_to_chat(206, 'WS MODE: Accuracy')
		else
			wsacc="Damage"
			add_to_chat(206, 'WS MODE: Damage')
		end
	end
end