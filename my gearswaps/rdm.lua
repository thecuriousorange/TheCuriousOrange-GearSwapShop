function get_sets()
--include file
	--include('tco-include.lua')
--include file

--alias and text box set up
windower.prim.create('TP_SET')
windower.prim.set_size('TP_SET',200,30)
windower.prim.set_texture('TP_SET','/windower 4/addons/gearswap/data/'..player.name..'/images/ddmode.png')
windower.prim.set_position('TP_SET',0.65*windower.get_windower_settings().x_res,50)
windower.prim.set_color('TP_SET', 100, 255, 255, 255)
windower.prim.set_visibility('TP_SET',true)

windower.prim.create('ACC_SET')
windower.prim.set_size('ACC_SET',200,30)
windower.prim.set_texture('ACC_SET','/windower 4/addons/gearswap/data/'..player.name..'/images/lowacc.png')
windower.prim.set_position('ACC_SET',0.65*windower.get_windower_settings().x_res,90)
windower.prim.set_color('ACC_SET', 100, 255, 255, 255)
windower.prim.set_visibility('ACC_SET',true)

windower.prim.create('IDLE_SET')
windower.prim.set_size('IDLE_SET',200,30)
windower.prim.set_texture('IDLE_SET','/windower 4/addons/gearswap/data/'..player.name..'/images/standardidle.png')
windower.prim.set_position('IDLE_SET',0.65*windower.get_windower_settings().x_res,130)
windower.prim.set_color('IDLE_SET', 100, 255, 255, 255)
windower.prim.set_visibility('IDLE_SET',true)

windower.prim.create('WS_SET')
windower.prim.set_size('WS_SET',200,30)
windower.prim.set_texture('WS_SET','/windower 4/addons/gearswap/data/'..player.name..'/images/dmg.png')
windower.prim.set_position('WS_SET',0.65*windower.get_windower_settings().x_res,170)
windower.prim.set_color('WS_SET', 100, 255, 255, 255)
windower.prim.set_visibility('WS_SET',true)

windower.prim.create('MAGIC_MODE')
windower.prim.set_texture('MAGIC_MODE','/windower 4/addons/gearswap/data/'..player.name..'/images/magicpotency.png')
windower.prim.set_size('MAGIC_MODE',200,30)
windower.prim.set_position('MAGIC_MODE',0.65*windower.get_windower_settings().x_res,210)
windower.prim.set_color('MAGIC_MODE', 150, 255, 255, 255)
windower.prim.set_visibility('MAGIC_MODE',true)
	--windower.send_command('pause 1;text tpvariable text "DD MODE"')
	--windower.send_command('pause 1;text idlevariable text "LOW-ACC"')
	--windower.send_command('pause 1;text pdtvariable text "Magic:DMG"')
	--windower.send_command('pause 1;text wsvariable text "STANDARD IDLE"')
	--windower.send_command('pause 1;text doavariable create;text doavariable bold true;text doavariable text "WS MODE:DMG";text doavariable pos 900 140')
	send_command('alias tp gs equip sets.tp.lowacc')
	send_command('alias hybrid gs equip sets.hybrid.lowacc')
	send_command('alias idle gs equip sets.idle.refresh')
	send_command('bind @f1 gs c dd')
	send_command('bind @f2 gs c hybrid')
	send_command('bind @f3 gs c pdt')
	send_command('bind @f4 gs c mdt')
	send_command('bind @f5 gs c dt')
	send_command('bind @f9 gs c lowacc;alias hybrid gs equip sets.hybrid.lowacc;alias tp gs equip sets.tp.lowacc')
	send_command('bind @f10 gs c medacc;alias hybrid gs equip sets.hybrid.medacc;alias tp gs equip sets.tp.medacc')
	send_command('bind @f11 gs c highacc;alias hybrid gs equip sets.hybrid.highacc;alias tp gs equip sets.tp.highacc')
	send_command('bind @f12 gs c wsacctoggle')
	send_command('bind #f1 gs c idle')
	send_command('bind #f2 gs c kitemdt')
	send_command('bind #f3 gs c kitepdt') 
	send_command('bind #f4 gs c pdtidle')
	send_command('bind #f5 gs c mdtidle')
	send_command('bind #f6 gs c dtidle')
	send_command('bind #f7 gs c dtkite')
	send_command('bind #a gs c magictoggle')
