function get_sets()
-- includes
	include('boxes.lua')
	include('skillchain-elements.lua')
-- includes
--default text box setup
	send_command('text tpvariable text "DD MODE"')
	send_command('text idlevariable text "STYLE I"')
	send_command('text wsvariable text "WS:DAMAGE"')
	send_command('text pdtvariable text "Gungnir"')
--default text box setup

--aliasing
	send_command('alias ddset gs equip sets.tp.multi')
--aliasing

--binds
	send_command('bind #2 gs equip sets.pdt')
	send_command('bind #4 gs equip sets.idle')
	send_command('bind #8 gs equip sets.mdt')
	send_command('bind #h gs equip sets.hybrid')
	send_command('bind #t ddset')
	send_command('bind @r gs c rr')
	send_command('bind @f1 gs c DD;')
	send_command('bind @f2 gs c Hybrid')
	send_command('bind @f3 gs c PDT')
	send_command('bind @f4 gs c MDT')
	send_command('bind #f1 gs c style1;alias ddset gs equip sets.tp.multi')
	send_command('bind #f2 gs c style2;alias ddset gs equip sets.tp.acc')
	send_command('bind #f3 gs c style3;alias ddset gs equip sets.tp.xhit')
	send_command('bind #f4 gs c testset;alias ddset gs equip sets.tp.test')
	send_command('bind #f9 gs c style4;alias ddset gs equip sets.tp.multiacc')
	send_command('bind #f10 gs c style5;alias ddset gs equip sets.tp.extraacc')
	send_command('bind #f11 gs c style6; alias ddset gs equip sets.tp.xhitacc')
	send_command('bind @f9 gs c Gungnir')
	send_command('bind @f10 gs c Upukirex')
	send_command('bind @f11 gs c wsd')
	send_command('bind @f12 gs c wsa')
	
--binds
--default macro set
	send_command('input /macro book 5;input /macro set 2')
--default macro set
--variables
	weapon="Gungnir"
	TPMode="DD"
	TPType="multi"
	WSType="damage"
	rrlock="rroff"
	
	sets.weapon= T{}
	sets.TPMode= T{}
	sets.TPType= T{}
	sets.WSType= T{}
	sets.rrlock= T{}
--variables

--lists
	lg_ws= S{"Double Thrust", "Thunder Thrust", "Wheeling Thrust", "Sonic Thrust", "Camlann's Torment", "Geirskogul"}
	sg_ws= S{"Impulse Drive", "Stardiver"}
	crit_ws1= S{"Drakesbane", "Vorpal Thrust", "Skewer"}
	crit_ws2= S{}
--lists

--base names(empty sets)
	sets.weaponry={}
	sets.precast={}
	sets.midcast={}
	sets.aftercast={}
	sets.jumps={}
	sets.ja={}
	sets.tp={}
	sets.tp.o={}
	sets.ss={}
	sets.ss.o={}
	sets.breath={}
	sets.precast.ws={}
	sets.precast.ws1={}
	sets.precast.ws2={}
	sets.precast.ws3={}
	sets.precast.ws4={}
--base names(empty sets)
	
