function get_sets()
-- include
	include('boxes.lua')
-- include
-- keybinds, aliases and text boxes.
	send_command('bind #4 idle')
	send_command('bind #2 gs equip sets.aftercast.pdt')
	send_command('bind #8 gs equip sets.aftercast.mdt')
	send_command('bind #g gs c ochain')
	send_command('bind @p gs c aegis')
	send_command('bind @] gs c priwen')
	send_command('bind #a gs c bura')
	send_command('bind @k gs c burtgang')
	send_command('bind @f1 gs c dd')
	send_command('bind @f2 gs c hybrid')
	send_command('bind @f3 gs c pdt')
	send_command('bind @f4 gs c mdt')
	send_command('bind @f5 gs c dt')
	send_command('bind #f1 gs c idle')
	send_command('bind #f2 gs c kitemdt')
	send_command('bind #f3 gs c kitepdt') 
	send_command('bind #f4 gs c pdtidle')
	send_command('bind #f5 gs c mdtidle')
	send_command('bind #f6 gs c dtidle')
	send_command('bind #f7 gs c dtkite')
	send_command('bind #x gs equip sets.aftercast.dt')
	send_command('bind #h hybrid')
	send_command('bind #t tp')
	send_command('bind @r gs c rr')
	send_command('bind @f9 gs c lowacc;alias hybrid gs equip sets.aftercast.hybrid.lowacc;alias tp gs equip sets.aftercast.tp.lowacc')
	send_command('bind @f10 gs c medacc;alias hybrid gs equip sets.aftercast.hybrid.medacc;alias tp gs equip sets.aftercast.tp.medacc')
	send_command('bind @f11 gs c highacc;alias hybrid gs equip sets.aftercast.hybrid.highacc;alias tp gs equip sets.aftercast.tp.highacc')
	send_command('bind @f12 gs c repulse')
	send_command('bind #s intervene')
	send_command('bind #i invincible')
	send_command('bind #6 phalanx')
	send_command('bind #5 enlight')
	send_command('bind @3 input /item "Remedy" <me>')
	send_command('bind #1 input /item "Echo drops" <me>')
	send_command('bind @1 utsusemi:ichi')
	send_command('bind @2 utsusemi:ni')
	send_command('bind #c crusade')
-- keybinds 

-- aliases
	send_command('alias tp gs equip sets.aftercast.tp.lowacc')
	send_command('alias hybrid gs equip sets.aftercast.hybrid.lowacc')
	send_command('alias idle gs equip sets.aftercast.idle')
-- aliases

--text boxes
	send_command('text pdtvariable text "OCHAIN MODE"')
	send_command('text wsvariable text "STANDARD IDLE"')
	send_command('text tpvariable text "DD MODE"')
	send_command('text idlevariable text "LOW-ACC"')
--text boxes

-- default macros
	send_command('input /macro book 1;input /macro set 2')
-- default macros

-- lists for ws and spells	
	magic_ws= S{'Atonement','Burning Blade','Red Lotus Blade','Shining Blade','Seraph Blade','Spirits Within','Sanguine Blade'}
	lg_ws= S{'Chant du Cygne','Savage Blade'}
	sg_ws= S{'Requiescat','Swift Blade'}
	phys_ws= S{'Vorpal Blade','Fast Blade','Flat Blade','Circle Blade'}
	cure= S{'Cure','Cure II','Cure III','Cure IV','Curaga','Curaga II', 'Cura','Cura II'}
	enhancing= S{'Phalanx','Aquaveil','Stoneskin','Barfire','Barfira','Barblizzard','Barblizzara','Baraero','Baraera','Barwater','Barwatera','Barstone','Barstonra','Barthunder','Barthundra','Reprisal'}
	divine= S{'Flash','Holy','Holy II','Banish','Banish II','Banishga','Banishga II'}
	enfeeb= S{'Dia','Dia II','Diaga','Diaga II'}
	ninjutsu= S{'Utsusemi: Ichi', 'Utsusemi: Ni'}
-- lists for ws and spells

