function get_sets()
	--includes
	include('boxes.lua')
	include('organizer-lib.lua')
	--includes
	
	--keybinds
	send_command('bind #f1 gs c tptoggle')
	send_command('bind #f4 gs c idletoggle')
	send_command('bind @f12 gs c wstoggle')
	send_command('bind #2 gs equip sets.engaged.pdt')
	--keybinds
	
	--text box setup
	send_command('text tpvariable text "TP MODE: XHIT"')
	send_command('text wsvariable text "WSType: DMG"')
	send_command('text idlevariable text "IDLE MODE: REGEN"')
	send_command('text pdtvariable text "BOW TYPE: A"')
	--text box setup
	
	--variables
	WSType="damage"
	TPType="xhit"
	IdleType="regen"
	Weaponry="bow"
	BowType="typea"
	GunType="typea"
	
	sets.BowType= T{}
	sets.GunType= T{}
	sets.Weaponry= T{}
	sets.WSType= T{}
	sets.TPType= T{}
	sets.IdleType= T{}
	--variables
	
	--base sets
	sets.engaged={}
	sets.ja={}
	sets.midshot={}
	sets.bowws={}
	sets.bowws.dmg={}
	sets.bowws.acc={}
	sets.gunws={}
	sets.gunws.dmg={}
	sets.gunws.acc={}
	sets.idle={}
	sets.weaponry={}
	sets.bow={}
	sets.gun={}
	--base sets
	
	--weaponry
	sets.bow.typea={range="Hangaku-No-Yumi", ammo="Achiyal. Arrow",}
	
	sets.bow.typeb={range="Hangaku-No-Yumi", ammo="Achiyal. Arrow",}
	
	sets.gun.typea={range="Vanir Gun", ammo="Achiyal. Bullet",}
	
	sets.gun.typeb={range="Vanir Gun", ammo="Achiyal. Bullet",}
	
	sets.weaponry.staffgrip={main="Mekki Shakki", sub="Bloodrain Strap",}
	
	sets.weaponry.dw={main="Hurlbat", sub="Atoyac",}
	--weaponry
	
	--idlesets
	sets.idle.regen={head="Oce. Headpiece +1", body="Iuitl Vest +1", hands="Umuthi Gloves", legs="Iuitl Tights +1", 
	feet="Fajin Boots", neck="Wiglen Gorget", waist="Flume Belt", left_ear="Sanare Earring", 
	right_ear="Ethereal Earring", left_ring="Shadow Ring", right_ring="Sheltered Ring", 
	back="Shadow Mantle",}
	
	sets.idle.pdt={head={ name="Iuitl Headgear +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -4%','"Dbl.Atk."+1',}},
	body="Onca Suit", neck="Loricate Torque +1", waist="Flume Belt", left_ear="Genmei Earring", right_ear="Ethereal Earring",
	left_ring="Vocane Ring", right_ring="Defending Ring", back="Mollusca Mantle",}
	
	sets.engaged.pdt={head={ name="Iuitl Headgear +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -4%','"Dbl.Atk."+1',}},
	body="Onca Suit", neck="Loricate Torque +1", waist="Flume Belt", left_ear="Genmei Earring", right_ear="Ethereal Earring",
	left_ring="Vocane Ring", right_ring="Defending Ring", back="Mollusca Mantle",}
	--idlesets
	
	--shooting sets
	sets.preshot={head="Sylvan Gapette +2", body="Arcadian Jerkin", hands="Iuitl Wristbands +1", 
	legs="Orion Braccae +1", feet="Wurrukatte Boots", neck="Ocachi Gorget", waist="Impulse Belt", 
	left_ear="Volley Earring", right_ear="Clearview Earring", left_ring="Paqichikaji Ring", 
	right_ring="Hajduk Ring", back="Lutian Cape",}
	
	sets.midshot.xhit={head="Arcadian Beret", body="Kyujutsugi", hands="Manibozho Gloves", 
	legs="Nahtirah Trousers", feet="Orion Socks +1", neck="Ocachi Gorget", waist="Elanid Belt",
	left_ear="Volley Earring", right_ear="Neritic Earring", left_ring="Paqichikaji Ring", 
	right_ring="Hajduk Ring", back="Lutian Cape",}
	
	sets.midshot.acc={head="Umbani Cap", body="Kyujutsugi", feet="Orion Socks +1",
	hands="Adhemar Wristbands",
	legs={ name="Arcadian Braccae", augments={'Enhances "Eagle Eye Shot" effect',}},
	neck="Combatant's Torque", waist="Elanid Belt", left_ear="Clearview Earring",
	right_ear="Volley Earring", left_ring="Arewe Ring +1", right_ring="Hajduk Ring",
	back={ name="Lutian Cape", augments={'STR+3','AGI+1','"Snapshot"+2',}},}
	
	sets.barrage={hands="Orion Bracers +1",}
	
	sets.stealthshot={feet="Arcadian Socks",}
	
	sets.flashyshot={hands="Arcadian Bracers",}
	
	sets.doubleshot={body="Arcadian Jerkin",}
	
	sets.bountyshot={hands="Syl. Glvltte. +2",}
	--shooting sets
	
	--job abilities
	sets.ja["Eagle Eye Shot"]=set_combine(sets.strws, {neck="Ocachi Gorget", waist="Elanid Belt", legs="Arcadian Braccae",})
	
	sets.ja["Scavenge"]={feet="Orion Socks +1",}
	
	sets.ja["Shadowbind"]=set_combine(sets.midshot.acc, {hands="Orion Bracers +1",})
	
	sets.ja["Camouflage"]={body="Orion Jerkin",}
	
	sets.ja["Sharpshot"]={legs="Orion Braccae +1",}
	
	sets.ja["Barrage"]=set_combine(sets.midshot.acc, {hands="Orion Bracers +1",})
	
	sets.ja["Unlimited Shot"]={feet="Sylvan Bottln. +2",}
	
	sets.ja["Stealth Shot"]=set_combine(sets.midshot.acc, {feet="Arcadian Socks",})
	
	sets.ja["Flashy Shot"]=set_combine(sets.midshot.acc, {hands="Arcadian Bracers",})
	
	sets.ja["Velocity Shot"]={body="Sylvan Caban +2",}
	
	sets.ja["Double Shot"]=set_combine(sets.midshot.xhit, {body="Arcadian Jerkin",})
	
	sets.ja["Bounty Shot"]=set_combine(sets.midshot.acc, {hands="Syl. Glvltte. +2",})
	--job abilities
	
	--magic and ninjutsu
	sets.precast={}
	
	sets.midcast={}
	--magic and ninjutsu
	
	--ws base sets
	sets.agiws={head="Orion Beret +1", body="Kyujutsugi", hands="Orion Bracers +1", legs="Nahtirah Trousers",
	feet="Orion Socks +1", neck="Fotia Gorget", waist="Fotia Belt", left_ear="Neritic Earring",
	right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1",
	right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.strws={head="Orion Beret +1", body="Kyujutsugi", legs="Nahtirah Trousers",
	hands="Adhemar Wristbands",
	feet="Orion Socks +1", neck="Fotia Gorget", waist="Fotia Belt", left_ear="Neritic Earring",
	right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, 
	left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.dexws={head={ name="Uk'uxkaj Cap", augments={'Haste+2','"Snapshot"+2','DEX+8',}},
	body="Kyujutsugi", legs="Nahtirah Trousers", feet="Orion Socks +1", back="Kayapa Cape",
	hands="Adhemar Wristbands",
	neck="Fotia Gorget", waist="Fotia Belt", left_ear="Neritic Earring", left_ring="Ramuh Ring +1",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
	right_ring="Rajas Ring",}
	--ws base sets
	
	--archery ws
	sets.bowws.dmg["Flaming Arrow"]=sets.strws
	
	sets.bowws.acc["Flaming Arrow"]=sets.strws
	
	sets.bowws.dmg["Piercing Arrow"]=sets.strws
	
	sets.bowws.acc["Piercing Arrow"]=sets.strws
	
	sets.bowws.dmg["Dulling Arrow"]=sets.strws
	
	sets.bowws.acc["Dulling Arrow"]=sets.strws
	
	sets.bowws.dmg["Sidewinder"]=sets.strws
	
	sets.bowws.acc["Sidewinder"]=sets.strws
	
	sets.bowws.dmg["Blast Arrow"]=sets.strws
	
	sets.bowws.acc["Blast Arrow"]=sets.strws
	
	sets.bowws.dmg["Arching Arrow"]=sets.strws
	
	sets.bowws.acc["Arching Arrow"]=sets.strws
	
	sets.bowws.dmg["Empyreal Arrow"]=sets.strws
	
	sets.bowws.acc["Empyreal Arrow"]=sets.strws
	
	sets.bowws.dmg["Namas Arrow"]=sets.strws
	
	sets.bowws.acc["Namas Arrow"]=sets.strws
	
	sets.bowws.dmg["Refulgent Arrow"]=sets.strws
	
	sets.bowws.acc["Refulgent Arrow"]=sets.strws
	
	sets.bowws.dmg["Jishnu's Radiance"]=sets.dexws
	
	sets.bowws.acc["Jishnu's Radiance"]=sets.dexws
	
	sets.bowws.dmg["Apex Arrow"]=sets.agiws
	
	sets.bowws.acc["Apex Arrow"]=sets.agiws
	--archery ws
	
	--gun ws
	sets.gunws.dmg["Hot Shot"]=sets.strws
	
	sets.gunws.acc["Hot Shot"]=sets.strws
	
	sets.gunws.dmg["Split Shot"]=sets.strws
	
	sets.gunws.acc["Split Shot"]=sets.strws
	
	sets.gunws.dmg["Sniper Shot"]=sets.strws
	
	sets.gunws.acc["Sniper Shot"]=sets.strws
	
	sets.gunws.dmg["Slug Shot"]=sets.strws
	
	sets.gunws.acc["Slug Shot"]=sets.strws
	
	sets.gunws.dmg["Blast Shot"]=sets.strws
	
	sets.gunws.acc["Blast Shot"]=sets.strws
	
	sets.gunws.dmg["Heavy Shot"]=sets.strws
	
	sets.gunws.acc["Heavy Shot"]=sets.strws
	
	sets.gunws.dmg["Detonator"]=sets.strws
	
	sets.gunws.acc["Detonator"]=sets.strws
	
	sets.gunws.dmg["Coronach"]=sets.strws
	
	sets.gunws.acc["Coronach"]=sets.strws
	
	sets.gunws.dmg["Trueflight"]=sets.strws
	
	sets.gunws.acc["Trueflight"]=sets.strws
	
	sets.gunws.dmg["Numbing Shot"]=sets.strws
	
	sets.gunws.acc["Numbing Shot"]=sets.strws
	
	sets.gunws.dmg["Wildfire"]=sets.agiws
	
	sets.gunws.acc["Wildfire"]=sets.agiws
	
	sets.gunws.dmg["Last Stand"]=sets.strws
	
	sets.gunws.acc["Last Stand"]=sets.strws
	--gun ws
end

function precast(spell)
	if spell.prefix=="/range" then
		equip(sets.preshot)
	elseif spell.prefix=="/jobability" then
		equip(sets.ja[spell.english])
	elseif spell.prefix=="/magic" or spell.prefix=="/ninjutsu" then
		equip(sets.precast)
	elseif spell.prefix=="/weaponskill" then
		if WSType=="damage" then 
			if spell.skill=="Marksmanship" then
				equip(sets.gunws.dmg[spell.english])
			elseif spell.skill=="Archery" then
				equip(sets.bowws.dmg[spell.english])
			end
		elseif WSType=="accuracy" then
			if skill.type=="Marksmanship" then
				equip(sets.gunws.acc[spell.english])
			elseif skill.type=="Archery" then
				equip(sets.bowws.acc[spell.english])
			end
		end
	end
	if player.sub=="nin" or player.sub=="dnc" then
		equip(sets.weaponry.dw)
	else
		equip(sets.weaponry.staffgrip)
	end
	if Weaponry=="bow" then
		equip(sets.bow[BowType])
	else
		equip(sets.gun[GunType])
	end
end

function midcast(spell)
	if spell.prefix=="/range" then
		equip(sets.midshot[TPType])
		if buffactive["Barrage"] then
			equip(sets.barrage)
		end
		if buffactive["Stealth Shot"] then
			equip(sets.stealthshot)
		end
		if buffactive["Flashy Shot"] then
			equip(sets.flashyshot)
		end
		if buffactive["Double Shot"] then
			equip(sets.doubleshot)
		end
		if buffactive["Bounty Shot"] then
			equip(sets.bountyshot)
		end
	end
	if player.sub=="nin" or player.sub=="dnc" then
		equip(sets.weaponry.dw)
	else
		equip(sets.weaponry.staffgrip)
	end
	if Weaponry=="bow" then
		equip(sets.bow[BowType])
	else
		equip(sets.gun[GunType])
	end
end

function aftercast(spell)
	status_change(player.status)
end

function status_change(new,old)
	if new=="Engaged" then
		equip(sets.engaged.pdt)
	else
		equip(sets.idle[IdleType])
	end
	if player.sub=="nin" or player.sub=="dnc" then
		equip(sets.weaponry.dw)
	else
		equip(sets.weaponry.staffgrip)
	end
	if Weaponry=="bow" then
		equip(sets.bow[BowType])
	else
		equip(sets.gun[GunType])
	end
end

function self_command(command)
	if command=="tptoggle" then
		if TPType=="xhit" then
			TPType="accuracy"
			add_to_chat(206,'TP MODE: ACC')
			send_command('text tpvariable text "TP MODE: ACC"')
		else
			TPType="xhit"
			add_to_chat(206,'TP MODE: XHIT')
			send_command('text tpvariable text "TP MODE: XHIT"')
		end
	end
	if command=="wstoggle" then
		if WSType=="damage" then
			WSType="accuracy"
			add_to_chat(206,'WS MODE: ACCURACY')
			send_command('text wsvariable text "WSType: ACC"')
		else
			WSType="damage"
			add_to_chat(206,'WS MODE: DAMAGE')
			send_command('text wsvariable text "WSType: DMG"')
		end
	end
	if command=="idletoggle" then
		if IdleType=="regen" then
			IdleType="pdt"
			add_to_chat(206,'IDLE MODE: PDT')
			send_command('text idlevariable text "IDLE MODE: PDT"')
		else
			IdleType="regen"
			add_to_chat(206,'IDLE MODE: REGEN')
			send_command('text idlevariable text "IDLE MODE: REGEN"')
		end
	end
end