--basesets
	sets.rr={head="Twilight Helm", body="Twilight Mail",}
	
	sets.Upukirex={main="Upukirex", sub="Pole Grip",}
	sets.Gungnir={main="Gungnir", sub="Pole Grip",}

	sets.idle={ammo="Vanir Battery", head="Twilight Helm", body="Twilight Mail", hands="Cizin Mufflers +1", 
	legs="Blood Cuisses", feet="Cizin Greaves +1", neck="Twilight Torque", waist="Nierenschutz",
	left_ear="Ethereal Earring", right_ear="Sanare Earring", left_ring="Shadow Ring", 
	right_ring="Sheltered Ring", back="Shadow Mantle",}

	sets.tp.multi={ammo="Vanir Battery", head="Otomi Helm", body="Enif Corazza", hands="Ares' Gauntlets +1",
	legs="Ares' Flanchard +1", feet="Ejekamal Boots", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Tripudio Earring", right_ear="Brutal Earring", left_ring="K'ayres Ring", 
	right_ring="Rajas Ring", back="Atheling Mantle",}
	
	sets.tp.test={ammo="Ginsen",
	head={ name="Otomi Helm", augments={'Haste+2','"Snapshot"+2','STR+8',}},
	body={ name="Xaddi Mail", augments={'Attack+15','Accuracy+10','"Store TP"+3',}},
	hands={ name="Xaddi Gauntlets", augments={'Accuracy+15','"Store TP"+3','"Dbl.Atk."+2',}},
	legs={ name="Xaddi Cuisses", augments={'Attack+15','Accuracy+10','"Store TP"+3',}},
	feet={ name="Mikinaak Greaves", augments={'Attack+15','Accuracy+10','STR+10',}},
	neck="Ganesha's Mala", waist="Windbuffet Belt +1",
    left_ear="Tripudio Earring", right_ear="Brutal Earring", left_ring="K'ayres Ring",
	right_ring="Rajas Ring", back="Atheling Mantle",}
	
	sets.tp.xhit= set_combine(sets.tp.multi, {ammo="Ginsen", head="Yaoyotl Helm", body="Lncr. Plackart +2", Waist="Dynamic Belt +1", feet="Mikinaak Greaves",})
	
	sets.tp.acc= set_combine(sets.tp.multi, {ammo="Ginsen", head="Yaoyotl Helm", body="Xaddi Mail",})
	
	sets.tp.multiacc= set_combine(sets.tp.multi, {hands="Xaddi Gauntlets",})
	
	sets.tp.extraacc= set_combine(sets.tp.acc, {hands="Xaddi Gauntlets",})
	
	sets.tp.xhitacc= set_combine(sets.tp.xhit, {hands="Xaddi Gauntlets",})
	
	sets.tp.o.multi= set_combine(sets.tp.multi, {left_ring="Oneiros Ring",})
	
	sets.tp.o.xhit= set_combine(sets.tp.xhit, {left_ring="Oneiros Ring",})
	
	sets.tp.o.acc= set_combine(sets.tp.acc, {left_ring="Oneiros Ring",})
	
	sets.tp.o.multiacc= set_combine(sets.tp.multiacc, {left_ring="Oneiros Ring",})
	
	sets.tp.o.extraacc= set_combine(sets.tp.extraacc, {left_ring="Oneiros Ring",})
	
	sets.tp.o.xhitacc= set_combine(sets.tp.xhitacc, {left_ring="Oneiros Ring",})
	
	sets.tp.o.test= set_combine(sets.tp.test, {left_ring="Oneiros Ring",})
	
	sets.ss.multi= set_combine(sets.tp.multi, {hands="Lncr. Vmbrc. +2",})
	
	sets.ss.acc= set_combine(sets.tp.acc, {hands="Lncr. Vmbrc. +2",})
	
	sets.ss.xhit= set_combine(sets.tp.xhit, {hands="Lncr. Vmbrc. +2",})
	
	sets.ss.o.multi= set_combine(sets.ss.multi, {left_ring="Oneiros Ring",})
	
	sets.ss.o.acc= set_combine(sets.ss.acc, {left_ring="Oneiros Ring",})
	
	sets.ss.o.xhit= set_combine(sets.ss.xhit, {left_ring="Oneiros Ring",})
	
	sets.hybrid={ammo="Ginsen", head="Ighwa Cap", body="Cizin Mail +1", hands="Cizin Mufflers +1", 
	legs="Cizin Breeches +1", feet="Cizin Greaves +1", neck="Twilight Torque", waist="Dynamic Belt +1",
	left_ear="Tripudio Earring", right_ear="Brutal Earring", left_ring="Patricius Ring", right_ring="Defending Ring",
    back="Mollusca Mantle",}
	
	sets.pdt= set_combine(sets.hybrid,{waist="Nierenschutz", left_ear="Ethereal Earring", right_ear="Sanare Earring",})
	
	sets.mdt= set_combine(sets.pdt, {head="Vishap Armet +1", body="Mekira Meikogai", left_ring="Shadow Ring",})
	
	sets.jumps.soul= {ammo="Thew Bomblet", head="Otomi Helm", body="Enif Corazza", hands="Lncr. Vmbrc. +2", 
	legs="Lncr. Cuissots +2", feet="Hrafn Gambieras", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Oneiros Ring", 
	right_ring="Sljor Ring",back="Letalis Mantle",}
	
	sets.jumps.spirit= {ammo="Thew Bomblet", head="Otomi Helm", body="Enif Corazza", hands="Lncr. Vmbrc. +2", 
	legs="Lncr. Cuissots +2", feet="Hrafn Gambieras", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Oneiros Ring", 
	right_ring="Sljor Ring",back="Letalis Mantle",}
	
	--sets.jumps.jump={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Enif Corazza", 
	--hands="Ares' Gauntlets +1", legs="Ares' Flanchard +1", feet="Ejekamal Boots", neck="Ganesha's Mala", 
	--waist="Windbuffet Belt +1", left_ear="Steelflash Earring", right_ear="Bladeborn Earring", 
	--left_ring="Oneiros Ring", right_ring="Sljor Ring", back="Letalis Mantle",}
	
	sets.jumps.jump={ammo="Thew Bomblet", head="Otomi Helm", body="Vishap Mail +1",
	hands="Vishap F. G. +1", legs="Ares' Flanchard +1", feet="Vishap Greaves +1", 
	neck="Ganesha's Mala", waist="Windbuffet Belt +1", left_ear="Steelflash Earring", 
	right_ear="Bladeborn Earring", left_ring="Oneiros Ring", right_ring="Sljor Ring", 
	back="Letalis Mantle",}
	
	--sets.jumps.high={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Enif Corazza", 
	--hands="Ares' Gauntlets +1", legs="Ares' Flanchard +1", feet="Ejekamal Boots", neck="Ganesha's Mala", 
	--waist="Windbuffet Belt +1", left_ear="Steelflash Earring", right_ear="Bladeborn Earring", 
	--left_ring="Oneiros Ring", right_ring="Sljor Ring", back="Letalis Mantle",}
	
	sets.jumps.highjump={ammo="Thew Bomblet", head="Otomi Helm", body="Enif Corazza", 
	hands="Lncr. Vmbrc. +2", legs="Vishap Brais +1", feet="Ejekamal Boots", neck="Ganesha's Mala", 
	waist="Windbuffet Belt +1", left_ear="Steelflash Earring", right_ear="Bladeborn Earring", 
	left_ring="Oneiros Ring", right_ring="Sljor Ring", back="Letalis Mantle",}
		
	sets.breath.precast={head="Vishap Armet +1", neck="Dualism Collar", left_ear="Ethereal Earring", 
	right_ear="Lancer's Earring", body="Wyvern Mail", hands="Ostreger Mitts", left_ring="K'ayres Ring",
	right_ring="Meridian Ring", back="Strendu Mantle", waist="Glassblower's Belt", legs="Vishap Brais +1",
	feet="Ptero. Greaves +1",}
	
	sets.breath.midcast= set_combine(sets.breath.precast, {head="Ptero. Armet +1", neck="Lancer's Torque", back="Updraft Mantle",})
	
	sets.steadywing={neck="Chanoix's Gorget", right_ear="Lancer's Earring", body="Wyvern Mail", hands="Ostreger Mitts", 
	legs="Vishap Brais +1", feet="Ptero. Greaves +1",}
