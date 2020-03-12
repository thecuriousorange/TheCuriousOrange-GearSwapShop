function get_sets()
	include('organizer-lib.lua')
	include('physws.lua')
	include('haste-include.lua')

	windower.send_command('bind @f10 gs c refreshtptoggle')
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
	RefreshTP="off"
	hastetype="none"

	sets.hastetype=T{}
	sets.bluelearning=T{}
	sets.TPType=T{}
	sets.wsacc=T{}
	sets.RefreshTP=T{}
--variables

--spell lists
	BluNukesINT=S{'Sandspin','Cursed Sphere','Blastbomb','Bomb Toss','Death Ray','Blitzstrahl','Ice Break','Maelstrom','Corrosive',
		'Firespit','Regurgitation','Leafstorm','Blazing Bound','Thermal Pulse','Charged Whisker',"Everyone's Grudge",'Water Bomb',
		'Dark Orb','Thunderbolt','Gates of Hades','Tempestuous Upheaval','Rending Deluge','Embalming Breath','Foul Waters',
		'Retinal Glare','Subduction','Rail Cannon','Diffusion Ray','Blinding Fulgor','Spectral Floe','Entomb','Silent Storm',
		'Searing Tempest','Anvil Lightning','Tenebral Crush','Scouring Spate','Palling Salvo'}

	BluCures=S{'Pollen','Wild Carrot','Magic Fruit','Plenilune Embrace','Restoral','Cure IV','Cure III','Cure2','Cure','Curaga','Curaga II'}

	BluEnfeebles=S{'Filamented Hold','Cimicine Discharge','Demoralizing Roar','Venom Shell','Light of Penance','Sandspray','Auroral Drape',
	'Frightful Roar','Enervation','Infrasonics','Lowing','Cold Wave','Awful Eye','Sheep Song','Soporific','Yawn','Dream Flower','Chaotic Eye',
	'Sound Blast','Blank Gaze','Stinking Gas','Geist Wall','Jettatura','Feather Tickle','Temporal Shift','Actinic Burst','Reaving Wind',
	'Mortal Ray','Absolute Terror','Blistering Roar'}

	dark_nukes=S{"Tenebral Crush"}
--spell lists

--augmented gear
	taeonhead={ name="Taeon Chapeau", augments={'Accuracy+17 Attack+17','"Triple Atk."+2','Crit. hit damage +3%',}}
	taeonbody={ name="Taeon Tabard", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','Crit. hit damage +3%',}}
	taeonhands={ name="Taeon Gloves", augments={'Accuracy+16 Attack+16','"Triple Atk."+2','Crit. hit damage +3%',}}
	taeonlegs={ name="Taeon Tights", augments={'Accuracy+17 Attack+17','"Triple Atk."+2','Crit. hit damage +2%',}}
	taeonfeet={ name="Taeon Boots", augments={'Accuracy+19 Attack+19','"Triple Atk."+2','Crit. hit damage +2%',}}



	heliosboots={ name="Helios Boots", augments={'Mag. Acc. +17 "Mag.Atk.Bns."+17','Magic Crit. Hit Rate +3','Mag. Crit. Hit Dmg. +10%',}}
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
	sets.tprefresh={}
	sets.tp.unbuffedrefresh={}
	sets.tp.buffedrefresh={}
--basesets

--weaponry
	sets.weaponry.index={'Almace','Sequence','purenuke',}--[['blueskillnuke','vampirism']]--}
	weaponry_ind=1

	sets.weaponry.Almace={main="Almace", sub={ name="Colada", augments={'"Mag.Atk.Bns."+18','DEX+15','Accuracy+20','DMG:+5',}},}

	sets.weaponry.Sequence={main="Sequence", sub={ name="Colada", augments={'"Mag.Atk.Bns."+18','DEX+15','Accuracy+20','DMG:+5',}},}

	sets.weaponry.purenuke={main="Kaja Rod", sub={ name="Nibiru Cudgel", augments={'MP+50','INT+10','"Mag.Atk.Bns."+15',}},}
	--[[sets.weaponry.blueskillnuke={main="Iris", sub="Iris"}
	sets.weaponry.vampirism={main={ name="Vampirism", augments={'STR+7','INT+9','DMG:+12',}},
    sub={ name="Vampirism", augments={'STR+2','INT+2','DMG:+5',}},}]]--
