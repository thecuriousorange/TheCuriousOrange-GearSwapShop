function get_sets()
	include('organizer-lib.lua')
--variables
	TPSet="DD"
	TPType="lowacc"
	IdleType="regen"
	ShotType="damage"
	
	sets.TPSet= T{}
	sets.TPType= T{}
	sets.IdleType= T{}
	sets.ShotType= T{}
--variables

--basesets
	sets.precast={}
	sets.ja={}
	sets.tp={}
	sets.hybrid={}
	sets.wsdmg={}
	sets.wsacc={}
	sets.idle={}
	sets.midshot={}
--basesets

--precast sets
	sets.preshot={head="Chass. Tricorne",
    body="Mummu Jacket +2",
    hands={ name="Carmine Fin. Ga.", augments={'Accuracy+10','DEX+10','MND+15',}},
    legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
    feet="Meg. Jam. +2",
    neck="Iskur Gorget",
    waist="Impulse Belt",
    left_ear="Enervating Earring",
    right_ear="Telos Earring",
    left_ring="Dingir Ring",
    right_ring="Ilabrat Ring",
    back={ name="Gunslinger's Cape", augments={'Enmity-2','"Mag.Atk.Bns."+2','"Phantom Roll" ability delay -5',}},}
	
	sets.precast.magic={head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body={ name="Taeon Tabard", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','Crit. hit damage +3%',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}},
    legs={ name="Rawhide Trousers", augments={'MP+50','"Fast Cast"+5','"Refresh"+1',}},
    feet={ name="Carmine Greaves", augments={'Accuracy+10','DEX+10','MND+15',}},
    neck={ name="Jeweled Collar", augments={'"Fast Cast"+2','MND+2','MP recovered while healing +2',}},
    waist="Flume Belt",
    left_ear="Etiolation Earring",
    right_ear="Loquac. Earring",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring",
    back="Moonbeam Cape",}
	
	sets.precast.ninjutsu=set_combine(sets.precast.magic, {neck="Magoraga Beads",})
--precast sets

--ja sets
	sets.rolls={head={ name="Lanun Tricorne", augments={'Enhances "Winning Streak" effect',}},
    body="Meg. Cuirie +2",
    hands="Chasseur's Gants",
    legs="Mummu Kecks +2 +2",
    feet={ name="Herculean Boots", augments={'Damage taken-3%','STR+6','Attack+8',}},
    neck="Regal Necklace",
    waist="Flume Belt",
    left_ear="Etiolation Earring",
    right_ear="Genmei Earring",
    left_ring="Defending Ring",
    right_ring="Luzaf's Ring",
    back="Camulus's Mantle",}
	
	sets.shots={}
	
	sets.ja["Corsair's Roll"]=sets.rolls
	
	sets.ja["Ninja's Roll"]=sets.rolls
	
	sets.ja["Hunter's Roll"]=sets.rolls
	
	sets.ja["Chaos Roll"]=sets.rolls
	
	sets.ja["Magus's Roll"]=sets.rolls
	
	sets.ja["Healer's Roll"]=sets.rolls
	
	sets.ja["Drachen Roll"]=sets.rolls
	
	sets.ja["Choral Roll"]=sets.rolls
	
	sets.ja["Monk's Roll"]=sets.rolls
	
	sets.ja["Beast Roll"]=sets.rolls
	
	sets.ja["Beast Roll"]=sets.rolls
	
	sets.ja["Samurai Roll"]=sets.rolls
	
	sets.ja["Evoker's Roll"]=sets.rolls
	
	sets.ja["Rogue's Roll"]=sets.rolls
	
	sets.ja["Warlock's Roll"]=sets.rolls
	
	sets.ja["Fighter's Roll"]=sets.rolls
	
	sets.ja["Puppet Roll"]=sets.rolls
	
	sets.ja["Gallant's Roll"]=sets.rolls
	
	sets.ja["Wizard's Roll"]=sets.rolls
	
	sets.ja["Dancer's Roll"]=sets.rolls
	
	sets.ja["Scholar's Roll"]=sets.rolls
	
	sets.ja["Bolter's Roll"]=sets.rolls
	
	sets.ja["Caster's Roll"]=sets.rolls
	
	sets.ja["Courser's Roll"]=sets.rolls
	
	sets.ja["Blitzer's Roll"]=sets.rolls
	
	sets.ja["Tactician's Roll"]=sets.rolls
	
	sets.ja["Allies' Roll"]=sets.rolls
	
	sets.ja["Miser's Roll"]=sets.rolls
	
	sets.ja["Companion's Roll"]=sets.rolls
	
	sets.ja["Avenger's Roll"]=sets.rolls
	
	sets.ja["Wild Card"]={head={ name="Herculean Helm", augments={'Accuracy+2','Damage taken-4%','STR+6','Attack+13',}},
    body="Meg. Cuirie +2",
    hands={ name="Herculean Gloves", augments={'Attack+30','Damage taken-3%','AGI+8',}},
    legs="Mummu Kecks +2",
    feet={ name="Lanun Bottes", augments={'Enhances "Wild Card" effect',}},
    neck="Loricate Torque +1",
    waist="Flume Belt",
    left_ear="Etiolation Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Vocane Ring",
    back="Moonbeam Cape",}
	
	sets.ja["Double-Up"]={}
	
	sets.ja["Random Deal"]={head={ name="Herculean Helm", augments={'Accuracy+2','Damage taken-4%','STR+6','Attack+13',}},
    body={ name="Lanun Frac", augments={'Enhances "Loaded Deck" effect',}},
    hands={ name="Herculean Gloves", augments={'Attack+30','Damage taken-3%','AGI+8',}},
    legs="Mummu Kecks +2",
    feet={ name="Herculean Boots", augments={'Damage taken-3%','STR+6','Attack+8',}},
    neck="Loricate Torque +1",
    waist="Flume Belt",
    left_ear="Etiolation Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Vocane Ring",
    back="Moonbeam Cape",}
	
	sets.ja["Snake Eye"]={head={ name="Herculean Helm", augments={'Accuracy+2','Damage taken-4%','STR+6','Attack+13',}},
    body="Meg. Cuirie +2",
    hands={ name="Herculean Gloves", augments={'Attack+30','Damage taken-3%','AGI+8',}},
    legs={ name="Lanun Culottes", augments={'Enhances "Snake Eye" effect',}},
    feet={ name="Herculean Boots", augments={'Damage taken-3%','STR+6','Attack+8',}},
    neck="Loricate Torque +1",
    waist="Flume Belt",
    left_ear="Etiolation Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Vocane Ring",
    back="Moonbeam Cape",}
	
	sets.ja["Fold"]={head={ name="Herculean Helm", augments={'Accuracy+2','Damage taken-4%','STR+6','Attack+13',}},
    body="Meg. Cuirie +2",
    hands={ name="Lanun Gants", augments={'Enhances "Fold" effect',}},
    legs="Mummu Kecks +2",
    feet={ name="Herculean Boots", augments={'Damage taken-3%','STR+6','Attack+8',}},
    neck="Loricate Torque +1",
    waist="Flume Belt",
    left_ear="Etiolation Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Vocane Ring",
    back="Moonbeam Cape",}
	
	sets.ja["Triple Shot"]={}
	
	sets.ja["Cutting Cards"]={}
	
	sets.qd={}
	
	sets.qd.acc={head="Mummu Bonnet +1",
    body="Mummu Jacket +2",
    hands="Mummu Wrists +1",
    legs="Mummu Kecks +2",
    feet="Mummu Gamash. +1",
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Digni. Earring",
    right_ear="Gwati Earring",
    left_ring="Dingir Ring",
    right_ring="Mummu Ring",
    back={ name="Gunslinger's Cape", augments={'Enmity-2','"Mag.Atk.Bns."+2','"Phantom Roll" ability delay -5',}},}
	
	sets.qd.damage={head={ name="Herculean Helm", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Crit. hit damage +1%','STR+5','Mag. Acc.+9','"Mag.Atk.Bns."+10',}},
    body={ name="Samnuha Coat", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+5','"Dual Wield"+5',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Crit.hit rate+3','STR+9','Mag. Acc.+9',}},
    feet="Mummu Gamash. +1",
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Friomisi Earring",
    right_ear="Crematio Earring",
    left_ring="Dingir Ring",
    right_ring="Acumen Ring",
    back={ name="Gunslinger's Cape", augments={'Enmity-2','"Mag.Atk.Bns."+2','"Phantom Roll" ability delay -5',}},}
	
	sets.qd.stp={}
--ja sets

--ra sets
	sets.midshot.damage={head="Meghanada Visor +2",
    body="Mummu Jacket +2",
    hands="Mummu Wrists +1",
    legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
    feet="Mummu Gamash. +1",
    neck="Iskur Gorget",
    waist="Elanid Belt",
    left_ear="Enervating Earring",
    right_ear="Telos Earring",
    left_ring="Dingir Ring",
    right_ring="Ilabrat Ring",
    back={ name="Gunslinger's Cape", augments={'Enmity-2','"Mag.Atk.Bns."+2','"Phantom Roll" ability delay -5',}},}
	
	sets.midshot.accuracy={}
--ra sets

--ws sets
	--ranged ws
	sets.wsdmg["Hot Shot"]={}
	
	sets.wsacc["Hot Shot"]={}
	
	sets.wsdmg["Split Shot"]={}
	
	sets.wsacc["Split Shot"]={}
	
	sets.wsdmg["Sniper Shot"]={}
	
	sets.wsacc["Sniper Shot"]={}
	
	sets.wsdmg["Slug Shot"]={}
	
	sets.wsacc["Slug Shot"]={}
	
	sets.wsdmg["Detonator"]={}
	
	sets.wsacc["Detonator"]={}
	
	sets.wsdmg["Leaden Salute"]={}
	
	sets.wsacc["Leaden Salute"]={}
	
	sets.wsdmg["Numbing Shot"]={}
	
	sets.wsacc["Numbing Shot"]={}
	
	sets.wsdmg["Wildfire"]={}
	
	sets.wsacc["Wildfire"]={}
	
	sets.wsdmg["Last Stand"]={}
	
	sets.wsacc["Last Stand"]={}
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
	
	sets.wsdmg["Savage Blade"]={}
	
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
	sets.tp.lowacc={head={ name="Adhemar Bonnet", augments={'STR+10','DEX+10','Attack+15',}},
    body={ name="Adhemar Jacket", augments={'STR+10','DEX+10','Attack+15',}},
    hands={ name="Adhemar Wristbands", augments={'STR+10','DEX+10','Attack+15',}},
    legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
    feet={ name="Herculean Boots", augments={'Accuracy+16','"Triple Atk."+4','AGI+2','Attack+9',}},
    neck="Iskur Gorget",
    waist="Windbuffet Belt +1",
    left_ear="Suppanomimi",
    right_ear="Telos Earring",
    left_ring="Petrov Ring",
    right_ring="Epona's Ring",
    back="Ground. Mantle +1",}
	
	sets.tp.medacc=set_combine(sets.tp.lowacc, {})
	
	sets.tp.highacc=set_combine(sets.tp.medacc, {})
	
	sets.hybrid.lowacc={}
	
	sets.hybrid.medacc={}
	
	sets.hybrid.highacc={}
--engaged sets

--idle sets
	sets.idle.regen={head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Mummu Kecks +2",
    feet="Meg. Jam. +2",
    neck="Sanctity Necklace",
    waist="Flume Belt",
    left_ear="Ethereal Earring",
    right_ear="Infused Earring",
    left_ring="Sheltered Ring",
    right_ring="Paguroidea Ring",
    back="Moonbeam Cape",}
	
	sets.idle.refresh={head={ name="Rawhide Mask", augments={'HP+50','Accuracy+15','Evasion+20',}},
    body="Mekosu. Harness",
    hands={ name="Herculean Gloves", augments={'Blood Pact Dmg.+3','Attack+15','"Refresh"+1','Accuracy+8 Attack+8','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
    legs={ name="Rawhide Trousers", augments={'MP+50','"Fast Cast"+5','"Refresh"+1',}},
    feet={ name="Herculean Boots", augments={'Damage taken-3%','STR+6','Attack+8',}},
    neck="Loricate Torque +1",
    waist="Flume Belt",
    left_ear="Etiolation Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Vocane Ring",
    back="Moonbeam Cape",}
	
	sets.idle.dt={head={ name="Herculean Helm", augments={'Accuracy+2','Damage taken-4%','STR+6','Attack+13',}},
    body="Meg. Cuirie +2",
    hands={ name="Herculean Gloves", augments={'Attack+30','Damage taken-3%','AGI+8',}},
    legs="Mummu Kecks +2",
    feet={ name="Herculean Boots", augments={'Damage taken-3%','STR+6','Attack+8',}},
    neck="Loricate Torque +1",
    waist="Flume Belt",
    left_ear="Etiolation Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Vocane Ring",
    back="Moonbeam Cape",}
			
	sets.idle.regenmove=set_combine(sets.idle.regen,{legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},})
	
	sets.idle.refreshmove=set_combine(sets.idle.refresh,{legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},})
	
	sets.idle.dtmove=set_combine(sets.idle.dt,{legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},})
