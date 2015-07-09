function get_sets()
	include('organizer-lib.lua')
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

--spell lists
	BluNukesINT=S{'Sandspin','Cursed Sphere','Blastbomb','Bomb Toss','Death Ray','Blitzstrahl','Ice Break','Maelstrom','Corrosive',
		'Firespit','Regurgitation','Leafstorm','Blazing Bound','Thermal Pulse','Charged Whisker',"Everyone's Grudge",'Water Bomb',
		'Dark Orb','Thunderbolt','Gates of Hades','Tempestuous Upheaval','Rending Deluge','Embalming Breath','Foul Waters',
		'Retinal Glare','Subduction','Rail Cannon','Diffusion Ray','Blinding Fulgor','Spectral Floe','Entomb','Silent Storm',
		'Searing Tempest','Anvil Lightning','Tenebral Crush','Scouring Spate','Palling Salvo'}
	
	BluCures=S{'Pollen','Wild Carrot','Magic Fruit','Plenilune Embrace','Restoral','Cure IV','Cure III','Cure2','Cure','Curaga','Curaga II'}
	
	BluNukesMND=S{}
	
	BluBA_INT=S{}
	
	BluBA_MND=S{}
	
	BluBA_VIT=S{}
	
	BluBA_CHR=S{}
	
	BluBA_STR=S{}
	
	BluBA_DEX=S{}
	
	Blu_INT=S{}
	
	Blu_MND=S{}
	
	Blu_VIT=S{}
	
	Blu_CHR=S{}
	
	Blu_STR=S{}
	
	Blu_DEX=S{}
	
	BluPhysical_STR=S{}
	
	BluPhysical_DEX=S{}
	
	BluPhysical_VIT=S{}
	
	BluPhysical_INT=S{}
	
	BluPhysical_MND=S{}
	
	BluPhysical_CHR=S{}
	
	BluCA_STR=S{}
	
	BluCA_DEX=S{}
	
	BluCA_VIT=S{}
	
	BluCA_INT=S{}
	
	BluCA_MND=S{}
	
	BluCA_CHR=S{}
	
--spell lists