--weaponry

--precast sets
	--magic sets
	sets.precast.fc={head="Carmine Mask +1", body="Luhlaza Jubbah +1", hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}},
	legs="Psycloth Lappas", feet="Carmine Greaves",
	neck="Voltsurge Torque",
	waist="Siegel Sash", left_ear="Loquac. Earring", right_ear="Etiolation Earring", left_ring="Kishar Ring",
	right_ring="Rahab Ring", back="Swith Cape",}

	sets.precast.blu= set_combine(sets.precast.fc, {body="Hashishin Mintan +1",})

	sets.precast.nin= set_combine(sets.precast.fc, {neck="Magoraga Beads"})
	--magic sets

	--moonshade
	sets.tpbonusphysicaldamage={left_ear="Moonshade Earring",}
	sets.tpbonusphysicalaccuracy={right_ear="Moonshade Earring", left_ear="Telos Earring"}
	sets.tpbonusmagical={left_ear="Moonshade Earring", right_ear="Crematio Earring"}
	--moonshade

	--sword weaponskill sets
	sets.ws.damage["Fast Blade"]={ammo="Cheruski needle", head="Uk'uxkaj cap", neck="Asperity Necklace",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Adhemar Jacket +1", hands="Despair Fin. Gaunt.",
	ring1="Epona's ring", ring2="Rajas ring", back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}}, waist="Fotia Belt",
	legs="Samnuha Tights", feet="Despair Greaves"}

	sets.ws.accuracy["Fast Blade"]={ammo="Falcon Eye", head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','DEX+7','Accuracy+12','Attack+13',}}, neck="Asperity Necklace",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Adhemar Jacket +1", hands="Despair Fin. Gaunt.",
	ring1="Epona's ring", ring2="Rajas ring", back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, waist="Fotia Belt",
	legs="Samnuha Tights", feet="Despair Greaves"}

	sets.ws.damage["Burning Blade"]={ammo="Pemphredo Tathlum", head={ name="Herculean Helm", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Crit. hit damage +1%','STR+5','Mag. Acc.+9','"Mag.Atk.Bns."+10',}}, neck="Sanctity Necklace",
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes Cuffs +1",
	ring1="Stikini Ring", ring2="Shiva Ring +1", back="Refraction Cape",waist="Caudata belt",
	legs="Lengo Pants",feet=heliosboots}

	sets.ws.accuracy["Burning Blade"]={ammo="Pemphredo Tathlum", head={ name="Herculean Helm", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Crit. hit damage +1%','STR+5','Mag. Acc.+9','"Mag.Atk.Bns."+10',}}, neck="Sanctity Necklace",
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes Cuffs +1",
	ring1="Stikini Ring", ring2="Shiva Ring +1", back="Refraction Cape",waist="Caudata belt",
	legs="Lengo Pants",feet=heliosboots}

	sets.ws.damage["Red Lotus Blade"]={ammo="Pemphredo Tathlum", head={ name="Herculean Helm", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Crit. hit damage +1%','STR+5','Mag. Acc.+9','"Mag.Atk.Bns."+10',}}, neck="Sanctity Necklace",
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes Cuffs +1",
	ring1="Stikini Ring", ring2="Shiva Ring +1", back="Refraction Cape",waist="Caudata belt",
	legs="Lengo Pants",feet=heliosboots}

	sets.ws.accuracy["Red Lotus Blade"]={ammo="Pemphredo Tathlum", head={ name="Herculean Helm", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Crit. hit damage +1%','STR+5','Mag. Acc.+9','"Mag.Atk.Bns."+10',}}, neck="Sanctity Necklace",
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes Cuffs +1",
	ring1="Stikini Ring", ring2="Shiva Ring +1", back="Refraction Cape",waist="Caudata belt",
	legs="Lengo Pants",feet=heliosboots}

	sets.ws.damage["Flat Blade"]={ammo="Falcon Eye", head="Despair Helm", neck="Asperity Necklace",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Adhemar Jacket +1", hands="Despair Fin. Gaunt.",
	ring1="Epona's ring", ring2="Rajas ring", back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, waist="Fotia Belt",
	legs="Samnuha Tights", feet="Despair Greaves"}

	sets.ws.accuracy["Flat Blade"]={ammo="Falcon Eye", head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','DEX+7','Accuracy+12','Attack+13',}}, neck="Asperity Necklace",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Adhemar Jacket +1", hands="Despair Fin. Gaunt.",
	ring1="Epona's ring", ring2="Rajas ring", back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, waist="Fotia Belt",
	legs="Samnuha Tights", feet="Despair Greaves"}

	sets.ws.damage["Shining Blade"]={ammo="Pemphredo Tathlum", head={ name="Herculean Helm", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Crit. hit damage +1%','STR+5','Mag. Acc.+9','"Mag.Atk.Bns."+10',}}, neck="Sanctity Necklace",
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes Cuffs +1",
	ring1="Stikini Ring", ring2="Shiva Ring +1", back="Refraction Cape",waist="Caudata belt",
	legs="Lengo Pants",feet=heliosboots}

	sets.ws.accuracy["Shining Blade"]={ammo="Pemphredo Tathlum", head={ name="Herculean Helm", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Crit. hit damage +1%','STR+5','Mag. Acc.+9','"Mag.Atk.Bns."+10',}}, neck="Sanctity Necklace",
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes Cuffs +1",
	ring1="Stikini Ring", ring2="Shiva Ring +1", back="Refraction Cape",waist="Caudata belt",
	legs="Lengo Pants",feet=heliosboots}

	sets.ws.damage["Seraph Blade"]={ammo="Pemphredo Tathlum", head={ name="Herculean Helm", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Crit. hit damage +1%','STR+5','Mag. Acc.+9','"Mag.Atk.Bns."+10',}}, neck="Sanctity Necklace",
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes Cuffs +1",
	ring1="Stikini Ring", ring2="Shiva Ring +1", back="Refraction Cape",waist="Caudata belt",
	legs="Lengo Pants",feet=heliosboots}

	sets.ws.accuracy["Seraph Blade"]={ammo="Pemphredo Tathlum", head={ name="Herculean Helm", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Crit. hit damage +1%','STR+5','Mag. Acc.+9','"Mag.Atk.Bns."+10',}}, neck="Sanctity Necklace",
	ear1="Hecate's earring", ear2="Friomisi earring", body="Hagondes Coat +1", hands="Hagondes Cuffs +1",
	ring1="Stikini Ring", ring2="Shiva Ring +1", back="Refraction Cape",waist="Caudata belt",
	legs="Lengo Pants",feet=heliosboots}

	sets.ws.damage["Circle Blade"]={ammo="Cheruski needle", head="Uk'uxkaj cap", neck="Asperity Necklace",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Adhemar Jacket +1", hands="Despair Fin. Gaunt.",
	ring1="Epona's ring", ring2="Rajas ring", back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}}, waist="Fotia Belt",
	legs="Samnuha Tights", feet="Despair Greaves"}

	sets.ws.accuracy["Circle Blade"]={ammo="Falcon Eye", head="Despair Helm", neck="Asperity Necklace",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Adhemar Jacket +1", hands="Despair Fin. Gaunt.",
	ring1="Epona's ring", ring2="Rajas ring", back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, waist="Fotia Belt",
	legs="Samnuha Tights", feet="Despair Greaves"}

	sets.ws.damage["Spirits Within"]={}

	sets.ws.accuracy["Spirits Within"]={}

	sets.ws.damage["Vorpal Blade"]={ammo="Falcon Eye", head="Despair Helm", neck="Asperity Necklace",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Adhemar Jacket +1", hands="Despair Fin. Gaunt.",
	ring1="Epona's ring", ring2="Rajas ring", back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, waist="Fotia Belt",
	legs="Samnuha Tights", feet="Despair Greaves"}

	sets.ws.accuracy["Vorpal Blade"]={ammo="Falcon Eye", head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','DEX+7','Accuracy+12','Attack+13',}}, neck="Asperity Necklace",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Adhemar Jacket +1", hands="Despair Fin. Gaunt.",
	ring1="Epona's ring", ring2="Rajas ring", back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, waist="Fotia Belt",
	legs="Samnuha Tights", feet="Despair Greaves"}

	sets.ws.damage["Savage Blade"]={ammo="Cheruski Needle", head="Despair Helm", neck="Fotia Gorget", ear1="Brutal Earring",
	ear2="Moonshade earring", body="Adhemar Jacket +1", hands="Despair Fin. Gaunt.", ring1="Epona's ring", ring2="Rufescent Ring",
	back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}}, waist="Fotia Belt",legs="Samnuha Tights", feet="Despair Greaves"}

	sets.ws.accuracy["Savage Blade"]={ammo="Falcon Eye", head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','DEX+7','Accuracy+12','Attack+13',}}, neck="Fotia Gorget", ear1="Bladeborn Earring",
	ear2="Steelflash earring", body="Adhemar Jacket +1", hands="Despair Fin. Gaunt.", ring1="Ilabrat Ring", ring2="Rufescent Ring",
	back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}}, waist="Fotia Belt",legs="Samnuha Tights", feet="Despair Greaves"}

	sets.ws.damage["Expiation"]={ammo="Cheruski needle", head="Uk'uxkaj cap", neck="Fotia Gorget",
	ear1="Moonshade earring", ear2="Brutal Earring", body="Adhemar Jacket +1", hands="Despair Fin. Gaunt.",
	ring1="Epona's ring", ring2="Rajas ring", back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}}, waist="Fotia Belt",
	legs="Samnuha Tights", feet="Despair Greaves"}

	sets.ws.accuracy["Expiation"]={ammo="Falcon Eye", head="Uk'uxkaj cap", neck="Fotia Gorget",
	ear1="Bladeborn Earring", ear2="Steelflash earring", body="Count's Garb", hands="Despair Fin. Gaunt.",
	ring1="Epona's ring", ring2="Ilabrat Ring", back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, waist="Fotia Belt",
	legs="Samnuha Tights", feet="Despair Greaves"}

	sets.ws.damage["Sanguine Blade"]={ammo="Pemphredo Tathlum", head="Pixie Hairpin +1", body="Jhakri Robe +2",
	hands="Jhakri Cuffs +2", legs="Jhakri Slops +2", feet="Jhakri Pigaches +2", neck="Fotia Gorget", waist="Fotia Belt",
	left_ear="Hecate's Earring", right_ear="Friomisi Earring", left_ring="Archon Ring",
	right_ring="Shiva Ring +1", back={ name="Cornflower Cape", augments={'MP+19','DEX+1','Accuracy+1','Blue Magic skill +7',}},}

	sets.ws.accuracy["Sanguine Blade"]={ammo="Pemphredo Tathlum", head="Pixie Hairpin +1", body="Jhakri Robe +2",
	hands="Jhakri Cuffs +2", legs="Jhakri Slops +2", feet="Jhakri Pigaches +2", neck="Fotia Gorget", waist="Fotia Belt",
	left_ear="Hecate's Earring", right_ear="Friomisi Earring", left_ring="Archon Ring",
	right_ring="Shiva Ring +1", back={ name="Cornflower Cape", augments={'MP+19','DEX+1','Accuracy+1','Blue Magic skill +7',}},}

	sets.ws.damage["Chant du Cygne"]={ammo="Cheruski Needle", head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
	body="Abnoba Kaftan", hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}}, feet="Thereoid Greaves",
	legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}}, neck="Fotia Gorget", waist="Fotia Belt",
	back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Mache Earring +1",
	right_ear="Mache Earring +1", left_ring="Begrudging Ring", right_ring="Ilabrat Ring",}

	sets.ws.accuracy["Chant du Cygne"]={ammo="Falcon Eye", head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
	body="Abnoba Kaftan",     hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}}, feet="Thereoid Greaves",
	legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}}, neck="Fotia Gorget", waist="Fotia Belt",
	back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Mache Earring +1",
	right_ear="Mache Earring +1", left_ring="Begrudging Ring", right_ring="Ilabrat Ring",}

	sets.ws.damage["Requiescat"]={ammo="Cheruski Needle", head="Despair Helm", neck="Fotia Gorget", ear1="Brutal Earring",
	ear2="Moonshade earring", body="Adhemar Jacket +1", hands="Despair Fin. Gaunt.", ring1="Epona's ring", ring2="Rufescent Ring",
	back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}}, waist="Fotia Belt",legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}}, feet="Despair Greaves"}

	sets.ws.accuracy["Requiescat"]={ammo="Falcon Eye", head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','DEX+7','Accuracy+12','Attack+13',}}, neck="Fotia Gorget", ear1="Bladeborn Earring",
	ear2="Steelflash earring", body="Adhemar Jacket +1", hands="Despair Fin. Gaunt.", ring1="Ilabrat Ring", ring2="Rufescent Ring",
	back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}}, waist="Fotia Belt",legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}}, feet="Despair Greaves"}

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

	sets.JA.AzureLore = {hands="Luh. Bazubands +1"}

	sets.JA.Diffusion = {feet="Luhlaza Charuqs +1"}

	--Job Ability Sets