-- variables	
	swordtype="burtgang"
	shieldtype="Ochain"
	Acc="lowacc"
	IdleMode="idle"		
	TPSet="tp"
	rrlock="rroff"
	repulsemode="normal"
		
	sets.swordtype= T{}
	sets.shieldtype= T{}
	sets.Acc= T{}
	sets.IdleMode= T{}
	sets.TPSet= T{}
	sets.repulsemode= T{}
-- variables

-- base sets
	sets.precast={}
	sets.precast.ws={}
	sets.midcast={}
	sets.aftercast={}
	sets.repulsemantle={"Repulse Mantle",}
-- base sets

-- weaponry
	sets.bura={main="Buramenk'ah",}
	
	sets.burtgang={main="Burtgang",}
		
	sets.Ochain={sub="Ochain",}
	
	sets.Priwen={sub="Priwen",}
	
	sets.Aegis={sub="Aegis",}
-- weaponry

-- rr set
	sets.rr={head="Twilight Helm", body="Twilight Mail",}
-- rr set	
	
-- precast sets
	sets.precast.fc= {ammo="Incantor Stone", head="Cizin Helm +1", body="Nuevo Coselete", hands="Rev. Gauntlets +1", 
	legs="Enif Cosciales", feet="Rev. Leggings +1", neck="Jeweled Collar", waist="Siegel Sash", 
	right_ear="Ethereal Earring", left_ear="Loquac. Earring", left_ring="Prolix Ring", right_ring="Veneficium Ring",
    back="Testudo Mantle",}
	
	sets.precast.ja= {ammo="Paeapua", head="Cab. Coronet +1", body="Creed Cuirass +2", hands="Cab. Gauntlets +1", 
	legs="Cab. Breeches +1", feet="Creed Sabatons +2", neck="Invidia Torque", waist="Creed Baudrier",
	left_ear="Friomisi Earring", right_ear="Trux Earring", left_ring="Provocare Ring", right_ring="Eihwaz Ring",
    back="Fravashi Mantle",}
		
	sets.precast.ja.Sentinel= set_combine(sets.precast.ja, {feet="Cab. Leggings +1"})
	sets.precast.ja.Rampart= set_combine(sets.precast.ja, {head="Cab. Coronet +1"})
	sets.precast.ja.Fealty= set_combine(sets.precast.ja, {body="Cab. Surcoat +1"})
	sets.precast.ja.Chivalry= set_combine(sets.precast.ja, {head="Rev. Coronet +1", body="Cab. Surcoat +1", hands="Cab. Gauntlets +1", left_ring="Levia. Ring", right_ring="Levia. Ring", feet="Whirlpool Greaves",})
	sets.precast.ja.sb= set_combine(sets.precast.ja, {left_ear="Knightly Earring", hands="Cab. Gauntlets +1", left_ring="Fenian Ring",})
	sets.precast.ja.Intervene= set_combine(sets.precast.ja, {hands="Cab. Gauntlets +1"})
	sets.precast.ja.Invincible= set_combine(sets.precast.ja, {legs="Cab. Breeches +1"})
	sets.precast.ja.hc= set_combine(sets.precast.ja, {feet="Rev. Leggings +1"})
	sets.precast.ja.de= set_combine(sets.precast.ja, {feet="Creed Sabatons +2"})

	sets.precast.ws.CdC= {ammo="Jukukik Feather", head="Yaoyotl Helm", body="Miki. Breastplate",
    hands="Buremte Gloves", legs="Miki. Cuisses", feet="Whirlpool Greaves", neck="Light Gorget",
    waist="Light Belt", left_ear="Steelflash Earring", right_ear="Bladeborn Earring", 
	left_ring="Ramuh Ring", right_ring="Rajas Ring", back="Atheling Mantle",}
	
	sets.precast.ws.Req= {ammo="Paeapua", head="Yaoyotl Helm", body="Miki. Breastplate",
    hands="Buremte Gloves", legs="Miki. Cuisses", feet="Whirlpool Greaves", neck="Shadow Gorget",
    waist="Shadow Belt", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
    left_ring="Levia. Ring", right_ring="Rajas Ring", back="Atheling Mantle",}
	
	sets.precast.ws.VB= {ammo="Paeapua", head="Yaoyotl Helm", body="Miki. Breastplate",
    hands="Buremte Gloves", legs="Miki. Cuisses", feet="Whirlpool Greaves", neck="Asperity Necklace",
    waist="Windbuffet Belt +1", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
    left_ring="Ramuh Ring", right_ring="Rajas Ring", back="Atheling Mantle",}
	
	sets.precast.ws.Atonement= set_combine(sets.precast.ja, {body="Phorcys Korazin", legs="Ogier's Breeches", left_ear="Moonshade Earring", left_ring="Karieyh Ring",})
	
	sets.precast.ws.Resolution= set_combine(sets.precast.ws.CdC, {Left_Ring="Ifrit Ring"})
