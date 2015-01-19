function get_sets()
-- include
	include('boxes.lua')
-- include
--text box setup

--text box setup

--default aliases

--default aliases

--keybinds

--keybinds

--macro selection
	send_command('input /macro book 6;input /macro set 1')
--macro selection

--variables
	TPMode="tp"
	TPType="lowacc"	
	IdleType="regen"
	WSType="Damage"
	Weaponry="GA"
	WeaponryClass="2h"
	TriggerMode="off"
	
	sets.TPMode=T{}
	sets.TPType=T{}	
	sets.IdleType=T{}
	sets.WSType=T{}
	sets.Weaponry=T{}
	sets.WeaponryClass=T{}
	sets.TriggerMode=T{}
--variables

--base sets
	sets.ja={}
	sets.ws={}
	sets.ws.damage={}
	sets.ws.accuracy={}
	sets.ma={}
	sets.ninjutsu={}
	sets.hybrid={}
	sets.idle={}
	sets.tp={}
	sets.otp={}
	sets.rtp={}
	sets.rotp={}
--base sets

--weaponry

--weaponry

--precast sets
	--job ability sets
	
	--job ability sets
	
	--weaponskill sets
	sets.ws.damage["Shield Break"]={}
	
	sets.ws.accuracy["Shield Break"]={}
	
	sets.ws.damage["Iron Tempest"]={}
	
	sets.ws.accuracy["Iron Tempest"]={}
	
	sets.ws.damage["Sturmwind"]={}
	
	sets.ws.accuracy["Sturmwind"]={}
	
	sets.ws.damage["Armor Break"]={}
	
	sets.ws.accuracy["Armor Break"]={}
	
	sets.ws.damage["Keen Edge"]={}
	
	sets.ws.accuracy["Keen Edge"]={}
	
	sets.ws.damage["Weapon Break"]={}
	
	sets.ws.accuracy["Weapon Break"]={}
	
	sets.ws.damage["Raging Rush"]={}
	
	sets.ws.accuracy["Raging Rush"]={}
	
	sets.ws.damage["Full Break"]={}
	
	sets.ws.accuracy["Full Break"]={}
	
	sets.ws.damage["Steel Cyclone"]={}
	
	sets.ws.accuracy["Steel Cyclone"]={}
	
	sets.ws.damage["Metatron Torment"]={}
	
	sets.ws.accuracy["Metatron Torment"]={}
	
	sets.ws.damage["King's Justice"]={}
	
	sets.ws.accuracy["King's Justice"]={}
	
	sets.ws.damage["Fell Cleave"]={}
	
	sets.ws.accuracy["Fell Cleave"]={}
	
	sets.ws.damage["Ukko's Fury"]={ammo="Yetshila", head="Felistris Mask", body="Mes. Haubergeon",
	hands={ name="Miki. Gauntlets", augments={'Attack+15','Accuracy+10','STR+10',}},
	neck="Light Gorget", waist="Light Belt", right_ear="Brutal Earring",
    legs={ name="Miki. Cuisses", augments={'Attack+15','Accuracy+10','STR+10',}},
    feet={ name="Hrafn Gambieras", augments={'Crit. hit damage +9%',}},
	left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
	left_ring="Ifrit Ring", right_ring="Rajas Ring", back="Rancorous Mantle",}
	
	sets.ws.accuracy["Ukko's Fury"]={}
	
	sets.ws.damage["Upheaval"]={head="Felistris Mask", body="Mes. Haubergeon", hands="Macabre Gaunt. +1",
	left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
	legs={ name="Miki. Cuisses", augments={'Attack+15','Accuracy+10','STR+10',}},
	left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
	feet="Whirlpool Greaves", neck="Light Gorget", waist="Light Belt", right_ear="Brutal Earring",
	left_ring="Terrasoul Ring", right_ring="Terrasoul Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Upheaval"]={}
	--GA WS SETS END
	
	--GS WS SETS START
	sets.ws.damage["Hard Slash"]={}
	
	sets.ws.accuracy["Hard Slash"]={}
	
	sets.ws.damage["Power Slash"]={}
	
	sets.ws.accuracy["Power Slash"]={}
	
	sets.ws.damage["Frostbite"]={}
	
	sets.ws.accuracy["Freezebite"]={}
	
	sets.ws.damage["Crescent Moon"]={}
	
	sets.ws.accuracy["Crescent Moon"]={}
	
	sets.ws.damage["Ground Strike"]={}
	
	sets.ws.accuracy["Ground Strike"]={}
	
	sets.ws.damage["Herculean Slash"]={}
	
	sets.ws.accuracy["Herculean Slash"]={}
	
	sets.ws.damage["Resolution"]={}
	
	sets.ws.accuracy["Resolution"]={}
	--GS WS SETS END
	--weaponskill sets
	
	--magic sets
		sets.ma.fc={}
		
		sets.ninjutsu.fc={}
	--magic sets