--precast sets

--midcast sets
	--Blue Magic Sets--
	sets.BlueMagic = {}

	sets.BlueMagic.STR = {ammo="Mavi Tathlum",
			      head="Luh. Keffiyeh +1",neck="Incanter's Torque",ear1="Psystorm earring",ear2="Lifestorm earring",
			      body="Assim. Jubbah +2",hands="Assim. Bazu. +1",ring1="Ifrit Ring",ring2="Rajas ring",
			      back="Cornflower cape",waist="Wanion belt",legs="Samnuha Tights", feet=heliosboots}

	sets.BlueMagic.STRDEX = {ammo="Cheruski needle",
				 head="Luh. Keffiyeh +1",neck="Incanter's Torque",ear1="Psystorm earring",ear2="Lifestorm earring",
				 body="Assim. Jubbah +2",hands="Assim. Bazu. +1",ring1="Ifrit Ring",ring2="Rajas ring",
				 back="Cornflower cape",waist="Wanion belt",legs="Samnuha Tights", feet=heliosboots,}

	sets.BlueMagic.STRVIT = {ammo="Mavi Tathlum",
				 head="Luh. Keffiyeh +1",neck="Incanter's Torque",ear1="Psystorm earring",ear2="Lifestorm earring",
				 body="Assim. Jubbah +2",hands="Assim. Bazu. +1",ring1="Ifrit Ring",ring2="Rajas ring",
				 back="Cornflower cape",waist="Caudata belt",legs="Samnuha Tights",feet=heliosboots,}

	sets.BlueMagic.STRMND = {ammo="Mavi Tathlum",
				 head="Luh. Keffiyeh +1",neck="Incanter's Torque",ear1="Psystorm earring",ear2="Lifestorm earring",
				 body="Assim. Jubbah +2",hands="Assim. Bazu. +1",ring1="Rufescent Ring",ring2="Rajas Ring",
				 back="Cornflower cape",waist="Eschan Stone",legs="Samnuha Tights",feet=heliosboots,}

	sets.BlueMagic.AGI = {ammo="Mavi Tathlum", head="Luh. Keffiyeh +1",neck="Incanter's Torque", ear1="Psystorm earring",
	ear2="Lifestorm earring", body="Assim. Jubbah +2",hands={ name="Herculean Gloves", augments={'Attack+30','Damage taken-3%','AGI+8',}}, ring1="Ifrit Ring", ring2="Rajas ring",
		              back={ name="Cornflower Cape", augments={'MP+19','DEX+1','Accuracy+1','Blue Magic skill +7',}}, waist="Eschan Stone",legs="Samnuha Tights",feet=heliosboots,}

	sets.BlueMagic.INT = {
		ammo="Pemphredo Tathlum",
    head="Jhakri Coronal +2",
    body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7',}},
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
	}

	sets.BlueMagic.Cures = {ammo="Mavi Tathlum",
			        head="Uk'uxkaj cap",neck="Phalaina Locket",ear1="Loquac. Earring",ear2="Etiolation earring",
			        body="Assim. Jubbah +2",hands="Telchine gloves",ring1="Levia. Ring",ring2="Sirona's ring",
			        back="Solemnity Cape",waist="Gishdubar Sash",legs="Gyve Trousers",feet="Medium's Sabots"}

	sets.BlueMagic.Stun = {ammo="Mavi Tathlum",
			       head="Assim. Keffiyeh +1",neck="Sanctity Necklace",ear1="Loquac. Earring",
			       body="Assim. Jubbah +2",hands="Hashi. Bazu. +1",ring1="Kishar Ring",ring2="Stikini Ring",
			       back="Cornflower cape",waist="Hurch'lan Sash",legs="Hashishin Tayt +1",feet=heliosboots,}

	sets.BlueMagic.HeavyStrike = {ammo="Falcon Eye",
			              head="Despair Helm",neck="Incanter's Torque",ear1="Steelflash Earring",ear2="Zennaroi earring",
			              body="Assim. Jubbah +2",hands="Buremte gloves",ring1="Ifrit Ring",ring2="Rajas ring",
			              back="Cornflower cape",waist="Dynamic belt +1",legs="Samnuha Tights",feet=heliosboots,}

	sets.BlueMagic.ChargedWhisker = {ammo="Pemphredo Tathlum",
			                 head="Uk'uxkaj cap",neck="Sanctity Necklace",ear1="Crematio earring",ear2="Friomisi earring",
			                 body="Count's Garb",hands="Assim. Bazu. +1",ring1="Ramuh Ring +1",ring2="Rajas ring",
				         back="Cornflower cape",waist="Eschan Stone",legs="Lengo Pants",feet="Hashi. Basmak +1"}

	sets.BlueMagic.WhiteWind = {ammo="Mavi Tathlum",
				    head="Luh. Keffiyeh +1",neck="Voltsurge Torque",ear1="Ethereal earring",ear2="Loquac. Earring",
				    body="Assim. Jubbah +2",hands="Telchine Gloves",
				    back="Solemnity Cape",legs="Psycloth Lappas",feet="Assim. Charuqs +1"}

	sets.BlueMagic.MagicAccuracy = {ammo="Mavi Tathlum",
				        head="Assim. Keffiyeh +1",neck="Sanctity Necklace",ear1="Psystorm earring",ear2="Lifestorm earring",
				        body="Assim. Jubbah +2",hands="Hagondes Cuffs +1",ring1="Shiva Ring +1",ring2="Stikini Ring",
				        back="Cornflower cape",waist="Eschan Stone",legs="Hashishin Tayt +1",feet="Luhlaza Charuqs +1"}

	sets.BlueMagic.Skill = {ammo="Mavi Tathlum",
				head="Luh. Keffiyeh +1",neck="Voltsurge Torque",ear1="Loquac. Earring",
				body="Assim. Jubbah +2",hands="Hashi. Bazu. +1",ring1="Kishar Ring",
				back="Cornflower cape",waist="Hurch'lan Sash",legs="Hashishin Tayt +1",feet="Luhlaza Charuqs +1"}

	sets.BlueMagic.SkillRecast = {ammo="Mavi Tathlum",
				      head="Luh. Keffiyeh +1",neck="Voltsurge Torque",ear1="Loquac. Earring",
				      body="Assim. Jubbah +2",hands="Hashi. Bazu. +1",ring1="Kishar Ring",
				      back="Swith cape",waist="Hurch'lan Sash",legs="Hashishin Tayt +1",feet="Luhlaza Charuqs +1"}

	sets.darknuke={head="Pixie Hairpin +1", left_ring="Archon Ring",}
	--Blue Magic Sets