-- precast sets

-- midcast sets	
	sets.midcast.cure= {ammo="Paeapua", head="Adaman Barbuta", body="Creed Cuirass +2", hands="Macabre Gaunt. +1",
    legs="Blitzer Poleyn", feet="Creed Sabatons +2", neck="Phalaina Locket", waist="Goading Belt",
    left_ear="Hospitaler Earring", right_ear="Trux Earring", left_ring="Provocare Ring", right_ring="Eihwaz Ring",
    back="Fierabras's Mantle",}
	
	sets.midcast.selfcure= set_combine(sets.midcast.cure, {ammo="Egoist's Tathlum", head="Shabti Armet", hands="Buremte Gloves",
	waist="Chuq'aba Belt", feet="Rev. Leggings +1", left_ring="Kunaji Ring",})
	
	sets.midcast.flash= {ammo="Incantor Stone", head="Cizin Helm +1", body="Cab. Surcoat +1", hands="Rev. Gauntlets +1",
    legs="Rev. Breeches +1", feet="Creed Sabatons +2", neck="Invidia Torque", waist="Goading Belt",
    left_ear="Loquac. Earring", right_ear="Trux Earring", left_ring="Patricius Ring", right_ring="Eihwaz Ring",
    back="Testudo Mantle",}
	
	sets.midcast.utsu= set_combine(sets.midcast.flash, {back="Boxer's Mantle", feet="Rev. Leggings +1",})
	
	sets.midcast.enlight= {ammo="Incantor Stone", head="Cizin Helm +1", body="Rev. Surcoat +1", hands="Rev. Gauntlets +1",
    legs="Rev. Breeches +1", feet="Creed Sabatons +2", neck="Divine Torque", waist="Siegel Sash", 
	left_ear="Ethereal Earring", right_ear="Loquac. Earring", left_ring="Patricius Ring", 
	right_ring="Defending Ring", back="Testudo Mantle",}
	
	sets.midcast.enhancing= {ammo="Incantor Stone", head="Cizin Helm +1", body="Shabti Cuirass", hands="Rev. Gauntlets +1",
    legs="Rev. Breeches +1", feet="Creed Sabatons +2", neck="Shield Torque", waist="Siegel Sash", left_ear="Loquac. Earring",
    right_ear="Trux Earring", left_ring="Portus Annulet", right_ring="Defending Ring", back="Testudo Mantle",}
	
	sets.midcast.proshell= set_combine(sets.midcast.enhancing, {right_ring="Sheltered Ring"})
-- midcast sets
	