--alias and text box set up

--spell lists
	Nukes= S{"Fire", "Fire II", "Fire III", "Fire IV", "Fire V", "Firaga", "Firaga II", "Firaga III", 
	"Firaja", "Flare", "Flare II", "Pyrohelix", "Fira", "Fira II", "Blizzard", "Blizzard II", "Blizzard III", 
	"Blizzard IV", "Blizzard V", "Blizzaga", "Blizzaga II", "Blizzaga III", "Blizzaja", "Cryohelix", "Freeze", 
	"Freeze II", "Blizzara", "Blizzara II", "Water", "Water II", "Water III", "Water IV", "Water V", "Waterga", 
	"Waterga II", "Waterga III", "Waterja", "Flood", "Flood II", "Hydrohelix", "Watera", "Watera II", "Thunder", 
	"Thunder II", "Thunder III", "Thunder IV", "Thunder V", "Thundaga", "Thundaga II", "Thundaga III", "Thundaja", 
	"Burst", "Burst II", "Ionohelix", "Thundara", "Thundara II", "Stone", "Stone II", "Stone III", "Stone IV", 
	"Stone V", "Stonega", "Stonega II", "Stonega III", "Stoneja", "Quake", "Quake II", "Geohelix", "Stonera", 
	"Stonera II", "Aero", "Aero II", "Aero III", "Aero IV", "Aero V", "Aeroga", "Aeroga II", "Aeroga III", 
	"Aeroja", "Tornado", "Tornado II", "Anemohelix", "Aera", "Aera II", "Banish", "Banish II", 
	"Banishga", "Banishga II", "Banish III", "Holy", "Holy II", "Luminohelix",}
	
	Dark_Nukes= S{"Comet", "Noctohelix",}
	
	Elemental_DoT= S{"Shock", "Choke", "Burn", "Rasp", "Frost", "Drown",}
	
	DarkMagic_DoT= S{"Bio", "Bio II", "Bio III",}
	
	DarkMagic_Drain_Aspir= S{"Drain", "Drain II", "Aspir", "Aspir II",}
	
	EnfeeblingMagic_skillmod= S{"Sleep", "Sleep II", "Sleepga", "Sleepga II", "Poison", "Poison II", "Poisonga", 
	"Poisonga II", "Dispel", "Gravity", "Bind", "Break", "Breakga", "Blind", "Blind II", "Gravity", "Gravity II", "Distract", "Distract II","Distract III","Frazzle", "Frazzle II", "Frazzle III"}
	
	EnfeeblingMagic_mndmod= S{"Paralyze", "Paralyze II", "Dia", "Dia II", "Dia III", "Diaga", "Diaga II", 
	"Slow", "Slow II", "Addle", "Addle II"}
	
	Buffs= S{"Stoneskin", "Phalanx", "Phalanx II", "Aquaveil",}
--spell lists

--variables
	TPMode="dd"
	TPType="lowacc"
	IdleType="refresh"
	StunType="recast"
	MagicType="potency"	
	WSType="damage"
	
	sets.TPMode= T{}
	sets.TPType= T{}
	sets.IdleType= T{}
	sets.StunType= T{}
	sets.MagicType= T{}
	sets.WSType= T{}
--variables
	
--base sets
	sets.precast={}
	sets.ja={}
	sets.ws={}
	sets.ws.dmg={}
	sets.ws.acc={}
	sets.midcast={}
	sets.healing={}
	sets.stun={}
	sets.aspirdrain={}
	sets.divine={}
	sets.enfeeble={}
	sets.elemental={}
	sets.elemental.nuke={}
	sets.enhancing={}
	sets.ninjutsu={}
	sets.tp={}
	sets.hybrid={}
	sets.idle={}
--base sets
	
