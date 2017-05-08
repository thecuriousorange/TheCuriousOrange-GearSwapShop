function get_sets()
-- include
	include('organizer-lib.lua')
-- include
--aliases
	send_command('alias ddsetgs gs equip sets.aftercast.gs.multi')
	send_command('alias idlegs gs equip sets.aftercast.gs.idle')
	send_command('alias hybridsetgs gs equip sets.aftercast.gs.hybrid')
	send_command('alias pdtsetgs gs equip sets.aftercast.gs.pdt')
	send_command('alias mdtsetgs gs equip sets.aftercast.gs.mdt')
	send_command('alias ddsetscythe gs equip sets.aftercast.scythe.multi')
	send_command('alias idlescythe gs equip sets.aftercast.scythe.idle')
	send_command('alias hybridsetscythe gs equip sets.aftercast.scythe.hybrid')
	send_command('alias pdtsetscythe gs equip sets.aftercast.scythe.pdt')
	send_command('alias mdtsetscythe gs equip sets.aftercast.scythe.mdt')
	send_command('alias greatswordmode gs c gsmode;bind #4 idlegs;bind #2 pdtsetgs;bind #8 mdtsetgs;bind #t ddsetgs;bind #h hybridsetgs')
	send_command('alias scythemode gs c smode;bind #4 idlescythe;bind #2 pdtsetscythe;bind #8 mdtsetscythe;bind #t ddsetscythe;bind #h hybridsetscythe')
--aliases

--keybinds
	send_command('bind #4 idle')
	send_command('bind #2 pdtset')
	send_command('bind #8 mdtset')
	send_command('bind #h hybridset')
	send_command('bind #t ddset')
	send_command('bind @f1 gs c dd')
	send_command('bind @f2 gs c hybrid')
	send_command('bind @f3 gs c pdt')
	send_command('bind @f4 gs c mdt')
	send_command('bind @f9 greatswordmode')
	send_command('bind @f10 scythemode')
	send_command('bind @f12 gs c wstoggle')
	send_command('bind #f1 gs c style1;alias ddsetgs gs equip sets.aftercast.gs.multi;alias ddsetscythe gs equip sets.aftercast.scythe.multi')
	send_command('bind #f2 gs c style2;alias ddsetgs gs equip sets.aftercast.gs.acc;alias ddsetscythe gs equip sets.aftercast.scythe.acc')
	send_command('bind #f3 gs c style3;alias ddsetgs gs equip sets.aftercast.gs.xhit;alias ddsetscythe gs equip sets.aftercast.scythe.xhit')
--keybinds

--default macro set

--default macro set

--variables
	Weaponry="gs"
	TPSet="dd"
	TPType="multi"
	IdleType="standard"
	WSMode="dd"
	
	sets.Weaponry= T{}
	sets.TPSet= T{}
	sets.TPType= T{}
	sets.IdleType= T{}
--variables

--basesets
	sets.precast={}
	sets.precast.ja={}
	sets.precast.ws={}	
	sets.midcast={}
	sets.aftercast={}
	sets.aftercast.gs={}
	sets.aftercast.gs.idle={}
	sets.aftercast.scythe={}
	sets.aftercast.scythe.idle={}
--basesets