-- aftercast sets
	sets.aftercast.tp= {ammo="Paeapua", head="Yaoyotl Helm", left_ear="Steelflash Earring", 
	right_ear="Bladeborn Earring", left_ring="Patricius Ring", right_ring="Rajas Ring",
    back="Atheling Mantle",}
	
	sets.aftercast.tp.lowacc= {ammo="Paeapua", head={ name="Otomi Helm", augments={'Haste+2','"Snapshot"+2','STR+8',}},
	body="Enif Corazza", hands="Ares' Gauntlets +1", legs="Ares' Flanchard +1", waist="Windbuffet Belt +1",
	feet={ name="Ejekamal Boots", augments={'Haste+2','"Snapshot"+2','STR+8',}}, neck="Asperity Necklace",
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Patricius Ring", right_ring="Rajas Ring",
	back="Atheling Mantle",}
	
	sets.aftercast.tp.medacc= {ammo="Paeapua", head="Yaoyotl Helm", legs="Ares' Flanchard +1",
    body={ name="Xaddi Mail", augments={'Attack+15','Accuracy+10','"Store TP"+3',}},
    hands={ name="Xaddi Gauntlets", augments={'Accuracy+15','"Store TP"+3','"Dbl.Atk."+2',}},
	feet={ name="Ejekamal Boots", augments={'Haste+2','"Snapshot"+2','STR+8',}}, neck="Agitator's Collar",
	waist="Windbuffet Belt +1", left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Patricius Ring",
	right_ring="Rajas Ring", back="Atheling Mantle",}
		
	sets.aftercast.tp.highacc= {ammo="Ginsen", head="Gavialis Helm", body="Mes. Haubergeon",
    hands={ name="Xaddi Gauntlets", augments={'Accuracy+15','"Store TP"+3','"Dbl.Atk."+2',}},
	legs={ name="Xaddi Cuisses", augments={'Attack+15','Accuracy+10','"Store TP"+3',}},
    feet="Whirlpool Greaves", neck="Iqabi Necklace", waist="Dynamic Belt +1", left_ear="Zennaroi Earring",
	right_ear="Brutal Earring", left_ring="Patricius Ring", right_ring="Portus Annulet", back="Letalis Mantle",}
		
	sets.aftercast.hybrid= {ammo="Angha Gem", head="Rev. Coronet +1", body="Cab. Surcoat +1", 
	hands="Rev. Gauntlets +1", legs="Cab. Breeches +1", feet="Rev. Leggings +1",}
	
	sets.aftercast.hybrid.lowacc= set_combine(sets.aftercast.hybrid, {neck="Twilight Torque", waist="Flume Belt",
	left_ear="Ethereal Earring", right_ear="Brutal Earring", left_ring="Patricius Ring", right_ring="Defending Ring",
	back="Weard Mantle",})
	
	sets.aftercast.hybrid.medacc= set_combine(sets.aftercast.hybrid.lowacc, {left_ring="Patricius Ring", 
	right_ring="Rajas Ring",})
	
	sets.aftercast.hybrid.highacc= set_combine(sets.aftercast.hybrid.medacc, {head="Ighwa Cap", neck="Agitator's Collar", 
	waist="Dynamic Belt +1",back="Weard Mantle",})
		
	sets.aftercast.pdt= {ammo="Angha Gem", head="Rev. Coronet +1", body="Cab. Surcoat +1", hands="Cizin Mufflers +1",
	legs="Cab. Breeches +1", feet="Cizin Greaves +1", neck="Twilight Torque", waist="Flume Belt", 
	left_ear="Ethereal Earring", right_ear="Sanare Earring", left_ring="Patricius Ring", right_ring="Defending Ring",
	back="Shadow Mantle",}
	
	sets.aftercast.mdt= {ammo="Angha Gem", head="Rev. Coronet +1", body="Cab. Surcoat +1", hands="Rev. Gauntlets +1",
	legs="Rev. Breeches +1", feet="Cab. Leggings +1", neck="Twilight Torque", waist="Creed Baudrier",
	left_ring="Shadow Ring", left_ear="Ethereal Earring", right_ear="Sanare Earring", right_ring="Defending Ring",
	back="Weard Mantle",}
	
	sets.aftercast.dt={ammo="Angha Gem", head="Rev. Coronet +1", body="Cab. Surcoat +1", hands="Rev. Gauntlets +1",
	legs="Cab. Breeches +1", feet="Rev. Leggings +1", neck="Twilight Torque", waist="Nierenschutz", left_ear="Ethereal Earring",
	right_ear="Sanare Earring", left_ring="Dark Ring", right_ring="Defending Ring", back="Mollusca Mantle",}
	
	sets.aftercast.idle= {ammo="Angha Gem", head="Baghere Salade", body="Ares' Cuirass +1", hands="Cizin Mufflers +1",
    legs="Blood Cuisses", feet="Cizin Greaves +1", neck="Creed Collar", waist="Flume Belt",
    left_ear="Ethereal Earring", right_ear="Sanare Earring", left_ring="Shadow Ring", right_ring="Sheltered Ring",
    back="Shadow Mantle",}
	
	sets.aftercast.refresh= set_combine(sets.aftercast.idle, {head="Wivre Hairpin", waist="Fucho-No-Obi",})
	
	sets.aftercast.pdtkite= set_combine(sets.aftercast.pdt, {back="Weard Mantle",  legs="Blood Cuisses",})
	
	sets.aftercast.mdtkite= set_combine(sets.aftercast.mdt, {back="Weard Mantle",  legs="Blood Cuisses",})
	
	sets.aftercast.dtkite= set_combine(sets.aftercast.dt, {back="Weard Mantle",  legs="Blood Cuisses",})