--premagic sets
	sets.precast.fc={main="Marin Staff", head="Nahtirah Hat", body="Anhur Robe", hands="Helios Gloves", legs="Orvail Pants +1",
	feet="Chelona Boots", neck="Jeweled Collar", waist="Othila Sash", left_ear="Loquac. Earring", right_ear="Ethereal Earring",
	left_ring="Prolix Ring", back="Swith Cape",} --needs adjustments.
	
	sets.precast.impact={body="Twilight Cloak", hands="Helios Gloves", feet="Chelona Boots",
	neck="Stoicheion Medal", waist="Othila Sash", left_ear="Loquac. Earring", right_ear="Ethereal Earring",
	legs={ name="Artsieq Hose", augments={'MP+30','Mag. Acc.+20','MND+7',}},
	left_ring="Prolix Ring", back="Swith Cape",} --needs adjustments.
	
	sets.precast["Ninjutsu"]=set_combine(sets.precast.fc, {neck="Magoraga Beads",})
	sets.precast["Healing Magic"]=set_combine(sets.precast.fc, {})
	sets.precast["Enhancing Magic"]=set_combine(sets.precast.fc, {waist="Siegel Sash",})
	sets.precast["Enfeebling Magic"]=set_combine(sets.precast.fc, {})
	sets.precast["Dark Magic"]=set_combine(sets.precast.fc, {})
	sets.precast["Divine Magic"]=set_combine(sets.precast.fc, {})
	sets.precast["Elemental Magic"]=set_combine(sets.precast.fc, {neck="Stoicheion Medal",})
--premagic sets
	
--midmagic sets
	sets.aspirdrain.potency={main="Marin Staff", sub="Caecus Grip", ammo="Pemphredo Tathlum", head="Appetence Crown", body="Shango Robe",
	hands="Hagondes Cuffs +1", legs="Artsieq Hose", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}}, neck="Eddy Necklace", 
	left_ear="Gwati Earring", right_ear="Hirudinea Earring", left_ring="Sangoma Ring", right_ring="Archon Ring", waist="Fucho-no-Obi",
	back="Bane Cape",} --needs adjustments
	
	sets.aspirdrain.accuracy={main="Marin Staff", sub="Caecus Grip", ammo="Pemphredo Tathlum", head="Appetence Crown", body="Shango Robe",
	hands="Hagondes Cuffs +1", legs="Artsieq Hose", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}}, neck="Eddy Necklace", 
	left_ear="Gwati Earring", right_ear="Hirudinea Earring", left_ring="Sangoma Ring", right_ring="Archon Ring", waist="Fucho-no-Obi",
	back="Bane Cape",} --needs adjustments
	
	sets.stun.recast={main="Marin Staff", sub="Caecus Grip", ammo="Pemphredo Tathlum", head="Nahtirah Hat", body="Shango Robe",
	hands="Hagondes Cuffs +1", legs={ name="Artsieq Hose", augments={'MP+30','Mag. Acc.+20','MND+7',}},
	feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}}, neck="Eddy Necklace", waist="Ninurta's Sash",
	left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Sangoma Ring", right_ring="Strendu Ring",
	back="Bane Cape",} --needs adjustments
	
	sets.stun.accuracy={main="Marin Staff", sub="Caecus Grip", ammo="Pemphredo Tathlum", head="Nahtirah Hat", body="Shango Robe",
	hands="Hagondes Cuffs +1", legs={ name="Artsieq Hose", augments={'MP+30','Mag. Acc.+20','MND+7',}},
	feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}}, neck="Eddy Necklace", waist="Ninurta's Sash",
	left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Sangoma Ring", right_ring="Strendu Ring",
	back="Bane Cape",} --needs adjustments
	
	sets.midcast["Dark Magic"]={main="Marin Staff", sub="Caecus Grip", ammo="Pemphredo Tathlum", head="Nahtirah Hat", body="Shango Robe",
	hands="Hagondes Cuffs +1", legs="Artsieq Hose", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}}, neck="Eddy Necklace", waist="Eschan Stone",
	left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Sangoma Ring", right_ring="Archon Ring",
	back="Bane Cape",}
	
	sets.enfeeble["White Magic"]={main={name="Twebuliij", augments={'MP+60','"Mag. Acc.+15"','MND+12',}}, sub="Mephitis Grip", ammo="Pemphredo Tathlum", body="Shango Robe",
	hands="Lurid Mitts", legs="Artsieq Hose", head="Befouled Crown", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}}, neck="Eddy Necklace",
	waist="Rumination Sash", left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Sangoma Ring", right_ring="Levia. Ring",
	back="Bane Cape",} --needs rdm jse inserting
	
	sets.enfeeble["Black Magic"]={main={name="Twebuliij", augments={'MP+60','"Mag. Acc.+15"','MND+12',}}, sub="Mephitis Grip", --rdm only body here,
	head="Befouled Crown", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}},
	hands="Lurid Mitts", legs="Portent Pants", neck="Incanter's Torque", waist="Rumination Sash", right_ring="Sangoma Ring",
	left_ear="Psystorm Earring", right_ear="Lifestorm Earring", left_ring="Globidonta Ring", back="Bane Cape",} --needs rdm jse inserting
	
	sets.healing.cure={main="Tamaxchi", sub="Sors Shield", head="Nahtirah Hat", body="Heka's Kalasiris", hands="Serpentes Cuffs",
	legs="Nares Trews", feet="Serpentes Sabots", neck="Loricate Torque +1", waist="Cascade Belt", left_ear="Sanare Earring",
	right_ear="Ethereal Earring", left_ring="Vocane Ring", right_ring="Shadow Ring", back="Swith Cape",} --needs adjustment
	
	sets.healing.regen={}
	
	sets.healing.recast={}
	
	sets.elemental.nuke.potency={}
	
	sets.elemental.nuke.accuracy={}
	
	sets.elemental.dot={main="Marin Staff", sub="Elementa Grip", ammo="Pemphredo Tathlum", head="Wicce Petasos +1", 
	body="Shango Robe", hands="Hagondes Cuffs +1", legs="Artsieq Hose", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}},
	neck="Eddy Necklace", waist="Eschan Stone", left_ear="Strophadic Earring", right_ear="Gwati Earring",
	left_ring="Sangoma Ring", right_ring="Strendu Ring", back="Bane Cape",}
	
	sets.elemental.impact={main=nukestaff, sub="Elementa Grip", ammo="Pemphredo Tathlum", body="Twilight Cloak",
	hands="Yaoyotl Gloves", legs="Hagondes Pants +1", feet="Umbani Boots", neck="Eddy Necklace", waist="Othila Sash", 
	left_ear="Crematio Earring", right_ear="Friomisi Earring", left_ring="Archon Ring", right_ring="Strendu Ring",
    back="Toro Cape",} --needs adjustments
	
	sets.divine.enfeeble={}
	
	sets.divine.nuke={}
	
	sets.enhancing["Stoneskin"]={}
	
	sets.enhancing["Aquaveil"]={}
	
	sets.enhancing["Phalanx"]={}
	
	sets.enhancing["Phalanx II"]={}
	
	sets.enhancing.buff={main="Marin Staff", sub="Fulcio Grip", ammo="Pemphredo Tathlum", head="Nahtirah Hat", body="Anhur Robe",
	hands="Lurid Mitts", legs="Portent Pants", feet="Chelona Boots", neck="Incanter's Torque", waist="Cascade Belt",
	left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Levia. Ring", right_ring="Levia. Ring",
	back="Swith Cape",} --needs adjustments
	
	sets.ninjutsu.accuracy={}
	
	sets.ninjutsu.recast={}