--precast sets
	--magic
	sets.precast.ma={ammo="Sapience Orb",
    head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
    body={ name="Odyss. Chestplate", augments={'Mag. Acc.+19','"Fast Cast"+6','VIT+1','"Mag.Atk.Bns."+6',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}},
    legs={ name="Odyssean Cuisses", augments={'STR+4','"Fast Cast"+7','Accuracy+7 Attack+7',}},
    feet={ name="Odyssean Greaves", augments={'Mag. Acc.+21','"Fast Cast"+6','MND+4',}},
    neck={ name="Jeweled Collar", augments={'"Fast Cast"+2','MND+2','MP recovered while healing +2',}},
    left_ear="Etiolation Earring",
    right_ear="Loquac. Earring",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring",}
	--magic
	
	--ws basesets
	sets.wsacc={head="Ynglinga Sallet",}
	
	sets.strws={ammo="Knobkierrie",
    head={ name="Argosy Celata", augments={'DEX+10','Accuracy+15','"Dbl.Atk."+2',}},
    body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}},
    hands={ name="Argosy Mufflers", augments={'STR+15','"Dbl.Atk."+2','Haste+2%',}},
    legs={ name="Argosy Breeches", augments={'STR+10','Attack+20','"Store TP"+5',}},
    feet="Sulev. Leggings +1",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Zwazo Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Ifrit Ring +1",
    right_ring="Niqmaddu Ring",
    back={ name="Niht Mantle", augments={'Attack+14','Dark magic skill +5','"Drain" and "Aspir" potency +21','Weapon skill damage +4%',}},}
	
	sets.strwstb= set_combine(sets.strws, {left_ear="Moonshade Earring", right_ear="Brutal Earring",})
	
	sets.atkws=sets.strws
	
	sets.atkwstb= set_combine(sets.atkws, {left_ear="Moonshade Earring", right_ear="Brutal Earring",})
	
	sets.magicws= set_combine(sets.atkws, {left_ear="Gwati Earring", right_ear="Friomisi Earring", 
	neck="Eddy Necklace", left_ring="Sangoma Ring", right_ring="Strendu Ring", back="Toro Cape",})
	
	sets.magicwstb= set_combine(sets.magicws, {left_ear="Moonshade Earring", right_ear="Brutal Earring",})
	
	sets.critws= set_combine(sets.strws, {back="Rancorous Mantle",})
	
	sets.critwstb= set_combine(sets.critws, {left_ear="Moonshade Earring", right_ear="Brutal Earring",})
	
	sets.vitws= set_combine(sets.strws, {left_ring="Terrasoul Ring", right_ring="Terrasoul Ring",})
	
	sets.vitwstb= set_combine(sets.vitws, {left_ear="Moonshade Earring", right_ear="Brutal Earring",})
	--ws basesets
	
	--ws
		--great sword
	sets.precast.ws["Hard Slash"]= sets.strws
	
	sets.precast.ws["Power Slash"]= set_combine(sets.critwstb, {neck="Fotia Gorget", waist="Fotia Belt",})
	
	sets.precast.ws["Frostbite"]= set_combine(sets.magicwstb, {neck="Fotia Gorget", waist="Fotia Belt",})
	
	sets.precast.ws["Freezebite"]= set_combine(sets.magicwstb, {neck="Fotia Gorget", waist="Fotia Belt",})
	
	sets.precast.ws["Shockwave"]= sets.strwstb
	
	sets.precast.ws["Crescent Moon"]= sets.strwstb
	
	sets.precast.ws["Sickle Moon"]= sets.strwstb
	
	sets.precast.ws["Spinning Slash"]= set_combine(sets.strwstb, {neck="Fotia Gorget", waist="Fotia Belt",})
	
	sets.precast.ws["Ground Strike"]= set_combine(sets.strwstb, {neck="Fotia Gorget", waist="Fotia Belt",})
	
	sets.precast.ws["Herculean Slash"]= set_combine(sets.magicwstb, {neck="Fotia Gorget", waist="Fotia Belt",})
	
	sets.precast.ws["Torcleaver"]= set_combine(sets.vitwstb, {neck="Fotia Gorget", waist="Fotia Belt",})
	
	sets.precast.ws["Resolution"]= set_combine(sets.atkwstb, {neck="Fotia Gorget", waist="Fotia Belt",})
		--great sword
		
		--scythe
	sets.precast.ws["Slice"]= sets.atkwstb
	
	sets.precast.ws["Dark Harvest"]= sets.magicwstb
	
	sets.precast.ws["Shadow of Death"]= sets.magicwstb
	
	sets.precast.ws["Nightmare Scythe"]= sets.magicwstb
	
	sets.precast.ws["Spinning Scythe"]= sets.strwstb
	
	sets.precast.ws["Vorpal Scythe"]= set_combine(sets.critwstb, {neck="Fotia Gorget", waist="Fotia Belt",})
	
	sets.precast.ws["Guillotine"]= set_combine(sets.atkws, {neck="Fotia Gorget", waist="Fotia Belt",})
	
	sets.precast.ws["Cross Reaper"]= set_combine(sets.atkws, {neck="Fotia Gorget", waist="Fotia Belt",})
	
	sets.precast.ws["Spiral Hell"]= set_combine(sets.strwstb, {neck="Fotia Gorget", waist="Fotia Belt",})
	
	sets.precast.ws["Insurgency"]= set_combine(sets.strws, {neck="Fotia Gorget", waist="Fotia Belt",})
	
	sets.precast.ws["Infernal Scythe"]= sets.magicwstb
	
	sets.precast.ws["Quietus"]= set_combine(sets.strwstb, {neck="Fotia Gorget", waist="Fotia Belt",})
		--scythe
	
		--sword
	sets.precast.ws["Fast Blade"]= sets.critws
	
	sets.precast.ws["Burning Blade"]= sets.magicws
	
	sets.precast.ws["Red Lotus Blade"]= sets.magicws
	
	sets.precast.ws["Flat Blade"]= sets.strws
	
	sets.precast.ws["Shining Blade"]= sets.magicws
	
	sets.precast.ws["Seraph Blade"]= sets.magicws
	
	sets.precast.ws["Circle Blade"]= sets.atkws
	
	sets.precast.ws["Spirits Within"]= sets.magicws
	
	sets.precast.ws["Vorpal Blade"]= sets.atkws
	
	sets.precast.ws["Savage Blade"]= set_combine(sets.atkws, {neck="Fotia Gorget", waist="Fotia Belt",})
	
	sets.precast.ws["Sanguine Blade"]= sets.magicwstb
	
	sets.precast.ws["Requiescat"]= set_combine(sets.atkwstb, {neck="Fotia Gorget", waist="Fotia Belt",})
		--sword
		
		--axe
	sets.precast.ws["Raging Axe"]={}
	
	sets.precast.ws["Smash Axe"]={}
	
	sets.precast.ws["Gale Axe"]={}
	
	sets.precast.ws["Avalanche Axe"]={}
	
	sets.precast.ws["Spinning Axe"]={}
	
	sets.precast.ws["Rampage"]={}
	
	sets.precast.ws["Decimation"]={}
	
	sets.precast.ws["Bora Axe"]={}
		--axe
	--ws