-- aftercast sets

-- misc sets
	sets.ballista={main="Burtgang", sub="Ochain", ammo="Paeapua", head="Yaoyotl Helm", 
	body={ name="Xaddi Mail", augments={'Attack+15','Accuracy+10','"Store TP"+3',}}, 
	hands={ name="Xaddi Gauntlets", augments={'Accuracy+15','"Store TP"+3','"Dbl.Atk."+2',}}, 
	legs={ name="Xaddi Cuisses", augments={'Attack+15','Accuracy+10','"Store TP"+3',}}, 
	feet="Ejekamal Boots", neck="Agitator's Collar", waist="Windbuffet Belt +1",
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Defending Ring", 
	right_ring="Rajas Ring", back="Weard Mantle",}
-- misc sets
end

function precast(spell)	
	if spell.type == 'WeaponSkill' then
		if magic_ws:contains(spell.english) then
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.precast.ws.Atonement)		
		elseif lg_ws:contains(spell.english) then
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.precast.ws.CdC)				
		elseif sg_ws:contains(spell.english) then
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.precast.ws.Req)				
		elseif phys_ws:contains(spell.english) then
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.precast.ws.VB)
		end
	elseif spell.prefix ==  '/jobability' then
		if spell.english== 'Sentinel' then
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.precast.ja.Sentinel)
		elseif spell.english== 'Rampart' then
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.precast.ja.Rampart)			
		elseif spell.english== 'Fealty' then
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.precast.ja.Fealty)
		elseif spell.english== 'Chivalry' then
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.precast.ja.Chivalry)
		elseif spell.english== 'Invincible' then
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.precast.ja.Invincible)
		elseif spell.english== 'Intervene' then
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.precast.ja.Intervene)
		elseif spell.english== 'Shield Bash' then
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.precast.ja.sb)
		elseif spell.english== 'Holy Circle' then
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.precast.ja.hc)
		elseif spell.english== 'Divine Emblem' then
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.precast.ja.de)		
		else
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.precast.ja)			
		end		
	elseif spell.prefix== '/magic' then
		equip(sets[swordtype])
		equip(sets[shieldtype])
		equip(sets.precast.fc)		
	elseif ninjutsu:contains(spell.english) then
		equip(sets[swordtype])
		equip(sets[shieldtype])
		equip(sets.precast.fc)	
	end	
end

function midcast(spell)
	if spell.english== 'Utsusemi: Ichi' and buffactive['Copy Image'] then
		send_command('pause 1.9;cancel Copy Image*')
	end
	if cure:contains(spell.english) then
		if spell.target.type== 'SELF' then
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.midcast.selfcure)				
		else
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.midcast.cure)				
		end
	elseif spell.skill== 'Divine Magic' then
		if spell.english== 'Enlight' then
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.midcast.enlight)			
		else
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.midcast.flash)
		end
	elseif spell.skill== 'Enhancing Magic' then
		if spell.english:find('Pro') or spell.english:find('Shel') then
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.midcast.proshell)			
		else
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.midcast.enhancing)			
		end
	elseif ninjutsu:contains(spell.english) then		
		equip(sets[swordtype])
		equip(sets[shieldtype])
		equip(sets.midcast.utsu)
	elseif spell.skill=="Blue Magic" then
		equip(sets[swordtype])
		equip(sets[shieldtype])
		equip(sets.midcast.flash)
	end
end