--idle sets
end

function precast(spell)
	if command.prefix=="/range" then
		equip(sets.preshot)
	end
	if command.prefix=="/magic" then
		equip(sets.precast.magic)
	end
	if command.prefix=="/ninjutsu" then
		equip(sets.precast.ninjutsu)
	end
	if command.prefix=="/jobability" then
		equip(sets.ja[spell.english])
	end
	if command.prefix=="/weaponskill" then
		if WSMode=="damage" then
			equip(sets.wsdmg[spell.english])
		elseif WSMode=="accuracy" then
			equip(sets.wsacc[spell.english])
		end
	end
end

function midcast(spell)
	if command.prefix=="/range" then
		equip(sets.midshot[ShotType])
	end
	if command.prefix=="/magic" then
		equip(sets.midcast.magic[spell.english])
	end
	if command.prefix=="/ninjutsu" then
		equip(sets.midcast.ninjutsu)
	end
end

function aftercast(spell)
	if player.status=="Engaged" then
		if TPSet=="DD" then
			equip(sets.tp["TPType"])
		elseif TPSet=="Hybrid" then
			equip(sets.hybrid["TPType"])
		elseif TPSet=="PDT" then
			equip(sets.idle.pdt)
		elseif TPSet=="MDT" then
			equip(sets.idle.mdt)
		end
	else
		equip(sets.idle[IdleType])
	end
end

function status_change(new,old)
	if new=="Engaged" then
		if TPSet=="DD" then
			equip(sets.tp["TPType"])
		elseif TPSet=="Hybrid" then
			equip(sets.tp["TPType"])
		elseif TPSet=="PDT" then
			equip(sets.idle.pdt)
		elseif TPSet=="MDT" then
			equip(sets.idle.mdt)
		end
	else
		equip(sets.idle[IdleType])
	end
end