--basesets

--JA sets
	sets.ja["Jump"]=sets.jumps.jump
	sets.ja["High Jump"]=sets.jumps.high
	sets.ja["Spirit Jump"]=sets.jumps.spirit
	sets.ja["Soul Jump"]=sets.jumps.soul
	sets.ja["Ancient Circle"]={legs="Vishap Brais +1",}
	sets.ja["Angon"]={hands="Ptero. Fin. G. +1", ammo="Angon"}
	sets.ja["Call Wyvern"]={body="Ptero. Mail +1",}
	sets.ja["Spirit Surge"]={body="Ptero. Mail +1",}
	sets.ja["Deep Breathing"]={head="Ptero. Armet +1",}
	sets.ja["Steady Wing"]=sets.steadywing
	sets.ja["Spirit Link"]={head="Vishap Armet +1", hands="Lncr. Vmbrc. +2", back="Updraft Mantle",}
--JA sets

--PETCMD sets
	sets.pet={}
	sets.pet["Steady Wing"]=sets.steadywing
	sets.pet["Spirit Link"]={head="Vishap Armet +1", hands="Lncr. Vmbrc. +2", back="Updraft Mantle",}
	sets.pet["Restoring Breath"]=sets.breath.precast
	sets.pet["Smiting Breath"]=sets.breath.precast