function aftercast(spell)	
	if player.status == 'Engaged' then
		if TPSet== "tp" then
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.aftercast.tp[Acc])
		elseif TPSet=="hybrid" then
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.aftercast.hybrid[Acc])
		elseif TPSet=="pdt" then
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.aftercast.pdt)
		elseif TPSet=="mdt" then
			equip(sets[swordtype])
			equip(sets[shieldtype])
			equip(sets.aftercast.mdt)
		elseif TPSet=="dt" then
				equip(sets[swordtype])
				equip(sets[shieldtype])
				equip(sets.aftercast.dt)
			
		end
	else
		equip(sets[swordtype])
		equip(sets[shieldtype])
		equip(sets.aftercast[IdleMode])
	end
end

function status_change(new,old)
	if new == 'Engaged' then
		if player.status == 'Engaged' then			
			if TPSet== "tp" then
				equip(sets[swordtype])
				equip(sets[shieldtype])
				equip(sets.aftercast.tp[Acc])
			elseif TPSet=="hybrid" then
				equip(sets[swordtype])
				equip(sets[shieldtype])
				equip(sets.aftercast.hybrid[Acc])
			elseif TPSet=="pdt" then
				equip(sets[swordtype])
				equip(sets[shieldtype])
				equip(sets.aftercast.pdt)
			elseif TPSet=="mdt" then
				equip(sets[swordtype])
				equip(sets[shieldtype])
				equip(sets.aftercast.mdt)
			elseif TPSet=="dt" then
				equip(sets[swordtype])
				equip(sets[shieldtype])
				equip(sets.aftercast.dt)
			end
		end
	else
		equip(sets[swordtype])
		equip(sets[shieldtype])		
		equip(sets.aftercast[IdleMode])
	end	
end		