--midmagic sets
	
--WS Sets
	--Sword WS
	sets.ws.dmg["Fast Blade"]={}
	
	sets.ws.acc["Fast Blade"]={}
	
	sets.ws.dmg["Burning Blade"]=sets.magicws
	
	sets.ws.acc["Burning Blade"]=sets.magicws
	
	sets.ws.dmg["Red Lotus Blade"]=sets.magicws
	
	sets.ws.acc["Red Lotus Blade"]=sets.magicws
	
	sets.ws.dmg["Flat Blade"]={}
	
	sets.ws.acc["Flat Blade"]={}
	
	sets.ws.dmg["Shining Blade"]=sets.magicws
	
	sets.ws.acc["Shining Blade"]=sets.magicws
	
	sets.ws.dmg["Seraph Blade"]=sets.magicws
	
	sets.ws.acc["Seraph Blade"]=sets.magicws
	
	sets.ws.dmg["Circle Blade"]={}
	
	sets.ws.acc["Circle Blade"]={}
	
	sets.ws.dmg["Spirits Within"]={}
	
	sets.ws.acc["Spirits Within"]={}
	
	sets.ws.dmg["Vorpal Blade"]={}
	
	sets.ws.acc["Vorpal Blade"]={}
	
	sets.ws.dmg["Savage Blade"]={}
	
	sets.ws.acc["Savage Blade"]={}
	
	sets.ws.dmg["Sanguine Blade"]=sets.magicws
	
	sets.ws.acc["Sanguine Blade"]=sets.magicws
	
	sets.ws.dmg["Chant du Cygne"]={}
	
	sets.ws.acc["Chant du Cygne"]={}
	
	sets.ws.dmg["Death Blossom"]={}
	
	sets.ws.acc["Death Blossom"]={}
	
	sets.ws.dmg["Requiescat"]={}
	
	sets.ws.acc["Requiescat"]={}
	--Sword WS
	--Dagger WS
	sets.ws.dmg["Wasp Sting"]={}
	
	sets.ws.acc["Wasp Sting"]={}
	
	sets.ws.dmg["Viper Bite"]={}
	
	sets.ws.acc["Viper Bite"]={}
	
	sets.ws.dmg["Shadowstitch"]={}
	
	sets.ws.acc["Shadowstitch"]={}
	
	sets.ws.dmg["Gust Slash"]=sets.magicws
	
	sets.ws.acc["Gust Slash"]=sets.magicws
	
	sets.ws.dmg["Cyclone"]=sets.magicws
	
	sets.ws.acc["Cyclone"]=sets.magicws
	
	sets.ws.dmg["Energy Steal"]=sets.magicws
	
	sets.ws.acc["Energy Steal"]=sets.magicws
	
	sets.ws.dmg["Energy Drain"]=sets.magicws
	
	sets.ws.acc["Energy Drain"]=sets.magicws
	
	sets.ws.dmg["Evisceration"]={}
	
	sets.ws.acc["Evisceration"]={}
	
	sets.ws.dmg["Aeolian Edge"]=sets.magicws
	
	sets.ws.acc["Aeolian Edge"]=sets.magicws
	--Dagger WS