--precast sets

--midcast sets
	--magic base-sets
	sets.nuke={}
	sets.dark={}
	sets.enfeeb={}
	sets.recast={}
	--magic base-sets
	
	--Dark Magic
	sets.midcast['Absorb-ACC']={}
	sets.midcast['Absorb-AGI']={}
	sets.midcast['Absorb-Attri']={}
	sets.midcast['Absorb-CHR']={}
	sets.midcast['Absorb-DEX']={}
	sets.midcast['Absorb-INT']={}
	sets.midcast['Absorb-MND']={}
	sets.midcast['Absorb-STR']={}
	sets.midcast['Absorb-TP']={}
	sets.midcast['Absorb-VIT']={}
	sets.midcast['Aspir']={}
	sets.midcast['Aspir II']={}
	sets.midcast['Bio']={}
	sets.midcast['Bio II']={}
	sets.midcast['Drain']={}
	sets.midcast['Drain II']={}
	sets.midcast['Dread Spikes']={}
	sets.midcast['Endark']={}
	sets.midcast['Stun']={}
	--Dark Magic
	
	--Elemental Magic
	sets.midcast['Aero']={}
	sets.midcast['Aero II']={}
	sets.midcast['Aero III']={}
	sets.midcast['Blizzard']={}
	sets.midcast['Blizzard II']={}
	sets.midcast['Blizzard III']={}
	sets.midcast['Fire']={}
	sets.midcast['Fire II']={}
	sets.midcast['Fire III']={}
	sets.midcast['Impact']={}
	sets.midcast['Stone']={}
	sets.midcast['Stone II']={}
	sets.midcast['Stone III']={}
	sets.midcast['Thunder']={}
	sets.midcast['Thunder II']={}
	sets.midcast['Thunder III']={}
	sets.midcast['Water']={}
	sets.midcast['Water II']={}
	sets.midcast['Water III']={}
	--Elemental Magic
	
	--Enfeebling Magic
	sets.midcast['Bind']={}
	sets.midcast['Blind']={}
	sets.midcast['Break']={}
	sets.midcast['Poison']={}
	sets.midcast['Poison II']={}
	sets.midcast['Poisonga']={}
	sets.midcast['Sleep']={}
	sets.midcast['Sleep II']={}
	--Enfeebling Magic