function self_command(command)
	
	-- weaponry variable commands rule start
	if command == 'ochain' then
		if shieldtype=="Aegis" then
			shieldtype="Ochain"
			equip(sets.Ochain)
			add_to_chat(206, 'OCHAIN SELECTED')
			send_command('text pdtvariable text "OCHAIN"')
		elseif shieldtype=="Priwen" then
			shieldtype="Ochain"
			equip(sets.Ochain)
			add_to_chat(206, 'OCHAIN SELECTED')
			send_command('text pdtvariable text "OCHAIN"')
		elseif shieldtype=="Ochain" then
			status_change(player.status)
			add_to_chat(206, 'OCHAIN ALREADY SET, REFRESHING EQUIPMENT.')
		end
	elseif command == 'aegis' then
		if shieldtype=="Ochain" then
			shieldtype="Aegis"
			equip(sets.Aegis)
			add_to_chat(206, 'AEGIS SELECTED')
			send_command('text pdtvariable text "AEGIS"')
		elseif shieldtype=="Priwen" then
			shieldtype="Aegis"
			equip(sets.Aegis)
			add_to_chat(206, 'AEGIS SELECTED')
			send_command('text pdtvariable text "AEGIS"')
		elseif shieldtype=="Aegis" then
			status_change(player.status)
			add_to_chat(206, 'AEGIS ALREADY SET, REFRESHING EQUIPMENT.')
		end
	elseif command == 'priwen' then
		if shieldtype=="Aegis" then
			shieldtype="Priwen"
			equip(sets.Priwen)
			add_to_chat(206, 'PRIWEN SELECTED')
			send_command('text pdtvariable text "PRIWEN"')
		elseif shieldtype=="Ochain" then
			shieldtype="Priwen"
			equip(sets.Priwen)
			add_to_chat(206, 'PRIWEN SELECTED')
			send_command('text pdtvariable text "PRIWEN"')
		elseif shieldtype=="Priwen" then
			status_change(player.status)
			add_to_chat(206, 'PRIWEN ALREADY SET, REFRESHING EQUIPMENT.')
		end
	end
	if command == 'burtgang' then
		swordtype="burtgang"
		equip(sets.burtgang)
		add_to_chat(206, 'BURTGANG SWORD SELECTED')
	elseif command == 'bura' then
		swordtype="bura"
		equip(sets.bura)
		add_to_chat(206, 'BURA~ SWORD SELECTED')
	end
	-- weaponry variable commands rule end
	
	-- accuracy variable commands rule start
	if command == 'lowacc' then
		Acc="lowacc"
		add_to_chat(206, 'Low Accuracy Mode')
		send_command('text idlevariable text "LOW-ACC"')
	elseif command == 'medacc' then
		Acc="medacc"
		add_to_chat(206, 'Medium Accuracy Mode')
		send_command('text idlevariable text "MEDIUM-ACC"')
	elseif command == 'highacc' then
		Acc="highacc"
		add_to_chat(206, 'High Accuracy Mode')
		send_command('text idlevariable text "HIGH-ACC"')
	end
	-- accuracy variable commands rule end
	
	-- engage variable commands rule start
	if command == 'dd' then
		TPSet="tp"
		add_to_chat(206, 'DD Mode')
		send_command('text tpvariable text "DD MODE"')
	end
	if command == 'hybrid' then
		TPSet="hybrid"
		add_to_chat(206, 'HYBRID MODE')
		send_command('text tpvariable text "Hybrid MODE"')
	end
	if command == 'pdt' then
		TPSet="pdt"
		add_to_chat(206, 'PDT MODE')
		send_command('text tpvariable text "PDT MODE"')
	end
	if command == 'mdt' then
		TPSet="mdt"
		add_to_chat(206, 'MDT MODE')
		send_command('text tpvariable text "MDT MODE"')
	end
	if command == 'dt' then
		TPSet="dt"
		add_to_chat(206, 'DT MODE')
		send_command('text tpvariable text "DT MODE"')
	end
	-- engage variable commands rule end
	
	-- idle variable commands rule start
	if command == 'idle' then
		if IdleMode=="idle" then
			IdleMode="refresh"
			add_to_chat(206, 'REFRESH IDLE MODE')
			send_command('text wsvariable text "REFRESH IDLE"')
			send_command('alias idle gs equip sets.aftercast.refresh')
			status_change(player.status)
		else
			IdleMode="idle"
			add_to_chat(206, 'STANDARD IDLE MODE')
			send_command('text wsvariable text "STANDARD IDLE"')
			send_command('alias idle gs equip sets.aftercast.idle')
			status_change(player.status)
		end
	end
	if command == 'kitepdt' then
		IdleMode="pdtkite"
		add_to_chat(206, 'PDT KITING MODE')
		send_command('text wsvariable text "PDT KITE"')
		send_command('alias idle gs equip sets.aftercast.pdtkite')
		status_change(player.status)
	end
	if command == 'kitemdt' then
		IdleMode="mdtkite"
		add_to_chat(206, 'MDT KITING MODE')
		send_command('text wsvariable text "MDT KITE"')
		send_command('alias idle gs equip sets.aftercast.mdtkite')
		status_change(player.status)
	end
	if command == 'pdtidle' then
		IdleMode="pdt"
		add_to_chat(206, 'PDT IDLE MODE')
		send_command('text wsvariable text "PDT IDLE"')
		send_command('alias idle gs equip sets.aftercast.pdt')
		status_change(player.status)
	end
	if command == 'mdtidle' then
		IdleMode="mdt"
		add_to_chat(206, 'MDT IDLE MODE')
		send_command('text wsvariable text "MDT IDLE"')
		send_command('alias idle gs equip sets.aftercast.mdt')
		status_change(player.status)
	end
	if command == 'dtidle' then
		IdleMode="dt"
		add_to_chat(206, 'DT IDLE MODE')
		send_command('text wsvariable text "DT IDLE"')
		send_command('alias idle gs equip sets.aftercast.dt')		
		status_change(player.status)
	end
	if command == 'dtkite' then
		IdleMode="dtidle"
		add_to_chat(206, 'DT KITING MODE')
		send_command('text wsvariable text "DT KITE"')
		send_command('alias idle gs equip sets.aftercast.dtkite')
		status_change(player.status)
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
	-- special case
	if command == 'repulse' then
		if repulsemode=="repulse" then
			repulsemode="normal"
			send_command('gs enable back')
			add_to_chat(206, 'REPULSE MODE OFF')
		else
			repulsemode="repulse"
			send_command('input /equip back "Repulse Mantle";gs disable back')
			add_to_chat(206, 'REPULSE MODE ON')
		end
	end
end

function unload(new_job)
	windower.send_command('boxesoff')
end