--midcast sets


--aftercast sets
	--tp sets
	sets.tp.buffed.accI={ammo="Hasty Pinion +1",
    head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body={ name="Herculean Vest", augments={'Accuracy+13 Attack+13','"Triple Atk."+4','MND+3','Attack+13',}},
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+4','Accuracy+13','Attack+5',}},
    legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
    feet={ name="Herculean Boots", augments={'Accuracy+16','"Triple Atk."+4','AGI+2','Attack+9',}},
    neck="Lissome Necklace",
    waist="Reiki Yotai",
    left_ear="Suppanomimi",
    right_ear="Telos Earring",
    left_ring="Epona's Ring",
    right_ring="Hetairoi Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},}
	--[[{ammo="Focal Orb",
    head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','DEX+7','Accuracy+12','Attack+13',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}}, right_ear="Telos Earring",
        hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}}, right_ring="Hetairoi Ring",
    legs={ name="Taeon Tights", augments={'Accuracy+17 Attack+17','"Triple Atk."+2','Crit. hit damage +2%',}},
    feet={ name="Herculean Boots", augments={'Accuracy+24','"Triple Atk."+3',}}, left_ring="Epona's Ring",
    neck="Clotharius Torque", waist="Chiner's Belt +1", left_ear="Cessance Earring", back="Bleating Mantle",}
	{ammo="Focal Orb", head=taeonhead, feet=taeonfeet,
    body="Adhemar Jacket +1", hands="adhemar Wrist. +1", legs="Samnuha Tights", neck="Asperity Necklace",
	waist="Windbuffet Belt +1", left_ear="Cessance Earring", right_ear="Brutal Earring",
	left_ring="Epona's Ring", right_ring="Petrov Ring", back="Bleating Mantle",}]]--

	sets.tp.buffed.accII= set_combine(sets.tp.buffed.accI, {neck="Combatant's Torque", hands="Adhemar Wrist. +1",})

	sets.tp.buffed.accIII= set_combine(sets.tp.buffed.accII, {ammo="Falcon Eye", waist="Olseni Belt", right_ear="Zennaroi Earring", back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},})

	sets.tp.buffedrefresh.accI= set_combine(sets.tp.buffed.accI, {head="Rawhide Mask", body="Luhlaza Jubbah +1",})

	sets.tp.buffedrefresh.accII= set_combine(sets.tp.buffed.accII, {head="Rawhide Mask", body="Luhlaza Jubbah +1",})

	sets.tp.buffedrefresh.accIII= set_combine(sets.tp.buffed.accIII, {head="Rawhide Mask", body="Luhlaza Jubbah +1",})

	sets.learning={main="Nmd. Moogle Rod", sub="Genmei Shield", ammo="Mavi Tathlum",
	head={ name="Luh. Keffiyeh +1", augments={'Enhances "Convergence" effect',}},
	body="Assim. Jubbah +2", hands="Assim. Bazu. +1", legs="Hashishin Tayt +1", feet="Assim. Charuqs +1",
	neck="Incanter's Torque", waist="Windbuffet Belt +1", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
	left_ring="Epona's Ring", right_ring="Rajas Ring",
	back={ name="Cornflower Cape", augments={'MP+19','DEX+1','Accuracy+1','Blue Magic skill +7',}},}
	--tp sets

	--idle sets
	sets.idle.refresh={ammo="Vanir Battery", head="Rawhide Mask", body="Jhakri Robe +2", hands={ name="Herculean Gloves", augments={'Blood Pact Dmg.+3','Attack+15','"Refresh"+1','Accuracy+8 Attack+8','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
	legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}}, feet="Serpentes Sabots", neck="Loricate Torque +1", waist="Flume Belt", left_ear="Sanare Earring",
    right_ear="Ethereal Earring", left_ring="Shadow Ring", right_ring="Sheltered Ring", back="Shadow Mantle",}

	sets.idle.regen= set_combine(sets.idle.refresh, {head="Oce. Headpiece +1", left_ring="Paguroidea Ring",})

	sets.idle.dt={ammo="Vanir Battery",head={ name="Herculean Helm", augments={'Accuracy+2','Damage taken-4%','STR+6','Attack+13',}},
    body="Ayanmo Corazza +2", hands={ name="Herculean Gloves", augments={'Attack+30','Damage taken-3%','AGI+8',}},
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}}, neck="Loricate Torque +1",
	feet={ name="Herculean Boots", augments={'Damage taken-3%','STR+6','Attack+8',}},
     waist="Flume Belt", left_ear="Genmei Earring", right_ear="Ethereal Earring",
    left_ring="Vocane Ring +1", right_ring="Defending Ring", back="Shadow Mantle",}
	--idle sets

	--dt sets
	sets.pdt={ammo="Vanir Battery",head={ name="Herculean Helm", augments={'Accuracy+2','Damage taken-4%','STR+6','Attack+13',}},
    body="Ayanmo Corazza +2", hands={ name="Herculean Gloves", augments={'Attack+30','Damage taken-3%','AGI+8',}},
    legs="Aya. Cosciales +2", feet={ name="Herculean Boots", augments={'Damage taken-3%','STR+6','Attack+8',}},
    neck="Loricate Torque +1", waist="Flume Belt", left_ear="Genmei Earring", right_ear="Ethereal Earring",
    left_ring="Vocane Ring +1", right_ring="Defending Ring", back="Moonbeam Cape",}

	sets.mdt= set_combine(sets.pdt, {left_ear="Etiolation Earring", hands="Leyline Gloves", right_ring="Shadow Ring",})

	sets.hybrid.accI=set_combine(sets.tp.buffed.accI,{neck="Loricate Torque +1", hands="Umuthi Gloves", back="Moonbeam Cape", left_ring="Vocane Ring +1", right_ring="Defending Ring"})
	sets.hybrid.accII=set_combine(sets.tp.buffed.accII,{neck="Loricate Torque +1", hands="Umuthi Gloves", back="Moonbeam Cape", left_ring="Vocane Ring +1", right_ring="Defending Ring"})
	sets.hybrid.accIII=set_combine(sets.tp.buffed.accIII,{neck="Loricate Torque +1", hands="Umuthi Gloves", back="Moonbeam Cape", left_ring="Vocane Ring +1", right_ring="Defending Ring"})

	sets.tprefresh.accI=set_combine(sets.tp.buffed.accI, {head="Rawhide Mask", body="Luhlaza Jubbah +1", legs="Rawhide Trousers"})
	sets.tprefresh.accII=set_combine(sets.tp.buffed.accII, {head="Rawhide Mask", body="Luhlaza Jubbah +1", legs="Rawhide Trousers"})
	sets.tprefresh.accIII=set_combine(sets.tp.buffed.accIII, {head="Rawhide Mask", body="Luhlaza Jubbah +1", legs="Rawhide Trousers"})