--midcast sets

--aftercast sets

	--tp sets
	sets.aftercast.gs.multi={ammo="Ginsen",
    head="Flam. Zucchetto +1",
    body="Dagon Breast.",
    hands={ name="Valorous Mitts", augments={'Accuracy+18 Attack+18','"Dbl.Atk."+2','Accuracy+9',}},
    legs={ name="Odyssean Cuisses", augments={'Accuracy+23 Attack+23','"Dbl.Atk."+2','Accuracy+8',}},
    feet={ name="Odyssean Greaves", augments={'"Cure" potency +4%','Mag. Acc.+10 "Mag.Atk.Bns."+10','Quadruple Attack +2','Accuracy+20 Attack+20',}},
    neck="Ganesha's Mala",
    waist="Ioskeha Belt",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Hetairoi Ring",
    right_ring="Niqmaddu Ring",
    back="Ground. Mantle +1",}
	
	sets.aftercast.gs.acc= {ammo="Ginsen",
    head={ name="Argosy Celata", augments={'DEX+10','Accuracy+15','"Dbl.Atk."+2',}},
    body="Dagon Breast.",
    hands={ name="Emicho Gauntlets", augments={'HP+50','DEX+10','Accuracy+15',}},
    legs="Sulev. Cuisses +2",
    feet="Flam. Gambieras +1",
    neck="Loricate Torque +1",
    waist="Ioskeha Belt",
    left_ear="Mache Earring",
    right_ear="Telos Earring",
    left_ring="Ramuh Ring +1",
    right_ring="Niqmaddu Ring",
    back="Ground. Mantle +1",}
	
	sets.aftercast.gs.xhit= set_combine(sets.aftercast.gs.acc, {head="Xaddi Headgear", body="Xaddi Mail",})
	
	sets.aftercast.gs.hybrid={ammo="Ginsen",
    head="Sulevia's Mask +1",
    body="Sulevia's Plate. +1",
    hands="Sulev. Gauntlets +1",
    legs="Sulev. Cuisses +2",
    feet="Sulev. Leggings +1",
    neck="Loricate Torque +1",
    waist="Tempus Fugit",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Vocane Ring",
    right_ring="Defending Ring",
    back="Ground. Mantle +1",}
	
	sets.aftercast.scythe.multi= set_combine(sets.aftercast.gs.multi, {main="Tajabit",})
	
	sets.aftercast.scythe.acc= set_combine(sets.aftercast.gs.acc, {main="Tajabit",})
	
	sets.aftercast.scythe.xhit= set_combine(sets.aftercast.gs.xhit, {main="Tajabit",})
	
	sets.aftercast.scythe.hybrid= set_combine(sets.aftercast.gs.hybrid, {main="Tajabit",})
	--tp sets

	--dt sets
	sets.aftercast.gs.pdt={ammo="Vanir Battery",
    head="Sulevia's Mask +1",
    body={ name="Jumalik Mail", augments={'HP+45','Attack+14','Enmity+8','"Refresh"+1',}},
    hands="Sulev. Gauntlets +1",
    legs="Sulev. Cuisses +2",
    feet={ name="Amm Greaves", augments={'HP+50','VIT+9','Accuracy+14','Damage taken-1%',}},
    neck="Loricate Torque +1",
    waist="Nierenschutz",
    left_ear="Ethereal Earring",
    right_ear="Sanare Earring",
    left_ring="Vocane Ring",
    right_ring="Defending Ring",
    back="Shadow Mantle",}
	
	sets.aftercast.gs.dt={ammo="Vanir Battery",
    head="Sulevia's Mask +1",
    body={ name="Jumalik Mail", augments={'HP+45','Attack+14','Enmity+8','"Refresh"+1',}},
    hands="Sulev. Gauntlets +1",
    legs="Sulev. Cuisses +2",
    feet={ name="Amm Greaves", augments={'HP+50','VIT+9','Accuracy+14','Damage taken-1%',}},
    neck="Loricate Torque +1",
    waist="Nierenschutz",
    left_ear="Ethereal Earring",
    right_ear="Sanare Earring",
    left_ring="Vocane Ring",
    right_ring="Defending Ring",
    back="Shadow Mantle",}
	
	sets.aftercast.gs.mdt={ammo="Vanir Battery",
    head="Sulevia's Mask +1",
    body={ name="Jumalik Mail", augments={'HP+45','Attack+14','Enmity+8','"Refresh"+1',}},
    hands="Sulev. Gauntlets +1",
    legs="Sulev. Cuisses +2",
    feet={ name="Amm Greaves", augments={'HP+50','VIT+9','Accuracy+14','Damage taken-1%',}},
    neck="Loricate Torque +1",
    waist="Nierenschutz",
    left_ear="Ethereal Earring",
    right_ear="Sanare Earring",
    left_ring="Shadow Ring",
    right_ring="Defending Ring",
    back="Engulfer Cape +1",}
	
	sets.aftercast.scythe.pdt=sets.aftercast.gs.pdt
	
	sets.aftercast.scythe.mdt=sets.aftercast.gs.mdt
	
	sets.aftercast.scythe.dt=sets.aftercast.gs.dt
	--dt sets
	
	--idle sets
	sets.aftercast.gs.idle.standard={ammo="Vanir Battery",head="Baghere Salade",
    body={ name="Jumalik Mail", augments={'HP+45','Attack+14','Enmity+8','"Refresh"+1',}},
    hands={ name="Odyssean Gauntlets", augments={'Pet: Crit.hit rate +3','Attack+4','"Refresh"+1',}},
    legs={ name="Carmine Cuisses", augments={'Accuracy+10','DEX+10','MND+15',}},
    feet={ name="Odyssean Greaves", augments={'Pet: STR+5','STR+4','"Refresh"+1',}},
    neck="Coatl Gorget +1",
    waist="Nierenschutz",
    left_ear="Ethereal Earring",
    right_ear="Infused Earring",
    left_ring="Paguroidea Ring",
    right_ring="Sheltered Ring",
    back="Shadow Mantle",}
	
	sets.aftercast.gs.idle.refresh=set_combine(sets.aftercast.gs.idle.standard,{head={ name="Odyssean Helm", augments={'"Mag.Atk.Bns."+8','Potency of "Cure" effect received+3%','"Refresh"+1','Accuracy+5 Attack+5',}},
    body={ name="Jumalik Mail", augments={'HP+45','Attack+14','Enmity+8','"Refresh"+1',}},
    hands={ name="Odyssean Gauntlets", augments={'Pet: Crit.hit rate +3','Attack+4','"Refresh"+1',}},
    legs={ name="Carmine Cuisses", augments={'Accuracy+10','DEX+10','MND+15',}},
    feet={ name="Odyssean Greaves", augments={'Pet: STR+5','STR+4','"Refresh"+1',}},})
	
	sets.aftercast.scythe.idle= set_combine(sets.aftercast.gs.idle, {main="Tajabit",})
	--idle sets
