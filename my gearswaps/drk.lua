function get_sets()
-- include
	include('boxes.lua')
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
	
	sets.Weaponry= T{}
	sets.TPSet= T{}
	sets.TPType= T{}
--variables

--basesets
	sets.precast={}
	sets.precast.ja={}
	sets.precast.ws={}	
	sets.midcast={}
	sets.aftercast={}
	sets.aftercast.gs={}
	sets.aftercast.scythe={}
--basesets

--precast sets
	--magic
	sets.precast.ma={head="Cizin Helm +1", body="Nuevo Coselete", legs="Enif Cosciales",}
	--magic
	
	--ws basesets
	sets.strws={ammo="Bomb Core", head="Yaoyotl Helm", body="Miki. Breastplate", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Mikinaak Greaves", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Buquwik Cape",}
	
	sets.strwstb= set_combine(sets.strws, {left_ear="Moonshade Earring", right_ear="Brutal Earring",})
	
	sets.atkws={ammo="Bomb Core", head="Yaoyotl Helm", body="Miki. Breastplate", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Mikinaak Greaves", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Buquwik Cape",}
	
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
	
	sets.precast.ws["Power Slash"]= set_combine(sets.critwstb, {neck="Light Gorget", waist="Light Belt",})
	
	sets.precast.ws["Frostbite"]= set_combine(sets.magicwstb, {neck="Snow Gorget", waist="Snow Belt",})
	
	sets.precast.ws["Freezebite"]= set_combine(sets.magicwstb, {neck="Snow Gorget", waist="Snow Belt",})
	
	sets.precast.ws["Shockwave"]= sets.strwstb
	
	sets.precast.ws["Crescent Moon"]= sets.strwstb
	
	sets.precast.ws["Sickle Moon"]= sets.strwstb
	
	sets.precast.ws["Spinning Slash"]= set_combine(sets.strwstb, {neck="Breeze Gorget", waist="Breeze Belt",})
	
	sets.precast.ws["Ground Strike"]= set_combine(sets.strwstb, {neck="Breeze Gorget", waist="Breeze Belt",})
	
	sets.precast.ws["Herculean Slash"]= set_combine(sets.magicwstb, {neck="Breeze Gorget", waist="Breeze Belt",})
	
	sets.precast.ws["Torcleaver"]= set_combine(sets.vitwstb, {neck="Light Gorget", waist="Light Belt",})
	
	sets.precast.ws["Resolution"]= set_combine(sets.atkwstb, {neck="Breeze Gorget", waist="Breeze Belt",})
		--great sword
		
		--scythe
	sets.precast.ws["Slice"]= sets.atkwstb
	
	sets.precast.ws["Dark Harvest"]= sets.magicwstb
	
	sets.precast.ws["Shadow of Death"]= sets.magicwstb
	
	sets.precast.ws["Nightmare Scythe"]= sets.magicwstb
	
	sets.precast.ws["Spinning Scythe"]= sets.strwstb
	
	sets.precast.ws["Vorpal Scythe"]= set_combine(sets.critwstb, {neck="Light Gorget", waist="Light Belt",})
	
	sets.precast.ws["Guillotine"]= set_combine(sets.atkws, {neck="Snow Gorget", waist="Snow Belt",})
	
	sets.precast.ws["Cross Reaper"]= set_combine(sets.atkws, {neck="Snow Gorget", waist="Snow Belt",})
	
	sets.precast.ws["Spiral Hell"]= set_combine(sets.strwstb, {neck="Snow Gorget", waist="Snow Belt",})
	
	sets.precast.ws["Insurgency"]= set_combine(sets.strws, {neck="Light Gorget", waist="Light Belt",})
	
	sets.precast.ws["Infernal Scythe"]= sets.magicwstb
	
	sets.precast.ws["Quietus"]= set_combine(sets.strwstb, {neck="Snow Gorget", waist="Snow Belt",})
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
	
	sets.precast.ws["Savage Blade"]= set_combine(sets.atkws, {neck="Breeze Gorget", waist="Breeze Belt",})
	
	sets.precast.ws["Sanguine Blade"]= sets.magicwstb
	
	sets.precast.ws["Requiescat"]= set_combine(sets.atkwstb, {neck="Shadow Gorget", waist="Shadow Belt",})
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
	sets.aftercast.gs.multi={main="Tunglmyrkvi", sub="Pole Grip", ammo="Hagneia Stone", head="Otomi Helm", body="Enif Corazza", hands="Ares' Gauntlets +1",
	legs="Ares' Flanchard +1", feet="Ejekamal Boots", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Tripudio Earring", right_ear="Brutal Earring", left_ring="K'ayres Ring", 
	right_ring="Rajas Ring", back="Atheling Mantle",}
	
	sets.aftercast.gs.acc= set_combine(sets.aftercast.gs.multi, {head="Yaoyotl Helm",})
	
	sets.aftercast.gs.xhit= set_combine(sets.aftercast.gs.acc, {head="Xaddi Headgear", body="Xaddi Mail",})
	
	sets.aftercast.gs.hybrid={main="Tunglmyrkvi", sub="Pole Grip", ammo="Angha Gem", head="Ighwa Cap", body="Cizin Mail +1", hands="Cizin Mufflers +1", 
	legs="Cizin Breeches", feet="Cizin Greaves +1", neck="Twilight Torque", waist="Dynamic Belt +1",
	left_ear="Tripudio Earring", right_ear="Brutal Earring", left_ring="Patricius Ring", right_ring="Dark Ring",
    back="Mollusca Mantle",}
	
	sets.aftercast.scythe.multi= set_combine(sets.aftercast.gs.multi, {main="Tajabit",})
	
	sets.aftercast.scythe.acc= set_combine(sets.aftercast.gs.acc, {main="Tajabit",})
	
	sets.aftercast.scythe.xhit= set_combine(sets.aftercast.gs.xhit, {main="Tajabit",})
	
	sets.aftercast.scythe.hybrid= set_combine(sets.aftercast.gs.hybrid, {main="Tajabit",})
	--tp sets

	--dt sets
	sets.aftercast.gs.pdt= set_combine(sets.aftercast.gs.hybrid, {})
	
	sets.aftercast.gs.mdt= set_combine(sets.aftercast.gs.hybrid, {})
	
	sets.aftercast.scythe.pdt= set_combine(sets.aftercast.scythe.hybrid, {})
	
	sets.aftercast.scythe.mdt= set_combine(sets.aftercast.scythe.pdt, {})
	--dt sets
	
	--idle sets
	sets.aftercast.gs.idle={main="Tunglmyrkvi", sub="Pole Grip", ammo="Demonry Stone", head="Twilight Helm", body="Twilight Mail", hands="Cizin Mufflers +1", 
	legs="Blood Cuisses", feet="Cizin Greaves +1", neck="Twilight Torque", waist="Nierenschutz",
	left_ear="Ethereal Earring", right_ear="Sanare Earring", left_ring="Shadow Ring", 
	right_ring="Sheltered Ring", back="Shadow Mantle",}
	
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
	if player.status=="Engaged" then
		if Weaponry=="gs" then			
			equip(sets.aftercast.gs[TPType])
		elseif Weaponry=="scythe" then
			equip(sets.aftercast.scythe[TPType])
		end
	else
		if Weaponry=="gs" then
			equip(sets.aftercast.gs.idle)
		elseif Weaponry=="scythe" then
			equip(sets.aftercast.scythe.idle)
		end
	end
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
			equip(sets.aftercast.gs.idle)
		elseif Weaponry=="scythe" then
			equip(sets.aftercast.scythe.idle)
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
end

function unload(new_job)
	windower.send_command('boxesoff')
end