--WS Sets
	
--JA Sets
	sets.ja[""]={}
--JA Sets
	
--TP Sets
	sets.tp.lowacc={}
	
	sets.tp.medacc={}
	
	sets.tp.highacc={}
	
	sets.hybrid.lowacc={}
	
	sets.hybrid.medacc={}
	
	sets.hybrid.highacc={}
--TP Sets
	
--Idle Sets
	sets.idle.refresh={main="Bolelabunga", sub="Genbu's Shield", head="Befouled Crown", body="Hagondes Coat +1", hands="Serpentes Cuffs",
	legs="Assid. Pants +1", feet="Serpentes Sabots", neck="Loricate Torque +1", waist="Fucho-no-Obi", left_ear="Sanare Earring", right_ear="Ethereal Earring",
	left_ring="Defending Ring", right_ring="Shadow Ring", back="Shadow Mantle",} -- needs rdm jse and minor adjustments.
	
	sets.idle.pdt={}
	
	sets.idle.mdt={}
	
	sets.idle.dt={}
	
	sets.idle.pdtkite={}
	
	sets.idle.mdtkite={}
	
	sets.idle.dtkite={}
--Idle Sets
end

function precast(spell)
	if spell.prefix=="/magic" or spell.prefix=="/ninjutsu" then
		equip(sets.precast[spell.skill])
	end
	if spell.prefix=="/jobability" then
		equip(sets.ja[spell.english])
	end
	if spell.prefix=="/weaponskill" then
		if WSType=="damage" then
			equip(sets.ws.dmg[spell.english])
		elseif WSType=="accuracy" then
			equip(sets.ws.acc[spell.english])
		end
	end
end

function midcast(spell)
	if spell.prefix=="/magic" then
		if spell.skill=="Enfeebling Magic" then
			if spell.type=="WhiteMagic" then
				equip(sets.enfeeble["White Magic"])
			else
				equip(sets.enfeeble["Black Magic"])
			end
		end
		if spell.skill=="Healing Magic" then
			if spell.english:find('Cure') or spell.english:find('Cura') then
				equip(sets.healing.cure)
			elseif spell.english:find('Regen') then
				equip(sets.healing.regen)
			else
				equip(sets.healing.recast)
			end
		end
		if spell.skill=="Dark Magic" then
			if spell.english:find('Aspir') or spell.english:find('Drain') then
				equip(sets.aspirdrain[MagicType])
			elseif spell.english=="Stun" then
				equip(sets.stun[MagicType])
			else
				equip(sets.midcast[spell.skill])
			end
		end
		if spell.skill=="Elemental Magic" then
			if spell.english=="Impact" then
				equip(sets.elemental.impact)
			elseif Nuke:contains(spell.english) then
				equip(sets.elemental.nuke[MagicType])
			elseif Elemental_DoT:contains(spell.english) then
				equip(sets.elemental.dot)
			end
		end
		if spell.skill=="Divine Magic" then
			if Nuke:contains(spell.english) then
				equip(sets.divine.nuke)
			else
				equip(sets.divine.enfeeble)
			end
		end
		if spell.skill=="Enhancing Magic" then
			if Buff:contains(spell.english) then
				equip(sets.enhancing[spell.english])
			else
				equip(sets.enhancing.buff)
			end
		end
	end