--aftercast sets
end

function precast(spell)
	if spell.prefix=="/magic" then
		equip(sets.precast.ma)
	elseif spell.prefix=="/jobability" then
		equip(sets.precast.ja[spell.english])
	elseif spell.prefix=="/weaponskill" then
		equip(sets.precast.ws[spell.english])
		if WSMode=="acc" then
			equip(sets.wsacc)
		end
	end
end

function midcast(spell)
	if spell.type=="DarkMagic" then
		equip(sets.midcast[spell.english])
	elseif spell.type=="EnfeeblingMagic" then
		equip(sets.midcast[spell.english])
	elseif spell.type=="ElementalMagic" then
		equip(sets.midcast[spell.englihs])
	end
end

function aftercast(spell)
	status_change(player.status)
end

function status_change(new,old)
	if new=="Engaged" then
		if Weaponry=="gs" then			
			equip(sets.aftercast.gs[TPType])
		elseif Weaponry=="scythe" then
			equip(sets.aftercast.scythe[TPType])
		end
	else
		if Weaponry=="gs" then
			equip(sets.aftercast.gs.idle[IdleType])
		elseif Weaponry=="scythe" then
			equip(sets.aftercast.scythe.idle[IdleType])
		end
	end
end

function self_command(command)
	if command=="gsmode" then
		if Weaponry=="gs" then
			status_change(player.status)
		else
			Weaponry="gs"
			status_change(player.status)
		end
	end
	if command=="scythemode" then
		if Weaponry=="scythe" then
			status_change(player.status)
		else
			Weaponry="scythe"
			status_change(player.status)
		end
	end
	if command=="DD" then
		if TPMode=="DD" then
			add_to_chat(206, 'DD MODE ALREADY ACTIVE')
		else
			TPMode="DD"
			add_to_chat(206, 'DD MODE')
			send_command('text tpvariable text "DD MODE"')
		end
	end
	if command=="Hybrid" then
		if TPType=="Hybrid" then
			add_to_chat(206, 'Hybrid MODE ALREADY ACTIVE')
		else
			TPType="Hybrid"
			add_to_chat(206, 'HYBRID MODE')
			send_command('text tpvariable text "HYBRID MODE"')
		end
	end
	if command=="PDT" then
		if TPType=="PDT" then
			add_to_chat(206, 'PDT MODE ALREADY ACTIVE')
		else
			TPType="PDT"
			add_to_chat(206, 'PDT MODE')
			send_command('text tpvariable text "PDT MODE"')
		end
	end
	if command=="MDT" then
		if TPType=="MDT" then
			add_to_chat(206, 'MDT MODE ALREADY ACTIVE')
		else
			TPType="MDT"
			add_to_chat(206, 'MDT MODE')
			send_command('text tpvariable text "MDT MODE"')
		end
	end
	if command=="style1" then
		if TPType=="multi" then
			add_to_chat(206, 'multi hit style I tp set already in use')
		else
			TPType="multi"
			add_to_chat(206, 'MULTIHIT STYLE 1 SET')
			send_command('text idlevariable text "STYLE I"')
		end
	end
	if command=="style2" then
		if TPType=="acc" then
			add_to_chat(206, 'multi hit style II tp set already in use')
		else
			TPType="acc"
			add_to_chat(206, 'MULTIHIT STYLE 2 SET')
			send_command('text idlevariable text "STYLE II"')
		end
	end
	if command=="style3" then
		if TPType=="xhit" then
			add_to_chat(206, 'multi hit style III tp set already in use')
		else
			TPType="xhit"
			add_to_chat(206, 'MULTIHIT STYLE 3 SET')
			send_command('text idlevariable text "STYLE III"')
		end
	end
	if command=="wstoggle" then
		if WSMode=="dd" then
			WSMode="acc"
			add_to_chat(206,'WSMode:ACC')
		else
			WSMode="dd"
			add_to_chat(206,'WSMode:DD')
		end
	end
end

function file_unload(new_job)
	windower.send_command('boxesoff')
end