--PETCMD sets

--WS sets
	sets.ws={}
	sets.ws.damage={}
	sets.ws.accuracy={}	

	sets.ws.damage["Double Thrust"]={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Vishap Mail +1", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Double Thrust"]={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Vishap Mail +1", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Updraft Mantle",}
	
	sets.ws.damage["Thunder Thrust"]={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Vishap Mail +1", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Thunder Thrust"]={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Vishap Mail +1", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Updraft Mantle",}
	
	sets.ws.damage["Raiden Thrust"]={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Vishap Mail +1", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Raiden Thrust"]={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Vishap Mail +1", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Updraft Mantle",}
	
	sets.ws.damage["Leg Sweep"]={ammo="Vanir Battery", head="Otomi Helm", body="Xaddi Mail", hands="Xaddi Gauntlets", 
	legs="Ares' Flanchard +1", feet="Ejekamal Boots", neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Oneiros Ring", right_ring="Sljor Ring",
    back="Atheling Mantle",}
	
	sets.ws.accuracy["Leg Sweep"]={ammo="Vanir Battery", head="Otomi Helm", body="Xaddi Mail", hands="Xaddi Gauntlets", 
	legs="Ares' Flanchard +1", feet="Ejekamal Boots", neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Oneiros Ring", right_ring="Sljor Ring",
    back="Updraft Mantle",}
	
	sets.ws.damage["Penta Thrust"]={ammo="Vanir Battery", head="Otomi Helm", body="Xaddi Mail", hands="Xaddi Gauntlets", 
	legs="Ares' Flanchard +1", feet="Ejekamal Boots", neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Oneiros Ring", right_ring="Sljor Ring",
    back="Atheling Mantle",}
	
	sets.ws.accuracy["Penta Thrust"]={ammo="Vanir Battery", head="Otomi Helm", body="Xaddi Mail", hands="Xaddi Gauntlets", 
	legs="Ares' Flanchard +1", feet="Ejekamal Boots", neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Oneiros Ring", right_ring="Sljor Ring",
    back="Updraft Mantle",}
	
	sets.ws.damage["Vorpal Thrust"]={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Vishap Mail +1", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Light Gorget", waist="Light Belt", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Vorpal Thrust"]={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Miki. Breastplate", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Light Gorget", waist="Light Belt", 
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Updraft Mantle",}
	
	sets.ws.damage["Skewer"]={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Vishap Mail +1", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Light Gorget", waist="Light Belt", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Skewer"]={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Miki. Breastplate", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Light Gorget", waist="Light Belt", 
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Updraft Mantle",}
	
	sets.ws.damage["Wheeling Thrust"]={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Vishap Mail +1", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Light Gorget", waist="Light Belt", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Wheeling Thrust"]={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Miki. Breastplate", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Light Gorget", waist="Light Belt", 
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Updraft Mantle",}
	
	sets.ws.damage["Impulse Drive"]={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Vishap Mail +1", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Light Gorget", waist="Light Belt", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Impulse Drive"]={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Miki. Breastplate", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Light Gorget", waist="Light Belt", 
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Updraft Mantle",}
	
	sets.ws.damage["Drakesbane"]={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Vishap Mail +1", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Light Gorget", waist="Light Belt", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Drakesbane"]={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Miki. Breastplate", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Light Gorget", waist="Light Belt", 
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Updraft Mantle",}
	
	sets.ws.damage["Sonic Thrust"]={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Vishap Mail +1", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Light Gorget", waist="Light Belt", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Sonic Thrust"]={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Miki. Breastplate", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Light Gorget", waist="Light Belt", 
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Updraft Mantle",}
	
	sets.ws.damage["Camlann's Torment"]={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Vishap Mail +1", hands="Miki. Gauntlets",
	legs="Ptero. Brais +1", feet="Ptero. Greaves +1", neck="Light Gorget", waist="Light Belt", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Updraft Mantle",}
	
	sets.ws.accuracy["Camlann's Torment"]={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Vishap Mail +1", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Light Gorget", waist="Light Belt", 
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Updraft Mantle",}
	
	sets.ws.damage["Stardiver"]={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Vishap Mail +1", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Light Gorget", waist="Light Belt", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Stardiver"]={ammo="Thew Bomblet", head="Yaoyotl Helm", body="Miki. Breastplate", hands="Miki. Gauntlets",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Light Gorget", waist="Light Belt", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Vespid Mantle",}
	
	sets.ws.damage["Geirskogul"]={ammo="Thew Bomblet", head="Ighwa Cap", body="Ptero. Mail +1", hands="Vishap F. G. +1",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Light Gorget", waist="Light Belt", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ramuh Ring", 
	right_ring="Rajas Ring", back="Vespid Mantle",}
	
	sets.ws.accuracy["Geirskogul"]={ammo="Thew Bomblet", head="Ighwa Cap", body="Miki. Breastplate", hands="Ptero. Fin. G. +1",
	legs="Miki. Cuisses", feet="Ptero. Greaves +1", neck="Light Gorget", waist="Light Belt", 
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Ramuh Ring", 
	right_ring="Rajas Ring", back="Updraft Mantle",}
--WS sets
end

function precast(spell)
	if spell.prefix== '/jobability' then
		equip(sets.ja[spell.english])
	end
	if spell.prefix== '/magic' then
		if pet.isvalid then
			equip(sets.breath.precast)
		end
	end
	if spell.prefix== '/weaponskill' then
		if WSType=="damage" then
			equip(sets.ws.damage[spell.english])
			add_to_chat(206, 'equiping ws set')
		elseif WSType=="accuracy" then
			equip(sets.ws.accuracy[spell.english])
			add_to_chat(206, 'equiping ws set')
		end
	end	
	if spell.type=='PetCommand' then
		equip(sets.pet[spell.english])		
	end	
end

function aftercast(spell)
	if player.status=='Engaged' then
		if TPMode=="DD" then
			if buffactive['Spirit Surge'] then
				if player.mp<99 then
					equip(sets.ss[TPType])
				else
					equip(sets.ss.o[TPType])
				end
			else
				if player.mp<99 then
					equip(sets.tp[TPType])
				else
					equip(sets.tp.o[TPType])
				end
			end
		elseif TPMode=="Hybrid" then
			equip(sets.hybrid)
		elseif TPMode=="PDT" then
			equip(sets.pdt)
		elseif TPMode=="MDT" then
			equip(sets.mdt)
		end
	else
		equip(sets.idle)	
	end
end

function status_change(new,old)
	if new=='Engaged' then	
		if TPMode=="DD" then
			if buffactive['Spirit Surge'] then
				if player.mp<99 then
					equip(sets.ss[TPType])
				else
					equip(sets.ss.o[TPType])
				end
			else
				if player.mp<99 then
					equip(sets.tp[TPType])
				else
					equip(sets.tp.o[TPType])
				end
			end
		elseif TPMode=="Hybrid" then
			equip(sets.hybrid)
		elseif TPMode=="PDT" then
			equip(sets.pdt)
		elseif TPMode=="MDT" then
			equip(sets.mdt)
		end
	else
		equip(sets.idle)				
	end
end

function pet_precast(spell)
	if string.find(spell.english, 'Breath') then
		equip(sets.breath.midcast)
	end
end

function pet_midcast(spell)
	if string.find(spell.english, 'Breath') then
		equip(sets.breath.midcast)
	end
end

function pet_aftercast(spell)
	status_change(player.status)
end

function self_command(command)
	if command== "Gungnir" then
		if weapon=="Gungnir" then
			add_to_chat(206, 'Gungnir already equiped')
		else
			weapon="Gungnir"
			send_command('input /get "Gungnir" sack;pause 1.5;input /equip main "Gungnir";pause 0.5;input /put "Upukirex" sack;')
			add_to_chat(206, 'Gungnir Mode')
			send_command('text pdtvariable text "Gungnir"')
		end
	end
	if command== "Upukirex" then
		if weapon=="Upukirex" then
			add_to_chat(206, 'Upukirex already equiped')
		else
			weapon="Upukirex"
			send_command('input /get "Upukirex" sack;pause 1.5;input /equip main "Upukirex";pause 0.5;input /put "Gungnir" sack;')
			add_to_chat(206, 'Upukirex Mode')
			send_command('text pdtvariable text "Upukirex"')
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
		if TPMode=="Hybrid" then
			add_to_chat(206, 'Hybrid MODE ALREADY ACTIVE')
		else
			TPMode="Hybrid"
			add_to_chat(206, 'HYBRID MODE')
			send_command('text tpvariable text "HYBRID MODE"')
		end
	end
	if command=="PDT" then
		if TPMode=="PDT" then
			add_to_chat(206, 'PDT MODE ALREADY ACTIVE')
		else
			TPMode="PDT"
			add_to_chat(206, 'PDT MODE')
			send_command('text tpvariable text "PDT MODE"')
		end
	end
	if command=="MDT" then
		if TPMode=="MDT" then
			add_to_chat(206, 'MDT MODE ALREADY ACTIVE')
		else
			TPMode="MDT"
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
	if command=="style4" then
		if TPType=="multiacc" then
			add_to_chat(206, 'multiacc hit style IV tp set already in use')
		else
			TPType="multiacc"
			add_to_chat(206, 'MULTIACC STYLE 4 SET')
			send_command('text idlevariable text "STYLE IV"')
		end
	end
	if command=="style5" then
		if TPType=="extraacc" then
			add_to_chat(206, 'multi hit style V tp set already in use')
		else
			TPType="extraacc"
			add_to_chat(206, 'MULTIHIT STYLE 5 SET')
			send_command('text idlevariable text "STYLE V"')
		end
	end
	if command=="style6" then
		if TPType=="xhitacc" then
			add_to_chat(206, 'multi hit style VI tp set already in use')
		else
			TPType="xhitacc"
			add_to_chat(206, 'MULTIHIT STYLE 6 SET')
			send_command('text idlevariable text "STYLE VI"')
		end
	end
	if command=="testset" then
		TPType="test"
		add_to_chat(206, 'TEST MODE')
		send_command('text idlevariable text "TEST MODE"')
	end
	if command=="wsd" then
		if WSType=="damage" then
			add_to_chat(206, 'WS mode already set to damage')
		else
			WSType="damage"
			add_to_chat(206, 'DAMAGE WS MODE SET')
			send_command('text wsvariable text "WS:DAMAGE"')
		end
	end
	if command=="wsa" then
		if WSType=="accuracy" then
			add_to_chat(206, 'WS mode already set to accuracy')
		else
			WSType="accuracy"
			add_to_chat(206, 'ACCURACY WS MODE SET')
			send_command('text wsvariable text "WS:ACCURACY"')
		end
	end
	-- reraise lock toggle command rule start
	if command == 'rr' then
		if rrlock== "rroff" then
			equip(sets.rr)
			send_command('gs disable body;gs disable head')
			rrlock= "rron"
			add_to_chat(206, 'TWILIGHT SET LOCKED IN FOR RERAISE')
		else
			send_command('gs enable body;gs enable head')
			rrlock="rroff"
			status_change(player.status)
			add_to_chat(206, 'REMOVED RERAISE GEAR LOCK: RESUMING NORMAL GEARSWAPING')
		end
	end
	-- reraise lock toggle command rule end
end

function unload(new_job)
	windower.send_command('boxesoff')
end