end

function aftercast(spell)
	if not spell.interrupted then
        if spell.english == 'Sleep' or spell.english == 'Sleepga' then
            send_command('@wait 55;input /echo ------- '..spell.english..' is wearing off in 5 seconds -------')
        elseif spell.english == 'Sleep II' then
            send_command('@wait 85;input /echo ------- '..spell.english..' is wearing off in 5 seconds -------')
        elseif spell.english == 'Break' then
            send_command('@wait 25;input /echo ------- '..spell.english..' is wearing off in 5 seconds -------')
        end
    end
	status_change(player.status)
end

function status_change(new,old)
	if new=="engaged" then
		if TPMode=="dd" then
			equip(sets.tp[TPType])
		elseif TPMode=="hybrid" then
			equip(sets.hybrid[TPType])
		elseif TPMode=="pdt" then
			equip(sets.idle.pdt)
		elseif TPMode=="mdt" then
			equip(sets.idle.mdt)
		elseif TPMode=="dt" then
			equip(sets.idle.dt)
		end
	else
		equip(sets.idle[IdleType])
	end
end

function self_command(command)
	-- engage variable commands rule start
	if command == 'dd' then
		TPSet="tp"
		add_to_chat(206, 'DD Mode')
		--send_command('text tpvariable text "DD MODE"')
		windower.prim.set_texture('TP_SET','/windower 4/addons/gearswap/data/'..player.name..'/images/ddmode.png')
	end
	if command == 'hybrid' then
		TPSet="hybrid"
		add_to_chat(206, 'HYBRID MODE')
		--send_command('text tpvariable text "Hybrid MODE"')
		windower.prim.set_texture('TP_SET','/windower 4/addons/gearswap/data/'..player.name..'/images/hybridmode.png')
	end
	if command == 'pdt' then
		TPSet="pdt"
		add_to_chat(206, 'PDT MODE')
		--send_command('text tpvariable text "PDT MODE"')
		windower.prim.set_texture('TP_SET','/windower 4/addons/gearswap/data/'..player.name..'/images/pdtmode.png')
	end
	if command == 'mdt' then
		TPSet="mdt"
		add_to_chat(206, 'MDT MODE')
		--send_command('text tpvariable text "MDT MODE"')
		windower.prim.set_texture('TP_SET','/windower 4/addons/gearswap/data/'..player.name..'/images/mdtmode.png')
	end
	if command == 'dt' then
		TPSet="dt"
		add_to_chat(206, 'MDT MODE')
		--send_command('text tpvariable text "MDT MODE"')
		windower.prim.set_texture('TP_SET','/windower 4/addons/gearswap/data/'..player.name..'/images/dtmode.png')
	end
	if command == 'lowacc' then
		Acc="lowacc"
		add_to_chat(206, 'Low Accuracy Mode')
		--send_command('text idlevariable text "LOW-ACC"')
		windower.prim.set_texture('ACC_SET','/windower 4/addons/gearswap/data/'..player.name..'/images/lowacc.png')
	elseif command == 'medacc' then
		Acc="medacc"
		add_to_chat(206, 'Medium Accuracy Mode')
		--send_command('text idlevariable text "MEDIUM-ACC"')
		windower.prim.set_texture('ACC_SET','/windower 4/addons/gearswap/data/'..player.name..'/images/medacc.png')
	elseif command == 'highacc' then
		Acc="highacc"
		add_to_chat(206, 'High Accuracy Mode')
		--send_command('text idlevariable text "HIGH-ACC"')
		windower.prim.set_texture('ACC_SET','/windower 4/addons/gearswap/data/'..player.name..'/images/highacc.png')
	end
	-- engage variable commands rule end
	-- idle variable commands rule start
	if command == 'idle' then
		IdleMode="idle"
		add_to_chat(206, 'STANDARD IDLE MODE')
		--send_command('text wsvariable text "STANDARD IDLE"')
		windower.prim.set_texture('IDLE_SET','/windower 4/addons/gearswap/data/'..player.name..'/images/standardidle.png')
		send_command('alias idle gs equip sets.idle.refresh')
		status_change(player.status)
	end
	if command == 'kitepdt' then
		IdleMode="pdtkite"
		add_to_chat(206, 'PDT KITING MODE')
		--send_command('text wsvariable text "PDT KITE"')
		windower.prim.set_texture('IDLE_SET','/windower 4/addons/gearswap/data/'..player.name..'/images/pdtkite.png')
		send_command('alias idle gs equip sets.idle.pdtkite')
		status_change(player.status)
	end
	if command == 'kitemdt' then
		IdleMode="mdtkite"
		add_to_chat(206, 'MDT KITING MODE')
		--send_command('text wsvariable text "MDT KITE"')
		windower.prim.set_texture('IDLE_SET','/windower 4/addons/gearswap/data/'..player.name..'/images/mdtkite.png')
		send_command('alias idle gs equip sets.idle.mdtkite')
		status_change(player.status)
	end
	if command == 'pdtidle' then
		IdleMode="pdt"
		add_to_chat(206, 'PDT IDLE MODE')
		--send_command('text wsvariable text "PDT IDLE"')
		windower.prim.set_texture('IDLE_SET','/windower 4/addons/gearswap/data/'..player.name..'/images/pdtidle.png')
		send_command('alias idle gs equip sets.idle.pdt')
		status_change(player.status)
	end
	if command == 'mdtidle' then
		IdleMode="mdt"
		add_to_chat(206, 'MDT IDLE MODE')
		--send_command('text wsvariable text "MDT IDLE"')
		windower.prim.set_texture('IDLE_SET','/windower 4/addons/gearswap/data/'..player.name..'/images/mdtidle.png')
		send_command('alias idle gs equip sets.idle.mdt')
		status_change(player.status)		
	end
	if command == 'dtidle' then
		IdleMode="dt"
		add_to_chat(206, 'DT IDLE MODE')
		--send_command('text wsvariable text "DT IDLE"')
		windower.prim.set_texture('IDLE_SET','/windower 4/addons/gearswap/data/'..player.name..'/images/dtidle.png')
		send_command('alias idle gs equip sets.idle.dt')
		status_change(player.status)
	end
	if command == 'dtkite' then
		IdleMode="dtidle"
		add_to_chat(206, 'DT KITING MODE')
		--send_command('text wsvariable text "DT KITE"')
		windower.prim.set_texture('IDLE_SET','/windower 4/addons/gearswap/data/'..player.name..'/images/dtkite.png')
		send_command('alias idle gs equip sets.idle.dtkite')
	end
	-- idle variable commands rule end
	-- magic toggles
	if command=="magictoggle" then
		if MagicType=="potency" then
			MagicType="Accuracy"
			add_to_chat(206, "MAGIC MODE: ACCURACY")
			--send_command('text pdtvariable text "Magic:ACC"')
			windower.prim.set_texture('MAGIC_MODE','/windower 4/addons/gearswap/data/'..player.name..'/images/magicaccuracy.png')
		else
			MagicType="potency"
			add_to_chat(206, "MAGIC MODE: POTENCY")
			--send_command('text pdtvariable text "Magic:DMG"')
			windower.prim.set_texture('MAGIC_MODE','/windower 4/addons/gearswap/data/'..player.name..'/images/magicpotency.png')
		end
	end
	-- magic toggles
	
	-- ws toggle
	if command=="wsacctoggle" then
		if WSType=="damage" then
			WSType="accuracy"
			add_to_chat(206, "WS MODE: ACCURACY")
			--send_command('text doavariable text "WS MODE:ACC"')
			windower.prim.set_texture('WS_SET','/windower 4/addons/gearswap/data/'..player.name..'/images/acc.png')
		else
			WSType="damage"
			add_to_chat(206, "WS MODE: DAMAGE")
			--send_command('text doavariable text "WS MODE:DMG"')
			windower.prim.set_texture('WS_SET','/windower 4/addons/gearswap/data/'..player.name..'/images/dmg.png')
		end
	end
	-- ws toggle
end