--precast sets

--midcast sets
	--magic sets
		sets.ma.mc={}
		
		sets.ninjutsu.mc={}
	--magic sets
--midcast sets

--aftercast sets
	--tp sets
	sets.tp.lowacc={ammo="Paeapua",
    head="Felistris Mask",
    body={ name="Xaddi Mail", augments={'Attack+15','Accuracy+10','"Store TP"+3',}},
	hands={ name="Xaddi Gauntlets", augments={'Accuracy+15','"Store TP"+3','"Dbl.Atk."+2',}},
	legs="Ares' Flanchard +1", neck="Asperity Necklace", waist="Windbuffet Belt +1",
	feet={ name="Ejekamal Boots", augments={'Haste+2','"Snapshot"+2','STR+8',}},
	left_ear="Tripudio Earring", right_ear="Brutal Earring", left_ring="K'ayres Ring", right_ring="Rajas Ring",
    back={ name="Mauler's Mantle", augments={'DEX+3','STR+1','Accuracy+6','Crit. hit damage +1%',}},}
	
	sets.tp.medacc=set_combine(sets.tp.lowacc, {head="Yaoyotl Helm", waist="Anguinus Belt", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",})
	
	sets.tp.highacc=set_combine(sets.tp.medacc, {head="Gavialis Helm", neck="Iqabi Necklace", left_ear="Tripudio Earring", right_ear="Zennaroi Earring", waist="Olseni Belt", legs={ name="Xaddi Cuisses", augments={'Attack +15','Accuracy +10','"Store TP"+3',}}, left_ring="Patricius Ring", right_ring="Mars's Ring", feet={name="Xaddi Boots", augments={'Attack +15','Accuracy +10','"Store TP"+3',}},})
	
	sets.otp.lowacc= set_combine(sets.tp.lowacc, {left_ring="Oneiros Ring",})
	
	sets.otp.medacc= set_combine(sets.tp.medacc, {left_ring="Oneiros Ring",})
	
	sets.otp.highacc= set_combine(sets.tp.highacc, {left_ring="Oneiros Ring",})
	
	sets.rtp.lowacc={}
	
	sets.rtp.medacc={}
	
	sets.rtp.highacc={}
	
	sets.rotp.lowacc= set_combine(sets.tp.lowacc, {left_ring="Oneiros Ring",})
	
	sets.rotp.medacc= set_combine(sets.tp.medacc, {left_ring="Oneiros Ring",})
	
	sets.rotp.highacc= set_combine(sets.tp.highacc, {left_ring="Oneiros Ring",})
	--tp sets
	
	--dt sets
	sets.pdt={ammo="Angha Gem", head="Ighwa Cap", body="Mekira Meikogai", neck="Twilight Torque",waist="Flume Belt",
	left_ear="Tripudio Earring", right_ear="Sanare Earring", right_ring="Defending Ring", back="Mollusca Mantle",
	hands={ name="Cizin Mufflers +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -3%','Crit.hit rate+1',}},
	legs={ name="Cizin Breeches +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -2%','Accuracy+8',}},
	feet={ name="Cizin Greaves +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -3%','Crit.hit rate+1',}},
	left_ring={ name="Dark Ring", augments={'Magic dmg. taken -4%','Breath dmg. taken -4%','Phys. dmg. taken -5%',}},}
	
	sets.mdt=set_combine(sets.pdt, {ammo="Vanir Battery", head="Felistris Mask", left_ring="Shadow Ring", waist="Nierenschutz",})
	--dt sets
	
	--idle sets
	sets.idle.regen={ammo="Angha Gem", head="Baghere Salade", body="Ares' Cuirass +1", feet="Hermes' Sandals",
	waist="Flume Belt", left_ear="Tripudio Earring", right_ear="Sanare Earring", left_ring="Paguroidea Ring",
	right_ring="Sheltered Ring", back="Shadow Mantle", neck="Wiglen Gorget",
	hands={ name="Cizin Mufflers +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -3%','Crit.hit rate+1',}},
    legs={ name="Cizin Breeches +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -2%','Accuracy+8',}},}
	
	sets.idle.dt=set_combine(sets.pdt, {back="Shadow Mantle", left_ring="Shadow Ring", feet="Hermes' Sandals",})
	--idle sets
--aftercast
end

function precast(spell)
	if spell.prefix=="/weaponskill" then
		if WSType=="Damage" then
			equip(sets.ws.damage[spell.english])
		else
			equip(sets.ws.accuracy[spell.english])
		end
	end
	if spell.prefix=="/jobability" then
		equip(sets.ja[spell.english])
	end
	if spell.prefix=="/magic" then
		equip(sets.ma.fc)
	end
	if spell.prefix=="/ninjutsu" then
		equip(sets.ninjutsu.pc)
	end
end

function midcast(spell)
	if spell.prefix=="/ninjutsu" then
		equip(sets.ninjutsu.mc)
	end
	if spell.prefix=="/magic" then
		equip(sets.ma.mc)
	end
end

function aftercast(spell)
	if player.status=="Engaged" then
		if TPMode=="tp" then
			if buffactive["Restraint"] then
				if player.mp<99 then
					equip(sets.rtp[TPType])
				else
					equip(sets.rotp[TPType])
				end
			else
				if player.mp<99 then
					equip(sets.tp[TPType])
				else
					equip(sets.otp[TPType])
				end
			end
		elseif TPMode=="Hybrid" then
			equip(sets.hybrid[TPType])
		elseif TPMode=="PDT" then
			equip(sets.PDT)
		elseif TPMode=="MDT" then
			equip(sets.MDT)
		end
	else
		equip(sets.idle[IdleType])
	end
end

function status_change(new,old)
	if new=="Engaged" then
		if TPMode=="tp" then
			if buffactive["Restraint"] then
				if player.mp<99 then
					equip(sets.rtp[TPType])
				else
					equip(sets.ortp[TPType])
				end
			else
				if player.mp<99 then
					equip(sets.tp[TPType])
				else
					equip(sets.otp[TPType])
				end
			end
		elseif TPMode=="hybrid" then
			equip(sets.hybrid[TPType])
		elseif TPMode=="PDT" then
			equip(sets.PDT)
		elseif TPMode=="MDT" then
			equip(sets.MDT)
		end
	else
		equip(sets.idle[IdleType])
	end
end


function self_command(command)
	
	-- weaponry variable commands rule start
	
	-- weaponry variable commands rule end
	
	-- accuracy variable commands rule start
	if command == 'lowacc' then
		TPType="lowacc"
		add_to_chat(206, 'Low Accuracy Mode')
		send_command('text idlevariable text "LOW-ACC"')
	elseif command == 'medacc' then
		TPType="medacc"
		add_to_chat(206, 'Medium Accuracy Mode')
		send_command('text idlevariable text "MEDIUM-ACC"')
	elseif command == 'highacc' then
		TPType="highacc"
		add_to_chat(206, 'High Accuracy Mode')
		send_command('text idlevariable text "HIGH-ACC"')
	end
	-- accuracy variable commands rule end
	
	-- engage variable commands rule start
	if command == 'dd' then
		TPMode="tp"
		add_to_chat(206, 'DD Mode')
		send_command('text tpvariable text "DD MODE"')
	elseif command == 'hybrid' then
		TPMode="hybrid"
		add_to_chat(206, 'HYBRID MODE')
		send_command('text tpvariable text "Hybrid MODE"')
	elseif command == 'pdt' then
		TPMode="pdt"
		add_to_chat(206, 'PDT MODE')
		send_command('text tpvariable text "PDT MODE"')
	elseif command == 'mdt' then
		TPMode="mdt"
		add_to_chat(206, 'MDT MODE')
		send_command('text tpvariable text "MDT MODE"')	
	end
	-- engage variable commands rule end
	
	-- idle variable commands rule start
	if command == 'idleregen' then
		IdleType="regen"
		add_to_chat(206, 'IDLE MODE: REGEN')
		send_command('text wsvariable text "IDLE-REGEN')
		if player.status=="Idle" then
			status_change(player.status)
		end
	elseif command== 'idledt' then
		IdleType="dt"
		add_to_chat(206, 'IDLE MODE: DT')
		send_command('text wsvariable text "IDLE-DT')
		if player.status=="Idle" then
			status_change(player.status)
		end
	end
	-- idle variable commands rule end
	
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
end

function unload(new_job)
	windower.send_command('boxesoff')
end