--augmented gear
	taeonhead={ name="Taeon Chapeau", augments={'Accuracy+23','"Triple Atk."+2','STR+6 VIT+6',}}
	taeonbody={ name="Taeon Tabard", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','Weapon skill damage +3%',}}
	taeonhands={ name="Taeon Gloves", augments={'Attack+25','"Triple Atk."+2','Crit. hit damage +2%',}}
	taeonlegs={ name="Taeon Tights", augments={'Accuracy+17 Attack+17','"Triple Atk."+2','Crit. hit damage +2%',}}
	taeonfeet={ name="Taeon Boots", augments={'Accuracy+19 Attack+19','"Triple Atk."+2','Crit. hit damage +2%',}}
	
	heliosband={name="Helios Band", augments={'Mag. Acc. +15 "Mag.Atk.Bns."+15','Magic crit. hit rate +5','Magic burst mdg.+1%'}}
	heliosgloves={ name="Helios Gloves", augments={'"Fast Cast"+5','Mag. Evasion+10','INT+5 MND+5',}}
	heliosboots={ name="Helios Boots", augments={'"Mag. Atk. Bns. +25"','Magic Crit. Hit Rate +3','Mag. Crit. Hit Dmg. +10%',}}
	
	
	claid1={ name="Claidheamh Soluis", augments={'Accuracy+9 Attack+9','Dbl. Atk.+3','STR+13 VIT+13',}}
	claid2={ name="Claidheamh Soluis", augments={'Accuracy+10','Dbl. Atk.+2','STR+15 DEX+15',}}
	gab1={ name="Gabaxorea", augments={'MP+30','"Mag. Atk. Bns."+10','INT+7',}}
	gab2={ name="Gabaxorea", augments={'MP+30','"Mag. Atk. Bns."+10','INT+7',}}
--augmented gear

--indexes
	sets.idle={}
	sets.idle.index={'refresh','regen','dt'}
	idle_ind=1
	
	sets.tp={}
	sets.tp.buffed={}
	sets.tp.buffed.index={'accI','accII','accIII'}
	buffed_ind=1
	
	sets.tp.unbuffed={}
	sets.tp.unbuffed.index={'accI','accII','accIII'}
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
	sets.weaponry.index={'claids','gabax','claidgab'}
	weaponry_ind=1
	
	sets.weaponry.claids={main=claid1, sub=claid2,}
	sets.weaponry.gabax={main=gab1, sub=gab2,}
	sets.weaponry.claidgab={main=claid1, sub=gab2,}
--weaponry

--precast sets
	--magic sets
	sets.precast.fc={head="Haruspex Hat", body="Vanir Cotehardie", hands=heliosgloves, legs="Enif Cosciales", feet="Chelona Boots", 
	neck={ name="Jeweled Collar", augments={'"Fast Cast"+2','MND+2','MP recovered while healing +2',}}, 
	waist="Siegel Sash", left_ear="Loquac. Earring", right_ear="Ethereal Earring", left_ring="Prolix Ring",
	right_ring="Veneficium Ring", back="Swith Cape",}
	
	sets.precast.blu= set_combine(sets.precast.fc, {body="Hashishin Mintan +1",})
	
	sets.precast.nin= set_combine(sets.precast.fc, {neck="Magoraga Beads"})
	--magic sets
	
	--sword weaponskill sets
	sets.ws.damage["Fast Blade"]={ammo="Cheruski needle", head="Uk'uxkaj cap", neck="Asperity Necklace",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1",
	ring1="Epona's ring", ring2="Rajas ring", back="Bleating Mantle", waist="Windbuffet Belt +1",
	legs="Manibozho brais", feet="Qaaxo Leggings"}
	
	sets.ws.accuracy["Fast Blade"]={ammo="Honed Tathlum", head="Whirlpool Mask", neck="Asperity Necklace",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1",
	ring1="Epona's ring", ring2="Rajas ring", back="Letalis mantle", waist="Windbuffet Belt +1",
	legs="Manibozho brais", feet="Qaaxo Leggings"}
	
	sets.ws.damage["Burning Blade"]={ammo="Mavi Tathlum", head="Hagondes Hat +1", neck="Eddy necklace", 
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes Cuffs +1",
	ring1="Sangoma ring", ring2="Diamond ring", back="Refraction Cape",waist="Caudata belt", 
	legs="Hagondes Pants +1",feet="Hagondes sabots +1"}
	
	sets.ws.accuracy["Burning Blade"]={ammo="Mavi Tathlum", head="Hagondes Hat +1", neck="Eddy necklace", 
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes Cuffs +1",
	ring1="Sangoma ring", ring2="Diamond ring", back="Refraction Cape",waist="Caudata belt", 
	legs="Hagondes Pants +1",feet="Hagondes sabots +1"}
	
	sets.ws.damage["Red Lotus Blade"]={ammo="Mavi Tathlum", head="Hagondes Hat +1", neck="Eddy necklace", 
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes Cuffs +1",
	ring1="Sangoma ring", ring2="Diamond ring", back="Refraction Cape",waist="Caudata belt", 
	legs="Hagondes Pants +1",feet="Hagondes sabots +1"}
	
	sets.ws.accuracy["Red Lotus Blade"]={ammo="Mavi Tathlum", head="Hagondes Hat +1", neck="Eddy necklace", 
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes Cuffs +1",
	ring1="Sangoma ring", ring2="Diamond ring", back="Refraction Cape",waist="Caudata belt", 
	legs="Hagondes Pants +1",feet="Hagondes sabots +1"}
	
	sets.ws.damage["Flat Blade"]={ammo="Honed Tathlum", head="Whirlpool Mask", neck="Asperity Necklace",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1",
	ring1="Epona's ring", ring2="Rajas ring", back="Letalis mantle", waist="Windbuffet Belt +1",
	legs="Manibozho brais", feet="Qaaxo Leggings"}
	
	sets.ws.accuracy["Flat Blade"]={ammo="Honed Tathlum", head="Whirlpool Mask", neck="Asperity Necklace",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1",
	ring1="Epona's ring", ring2="Rajas ring", back="Letalis mantle", waist="Windbuffet Belt +1",
	legs="Manibozho brais", feet="Qaaxo Leggings"}
	
	sets.ws.damage["Shining Blade"]={ammo="Mavi Tathlum", head="Hagondes Hat +1", neck="Eddy necklace", 
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes Cuffs +1",
	ring1="Sangoma ring", ring2="Diamond ring", back="Refraction Cape",waist="Caudata belt", 
	legs="Hagondes Pants +1",feet="Hagondes sabots +1"}
	
	sets.ws.accuracy["Shining Blade"]={ammo="Mavi Tathlum", head="Hagondes Hat +1", neck="Eddy necklace", 
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes Cuffs +1",
	ring1="Sangoma ring", ring2="Diamond ring", back="Refraction Cape",waist="Caudata belt", 
	legs="Hagondes Pants +1",feet="Hagondes sabots +1"}
	
	sets.ws.damage["Seraph Blade"]={ammo="Mavi Tathlum", head="Hagondes Hat +1", neck="Eddy necklace", 
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes Cuffs +1",
	ring1="Sangoma ring", ring2="Diamond ring", back="Refraction Cape",waist="Caudata belt", 
	legs="Hagondes Pants +1",feet="Hagondes sabots +1"}
	
	sets.ws.accuracy["Seraph Blade"]={ammo="Mavi Tathlum", head="Hagondes Hat +1", neck="Eddy necklace", 
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes Cuffs +1",
	ring1="Sangoma ring", ring2="Diamond ring", back="Refraction Cape",waist="Caudata belt", 
	legs="Hagondes Pants +1",feet="Hagondes sabots +1"}
	
	sets.ws.damage["Circle Blade"]={ammo="Cheruski needle", head="Uk'uxkaj cap", neck="Asperity Necklace",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1",
	ring1="Epona's ring", ring2="Rajas ring", back="Bleating Mantle", waist="Windbuffet Belt +1",
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
	
	sets.ws.damage["Savage Blade"]={ammo="Cheruski Needle", head="Whirlpool mask", neck="Fotia Gorget", ear1="Brutal Earring",
	ear2="Moonshade earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1", ring1="Epona's ring", ring2="Levia. Ring",
	back="Bleating Mantle", waist="Fotia Belt",legs="Quiahuiz trousers", feet="Qaaxo Leggings"}
	
	sets.ws.accuracy["Savage Blade"]={ammo="Honed Tathlum", head="Whirlpool mask", neck="Fotia Gorget", ear1="Bladeborn Earring",
	ear2="Steelflash earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1", ring1="Mars's ring", ring2="Levia. Ring",
	back="Bleating Mantle", waist="Fotia Belt",legs="Quiahuiz trousers", feet="Qaaxo Leggings"}
	
	sets.ws.damage["Expiation"]={ammo="Cheruski needle", head="Uk'uxkaj cap", neck="Fotia Gorget",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1",
	ring1="Epona's ring", ring2="Rajas ring", back="Bleating Mantle", waist="Fotia Belt",
	legs="Manibozho brais", feet="Qaaxo Leggings"}
	
	sets.ws.accuracy["Expiation"]={ammo="Honed Tathlum", head="Uk'uxkaj cap", neck="Fotia Gorget",
	ear1="Bladeborn Earring", ear2="Steelflash earring", body="Assim. Jubbah +1",hands="Assim. Bazu. +1",
	ring1="Epona's ring", ring2="Mars's ring", back="Letalis Mantle", waist="Fotia Belt",
	legs="Manibozho brais", feet="Qaaxo Leggings"}
	
	sets.ws.damage["Sanguine Blade"]={ammo="Mavi Tathlum", head="Hagondes Hat +1", neck="Eddy necklace", 
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes Cuffs +1",
	ring1="Archon ring", ring2="Diamond ring", back="Refraction Cape",waist="Caudata Belt", 
	legs="Hagondes Pants +1",feet="Hagondes sabots +1"}
	
	sets.ws.accuracy["Sanguine Blade"]={ammo="Mavi Tathlum", head="Hagondes Hat +1", neck="Eddy necklace", 
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes Cuffs +1",
	ring1="Archon ring", ring2="Acumen ring", back="Refraction Cape",waist="Caudata Belt", 
	legs="Hagondes Pants +1",feet="Hagondes sabots +1"}
	
	sets.ws.damage["Chant du Cygne"]={ammo="Cheruski needle", head="Uk'uxkaj cap", neck="Fotia Gorget",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1",
	ring1="Epona's ring", ring2="Ramuh Ring", back="Rancorous mantle", waist="Windbuffet Belt +1",
	legs="Manibozho brais", feet="Qaaxo Leggings"}
	
	sets.ws.accuracy["Chant du Cygne"]={ammo="Honed Tathlum", head="Uk'uxkaj cap", neck="Fotia Gorget",
	ear1="Bladeborn Earring", ear2="Steelflash earring", body="Assim. Jubbah +1",hands="Assim. Bazu. +1",
	ring1="Rajas ring", ring2="Ramuh Ring", back="Rancorous mantle", waist="Fotia Belt",
	legs="Manibozho brais", feet="Qaaxo Leggings"}
	
	sets.ws.damage["Requiescat"]={ammo="Cheruski Needle", head="Whirlpool mask", neck="Fotia Gorget", ear1="Brutal Earring",
	ear2="Moonshade earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1", ring1="Epona's ring", ring2="Levia. Ring",
	back="Bleating Mantle", waist="Fotia Belt",legs="Quiahuiz trousers", feet="Qaaxo Leggings"}
	
	sets.ws.accuracy["Requiescat"]={ammo="Honed Tathlum", head="Whirlpool mask", neck="Fotia Gorget", ear1="Bladeborn Earring",
	ear2="Steelflash earring", body="Assim. Jubbah +1", hands="Assim. Bazu. +1", ring1="Mars's ring", ring2="Levia. Ring",
	back="Bleating Mantle", waist="Fotia Belt",legs="Quiahuiz trousers", feet="Qaaxo Leggings"}
	
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
	
	sets.JA.BurstAffinity = {legs="Assim. Shalwar +1", feet="Hashi. Basmak +1"}
	
	sets.JA.Efflux = {legs="Hashishin Tayt +1"}
	
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
			      back="Cornflower cape",waist="Wanion belt",legs="Quiahuiz trousers", feet=heliosboots}
						  
	sets.BlueMagic.STRDEX = {ammo="Cheruski needle",
				 head="Luhlaza Keffiyeh",neck="Mavi Scarf",ear1="Psystorm earring",ear2="Lifestorm earring",
				 body="Assim. Jubbah +1",hands="Assim. Bazu. +1",ring1="Ifrit Ring",ring2="Rajas ring",
				 back="Cornflower cape",waist="Wanion belt",legs="Manibozho brais", feet=heliosboots,}
							
	sets.BlueMagic.STRVIT = {ammo="Mavi Tathlum",
				 head="Luhlaza Keffiyeh",neck="Mavi Scarf",ear1="Psystorm earring",ear2="Lifestorm earring",
				 body="Assim. Jubbah +1",hands="Assim. Bazu. +1",ring1="Ifrit Ring",ring2="Rajas ring",
				 back="Cornflower cape",waist="Caudata belt",legs="Quiahuiz trousers",feet=heliosboots,}
							 
	sets.BlueMagic.STRMND = {ammo="Mavi Tathlum",
				 head="Luhlaza Keffiyeh",neck="Mavi Scarf",ear1="Psystorm earring",ear2="Lifestorm earring",
				 body="Assim. Jubbah +1",hands="Assim. Bazu. +1",ring1="Levia. Ring",ring2="Rajas Ring",
				 back="Cornflower cape",waist="Aswang sash",legs="Quiahuiz trousers",feet=heliosboots,}
								
	sets.BlueMagic.AGI = {ammo="Mavi Tathlum",
		              head="Luhlaza Keffiyeh",neck="Mavi Scarf",ear1="Psystorm earring",ear2="Lifestorm earring",
			      body="Assim. Jubbah +1",hands="Iuitl Wristbands +1",ring1="Ifrit Ring",ring2="Rajas ring",
		              back="Cornflower cape",waist="Aswang Sash",legs="Quiahuiz trousers",feet=heliosboots,}
						  
	sets.BlueMagic.INT = {ammo="Mavi Tathlum",
			      head=heliosband,neck="Eddy necklace",ear1="Crematio earring",ear2="Friomisi earring",
			      body="Count's Garb",hands="Hagondes Cuffs +1",ring1="Strendu Ring",ring2="Acumen ring",
			      back="Cornflower cape",waist="Yamabuki-no-obi",legs="Hagondes Pants +1",feet=heliosboots,}
						  
	sets.BlueMagic.Cures = {ammo="Mavi Tathlum",
			        head="Uk'uxkaj cap",neck="Mavi Scarf",ear1="Loquac. Earring",ear2="Novia earring",
			        body="Assim. Jubbah +1",hands="Buremte gloves",ring1="Levia. Ring",ring2="Sirona's ring",
			        back="Oretania's cape",waist="Chuq'aba Belt",legs="Quiahuiz trousers",feet="Assim. Charuqs +1"}
							
	sets.BlueMagic.Stun = {ammo="Mavi Tathlum",
			       head="Assim. Keffiyeh +1",neck="Eddy necklace",ear1="Loquac. Earring",
			       body="Assim. Jubbah +1",hands="Hashi. Bazu. +1",ring1="Prolix ring",ring2="Sangoma ring",
			       back="Cornflower cape",waist="Hurch'lan Sash",legs="Hashishin Tayt +1",feet=heliosboots,}
						   
	sets.BlueMagic.HeavyStrike = {ammo="Honed Tathlum",
			              head="Whirlpool mask",neck="Mavi Scarf",ear1="Steelflash Earring",ear2="Heartseeker earring",
			              body="Assim. Jubbah +1",hands="Buremte gloves",ring1="Ifrit Ring",ring2="Rajas ring",
			              back="Cornflower cape",waist="Dynamic belt +1",legs="Manibozho brais",feet=heliosboots,}
								  
	sets.BlueMagic.ChargedWhisker = {ammo="Mavi Tathlum",
			                 head="Uk'uxkaj cap",neck="Eddy necklace",ear1="Crematio earring",ear2="Friomisi earring",
			                 body="Vanir Cotehardie",hands="Assim. Bazu. +1",ring1="Diamond ring",ring2="Rajas ring",
				         back="Cornflower cape",waist="Aswang Sash",legs="Hagondes Pants +1",feet="Hashi. Basmak +1"} 
	
	sets.BlueMagic.WhiteWind = {ammo="Mavi Tathlum",
				    head="Luhlaza Keffiyeh",neck="Jeweled collar",ear1="Ethereal earring",ear2="Loquac. Earring",
				    body="Assim. Jubbah +1",hands="Weath. Cuffs +1",
				    back="Oretania's cape",legs="Enif Cosciales",feet="Assim. Charuqs +1"}
									 
	sets.BlueMagic.MagicAccuracy = {ammo="Mavi Tathlum",
				        head="Assim. Keffiyeh +1",neck="Eddy necklace",ear1="Psystorm earring",ear2="Lifestorm earring",
				        body="Assim. Jubbah +1",hands="Hagondes Cuffs +1",ring1="Strendu Ring",ring2="Sangoma ring",
				        back="Cornflower cape",waist="Aswang Sash",legs="Hashishin Tayt +1",feet="Luhlaza Charuqs"} 
									 
	sets.BlueMagic.Skill = {ammo="Mavi Tathlum",
				head="Luhlaza Keffiyeh",neck="Jeweled collar",ear1="Loquac. Earring",
				body="Assim. Jubbah +1",hands="Hashi. Bazu. +1",ring1="Prolix ring",
				back="Cornflower cape",waist="Hurch'lan Sash",legs="Hashishin Tayt +1",feet="Luhlaza Charuqs"}
							
	sets.BlueMagic.SkillRecast = {ammo="Mavi Tathlum",
				      head="Luhlaza Keffiyeh",neck="Jeweled collar",ear1="Loquac. Earring",
				      body="Assim. Jubbah +1",hands="Hashi. Bazu. +1",ring1="Prolix ring",
				      back="Swith cape",waist="Hurch'lan Sash",legs="Hashishin Tayt +1",feet="Luhlaza Charuqs"}
	--Blue Magic Sets
--midcast sets
	
	
--aftercast sets
	--tp sets	
	sets.tp.buffed.accI={ammo="Vanir Battery", head="Iuitl Headgear +1", feet=taeonfeet,
    body="Thaumas Coat", hands=taeonhands, legs=taeonlegs, neck="Asperity Necklace",
	waist="Windbuffet Belt +1", left_ear="Suppanomimi", right_ear="Brutal Earring",
	left_ring="Epona's Ring", right_ring="Rajas Ring", back="Bleating Mantle",}
	
	sets.tp.buffed.accII= set_combine(sets.tp.buffed.accI, {ammo="Honed Tathlum", head=taeonhead, neck="Iqabi Necklace",})
	
	sets.tp.buffed.accIII= set_combine(sets.tp.buffed.accII, {waist="Olseni Belt", right_ear="Zennaroi Earring", back="Letalis Mantle",})
	
	sets.tp.unbuffed.accI= set_combine(sets.tp.buffed.accI, {left_ear="Heartseeker Earring", right_ear="Dudgeon Earring",})
	
	sets.tp.unbuffed.accII= set_combine(sets.tp.unbuffed.accI, {ammo="Honed Tathlum", head=taeonhead, neck="Iqabi Necklace",})
	
	sets.tp.unbuffed.accIII= set_combine(sets.tp.unbuffed.accII, {waist="Olseni Belt", left_ear="Suppanomimi", right_ear="Zennaroi Earring", back="Letalis Mantle",})
	
	sets.learning={main="Nmd. Moogle Rod", sub="Genbu's Shield", ammo="Mavi Tathlum",
	head={ name="Luhlaza Keffiyeh", augments={'Enhances "Convergence" effect',}},
	body="Assim. Jubbah +1", hands="Assim. Bazu. +1", legs="Hashishin Tayt +1", feet="Assim. Charuqs +1",
	neck="Mavi Scarf", waist="Windbuffet Belt +1", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
	left_ring="Epona's Ring", right_ring="Rajas Ring",
	back={ name="Cornflower Cape", augments={'MP+19','DEX+1','Accuracy+1','Blue Magic skill +7',}},}
	--tp sets
	
	--idle sets
	sets.idle.refresh={ammo="Vanir Battery", body="Respite Cloak", hands="Serpentes Cuffs",
	legs="Blood Cuisses", feet="Serpentes Sabots", neck="Twilight Torque", waist="Flume Belt", left_ear="Sanare Earring",
    right_ear="Ethereal Earring", left_ring="Shadow Ring", right_ring="Sheltered Ring", back="Shadow Mantle",}
	
	sets.idle.regen= set_combine(sets.idle.refresh, {head="Oce. Headpiece +1", left_ring="Paguroidea Ring",})
	
	sets.idle.dt= set_combine(sets.idle.refresh, {head="Iuitl Headgear +1", hands="Umuthi Gloves", left_ring="Defending Ring", right_ring="Vocane Ring",})
	--idle sets
	
	--dt sets
	sets.pdt= set_combine(sets.idle.dt, {body="Iuitl Vest +1", back="Mollusca Mantle", legs="Hagondes Pants +1",})
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
		
	if spell.english == 'Disseverment' or spell.english == 'Hysteric Barrage' or spell.english == 'Frenetic Rip' or spell.english == 'Seedspray' or spell.english == 'Vanity Dive' or spell.english == 'Goblin Rush' or spell.english == 'Paralyzing Triad' or spell.english=='Sinker Drill' then
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
	
	if BluNukesINT:contains(spell.english) then
		equip(sets.BlueMagic.INT)
		if buffactive['Burst Affinity'] then
			equip(sets.JA.BurstAffinity)
		end
	end
	
	if BluCures:contains(spell.english)then
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
	
	if spell.english == 'MP Drainkiss' or spell.english == 'Digest' or spell.english == 'Blood Saber' or spell.english == 'Blood Drain' or spell.english == 'Osmosis' or spell.english == 'Occultation' or spell.english == 'Magic Barrier' or spell.english == 'Diamondhide' or spell.english == 'Metallic Body' or spell.english == 'Retinal Glare' or spell.english == 'Barrier Tusk' then
		equip(sets.BlueMagic.SkillRecast)
		if buffactive['Diffusion'] then
			equip(sets.JA.Diffusion)
		end
	end
	
	if spell.english == 'Cocoon' or spell.english == 'Harden Shell' or spell.english == 'Animating Wail' or spell.english == 'Battery Charge' or spell.english == 'Nat. Meditation' or spell.english == 'Carcharian Verve' or spell.english == 'O. Counterstance' or spell.english == 'Barrier Tusk' or spell.english == 'Saline Coat' or spell.english == 'Regeneration' or spell.english== 'Erratic Flutter'then
		if buffactive['Diffusion'] then
			equip(sets.JA.Diffusion)
		end
	end
	if spell.skill == 'Elemental Magic' then
		equip(sets.BlueMagic.INT)
	end
end

function aftercast(spell)
	status_change(player.status)
end

function status_change(new,old)
	if new=="Engaged" then
		if TPType=="DD" then
			if buffactive.march and (buffactive.march==2 or buffactive.embrava) then				
				equip(sets.tp.buffed[sets.tp.buffed.index[buffed_ind]])			
			else
				equip(sets.tp.unbuffed[sets.tp.unbuffed.index[unbuffed_ind]])
			end
		elseif TPType=="Hybrid" then
			equip(sets.hybrid[sets.hybrid.index[hybrid_ind]])
		elseif TPType=="PDT" then
			equip(sets.pdt)
		elseif TPType=="MDT" then
			equip(sets.mdt)
		end
	else
		equip(sets.idle[sets.idle.index[idle_ind]])
	end
	equip(sets.weaponry[sets.weaponry.index[weaponry_ind]])
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