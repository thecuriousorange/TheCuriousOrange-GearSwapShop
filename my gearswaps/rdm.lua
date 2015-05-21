function get_sets()
--include file
	include('tco-include.lua')
--include file

--alias and text box set up
	send_command('text doavariable create;text doavariable bold true;text doavariable text "WS MODE:DMG";text doavariable pos 900 140')
	send_command('text pdtvariable text "Magic:DMG"')
	send_command('text wsvariable text "STANDARD IDLE"')
	send_command('text tpvariable text "DD MODE"')
	send_command('text idlevariable text "LOW-ACC"')
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
	"Poisonga II", "Dispel", "Gravity", "Bind", "Break", "Breakga", "Blind", "Blind II", "Gravity", "Gravity II",}
	
	EnfeeblingMagic_mndmod= S{"Paralyze", "Paralyze II", "Dia", "Dia II", "Dia III", "Diaga", "Diaga II", 
	"Slow", "Slow II", "Addle",}
	
	Buffs= S{"Stoneskin", "Phalanx", "Phalanx II", "Aquaveil",}
--spell lists

--variables
	TPMode="dd"
	TPType="lowacc"
	IdleType="refresh"
	StunType="recast"
	AspirDrainType="potency"
	NukeType="potency"
	WSType="damage"
	
	sets.TPMode= T{}
	sets.TPType= T{}
	sets.IdleType= T{}
	sets.StunType= T{}
	sets.AspirDrainType= T{}
	sets.NukeType= T{}
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
	sets.precast.fc={}
	sets.precast["Ninjutsu"]={}
	sets.precast["Healing Magic"]={}
	sets.precast["Enhancing Magic"]={}
	sets.precast["Enfeebling Magic"]={}
	sets.precast["Dark Magic"]={}
	sets.precast["Divine Magic"]={}
	sets.precast["Elemental Magic"]={}
--premagic sets
	
--midmagic sets
	sets.aspirdrain.potency={}
	
	sets.aspirdrain.accuracy={}
	
	sets.stun.recast={}
	
	sets.stun.accuracy={}
	
	sets.midcast["Dark Magic"]={}
	
	sets.enfeeble["White Magic"]={}
	
	sets.enfeeble["Black Magic"]={}
	
	sets.healing.cure={}
	
	sets.healing.regen={}
	
	sets.healing.recast={}
	
	sets.elemental.nuke.potency={}
	
	sets.elemental.nuke.accuracy={}
	
	sets.elemental.dot={}
	
	sets.elemental.impact={}
	
	sets.divine.enfeeble={}
	
	sets.divine.nuke={}
	
	sets.enhancing["Stoneskin"]={}
	
	sets.enhancing["Aquaveil"]={}
	
	sets.enhancing["Phalanx"]={}
	
	sets.enhancing["Phalanx II"]={}
	
	sets.enhancing.buff={}
	
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
	sets.idle.refresh={}
	
	sets.idle.pdt={}
	
	sets.idle.mdt={}
	
	sets.idle.dt={}
	
	sets.idle.kite={}
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
				equip(sets.enfeeble.whitemagic)
			else
				equip(sets.enfeeble.blackmagic)
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
	if player.status=="engaged" then
		if TPMode=="dd" then
			equip(sets.tp[TPType])
		elseif TPMode=="hybrid" then
			equip(sets.hybrid[TPType])
		elseif TPMode=="pdt" then
			equip(sets.idle.pdt)
		elseif TPMode=="mdt" then
			equip(sets.idle.mdt)
		end
	else
		equip(sets.idle[IdleType])
	end
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
	-- engage variable commands rule end
	
	-- magic toggles
	if command=="magictoggle" then
		if MagicType=="potency" then
			MagicType="Accuracy"
			add_to_chat(206, "MAGIC MODE: ACCURACY")
			send_command('text pdtvariable text "Magic:ACC"')
		else
			MagicType="potency"
			add_to_chat(206, "MAGIC MODE: POTENCY")
			send_command('text pdtvariable text "Magic:DMG"')
		end
	end
	-- magic toggles
	
	-- ws toggle
	if command=="wstoggle" then
		if WSType=="damage" then
			WSType="accuracy"
			add_to_chat(206, "WS MODE: ACCURACY")
		else
			WSType="damage"
			add_to_chat(206, "WS MODE: DAMAGE")
		end
	end
	-- ws toggle
end