--aftercast sets
end




function precast(spell)
	if spell.prefix=="/magic" or spell.prefix=="/ninjutsu" then
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
		--[[if player.tp>999 and player.tp<3000 then
			if phys_ws:contains(spell.english) then
				if wsacc=="Damage" then
					equip(sets.moonshadephysicaldamage)
				elseif WSMode=="Accuracy" then
					equip(sets.moonshadephysicalaccuracy)
				end
			else
				equip(sets.moonshademagic)
			end
		end]]
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

	if BluEnfeebles:contains(spell.english) then
		equip(sets.BlueMagic.MagicAccuracy)
	end

	if spell.english == 'Cocoon' or spell.english == 'Harden Shell' or spell.english == 'Animating Wail' or spell.english == 'Battery Charge' or spell.english == 'Nat. Meditation' or spell.english == 'Carcharian Verve' or spell.english == 'O. Counterstance' or spell.english == 'Barrier Tusk' or spell.english == 'Saline Coat' or spell.english == 'Regeneration' or spell.english== 'Erratic Flutter' or spell.english=="Mighty Guard" then
		if buffactive['Diffusion'] then
			equip(sets.JA.Diffusion)
		end
	end
	if spell.skill == 'Elemental Magic' then
		equip(sets.BlueMagic.INT)
	end
	if dark_nukes:contains(spell.english) then
		equip(sets.darknuke)
	end
end

function aftercast(spell)
	status_change(player.status)
end

function status_change(new,old)
	if new=="Engaged" then
		if TPType=="DD" then
			if RefreshTP=="off" then
				equip(sets.tp.buffed[sets.tp.buffed.index[buffed_ind]])
			elseif RefreshTP=="on" then
				equip(sets.tp.buffedrefresh[sets.tp.buffed.index[buffed_ind]])
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
	if command=="refreshtptoggle" then
		if RefreshTP=="off" then
			RefreshTP="on"
			add_to_chat(206, 'TP REFRESH: ON')
			status_change(player.status)
		else
			RefreshTP="off"
			add_to_chat(206, 'TP REFRESH: OFF')
			status_change(player.status)
		end
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
		if hybrid_ind > #sets.tp.buffed.index then
			hybrid_ind=1
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
	if command=='testing' then
		x_res=windower.get_windower_settings.x_res
	end
	if command=='testend' then
		windower.prim.delete('DD_MODE')
	end
	if command=="checkhaste" then
		effectiveHaste()
	end
end
