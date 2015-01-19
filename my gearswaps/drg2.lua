function get_sets()
-- includes
	include('boxes.lua')
	include('skillchain-elements.lua')
-- includes
-- Elements for skillchain names
skillchain_elements = {}
skillchain_elements.Light = S{'Light','Fire','Wind','Lightning'}
skillchain_elements.Darkness = S{'Dark','Ice','Earth','Water'}
skillchain_elements.Fusion = S{'Light','Fire'}
skillchain_elements.Fragmentation = S{'Wind','Lightning'}
skillchain_elements.Distortion = S{'Ice','Water'}
skillchain_elements.Gravitation = S{'Dark','Earth'}
skillchain_elements.Transfixion = S{'Light'}
skillchain_elements.Compression = S{'Dark'}
skillchain_elements.Liquification = S{'Fire'}
skillchain_elements.Induration = S{'Ice'}
skillchain_elements.Detonation = S{'Wind'}
skillchain_elements.Scission = S{'Earth'}
skillchain_elements.Impaction = S{'Lightning'}
skillchain_elements.Reverberation = S{'Water'}
-- Elements for skillchain names

--aliasing
	send_command('alias ddset gs equip sets.tp.lowacc')
	send_command('alias oset gs equip sets.tp.o.lowacc')
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
	send_command('bind #f1 gs c lowacc')
	send_command('bind #f2 gs c medacc')
	send_command('bind #f3 gs c highacc')
	send_command('bind @f9 gs c Gungnir')
	send_command('bind @f10 gs c Upukirex')
	send_command('bind @f12 gs c ws_dmg_or_acc')
--binds	
	
--variables
	weapon="Gungnir"
	TPMode="DD"
	TPType="lowacc"
	WSType="damage"
	rrlock="rroff"
	
	sets.weapon= T{}
	sets.TPMode= T{}
	sets.TPType= T{}
	sets.WSType= T{}
	sets.rrlock= T{}
--variables

--base names(empty sets)
	sets.weaponry={}
	sets.precast={}
	sets.midcast={}
	sets.aftercast={}
	sets.jumps={}
	sets.ja={}
	sets.tp={}
	sets.o={}
	sets.ss={}
	sets.ss.o={}
	sets.breath={}
	sets.pet={}
	sets.ws={}
	sets.ws.damage={}
	sets.ws.accuracy={}
--base names(empty sets)

--rr lock set
	sets.rr={head="Twilight Helm", body="Twilight Mail",}
--rr lock set

--weaponry	
	sets.Upukirex={main="Upukirex", sub="Pole Grip",}
	sets.Gungnir={main="Gungnir", sub="Pole Grip",}
--weaponry
	sets.idle={ammo="Vanir Battery", head="Twilight Helm", body="Twilight Mail", hands="Cizin Mufflers +1", 
	legs="Blood Cuisses", feet="Cizin Greaves +1", neck="Twilight Torque", waist="Nierenschutz",
	left_ear="Ethereal Earring", right_ear="Sanare Earring", left_ring="Shadow Ring", 
	right_ring="Sheltered Ring", back="Shadow Mantle",}
--JA sets
	sets.ja["Jump"]={ammo="Thew Bomblet", head="Otomi Helm", body="Vishap Mail +1",
	hands="Vishap F. G. +1", legs="Ares' Flanchard +1", feet="Vishap Greaves +1", 
	neck="Ganesha's Mala", waist="Windbuffet Belt +1", left_ear="Steelflash Earring", 
	right_ear="Bladeborn Earring", left_ring="Oneiros Ring", right_ring="Sljor Ring", 
	back="Letalis Mantle",}
	
	sets.ja["High Jump"]={ammo="Thew Bomblet", head="Otomi Helm", body="Enif Corazza", 
	hands="Lncr. Vmbrc. +2", legs="Vishap Brais +1", feet="Ejekamal Boots", neck="Ganesha's Mala", 
	waist="Windbuffet Belt +1", left_ear="Steelflash Earring", right_ear="Bladeborn Earring", 
	left_ring="Oneiros Ring", right_ring="Sljor Ring", back="Letalis Mantle",}
	
	sets.ja["Spirit Jump"]={ammo="Thew Bomblet", head="Otomi Helm", body="Enif Corazza", hands="Lncr. Vmbrc. +2", 
	legs="Lncr. Cuissots +2", feet="Hrafn Gambieras", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Oneiros Ring", 
	right_ring="Sljor Ring",back="Letalis Mantle",}
	
	sets.ja["Soul Jump"]={ammo="Thew Bomblet", head="Otomi Helm", body="Enif Corazza", hands="Lncr. Vmbrc. +2", 
	legs="Lncr. Cuissots +2", feet="Hrafn Gambieras", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Oneiros Ring", 
	right_ring="Sljor Ring",back="Letalis Mantle",}
	
	sets.ja["Ancient Circle"]={legs="Vishap Brais +1",}
	
	sets.ja["Angon"]={hands="Ptero. Fin. G. +1", ammo="Angon"}
	
	sets.ja["Call Wyvern"]={body="Ptero. Mail +1",}
	
	sets.ja["Spirit Surge"]={body="Ptero. Mail +1",}
	
	sets.ja["Deep Breathing"]={head="Ptero. Armet +1",}
	
	sets.ja["Steady Wing"]={neck="Chanoix's Gorget", right_ear="Lancer's Earring", body="Wyvern Mail", hands="Ostreger Mitts", 
	legs="Vishap Brais +1", feet="Ptero. Greaves +1",}
	
	sets.ja["Spirit Link"]={head="Vishap Armet +1", hands="Lncr. Vmbrc. +2", back="Updraft Mantle",}
--JA sets

--PETCMD sets
	sets.pet["Steady Wing"]={neck="Chanoix's Gorget", right_ear="Lancer's Earring", body="Wyvern Mail", hands="Ostreger Mitts", 
	legs="Vishap Brais +1", feet="Ptero. Greaves +1",}
	
	sets.pet["Spirit Link"]={head="Vishap Armet +1", hands="Lncr. Vmbrc. +2", back="Updraft Mantle",}
	
	sets.pet["Restoring Breath"]={head="Vishap Armet +1", neck="Dualism Collar", left_ear="Ethereal Earring", 
	right_ear="Lancer's Earring", body="Wyvern Mail", hands="Ostreger Mitts", left_ring="K'ayres Ring",
	right_ring="Meridian Ring", back="Strendu Mantle", waist="Glassblower's Belt", legs="Vishap Brais +1",
	feet="Ptero. Greaves +1",}
	
	sets.pet["Smiting Breath"]={head="Vishap Armet +1", neck="Dualism Collar", left_ear="Ethereal Earring", 
	right_ear="Lancer's Earring", body="Wyvern Mail", hands="Ostreger Mitts", left_ring="K'ayres Ring",
	right_ring="Meridian Ring", back="Strendu Mantle", waist="Glassblower's Belt", legs="Vishap Brais +1",
	feet="Ptero. Greaves +1",}
--PETCMD sets

--WS sets	
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

--ws day bonus
	sets.wsdaybonus={head="Gavialis Helm",}
--ws day bonus

--midcast sets
	sets.breath.midcast= set_combine(sets.breath.precast, {head="Ptero. Armet +1", neck="Lancer's Torque", back="Updraft Mantle",})
--midcast sets

--aftercast sets
	--offensive sets
	sets.tp.lowacc={ammo="Ginsen",
	head={ name="Otomi Helm", augments={'Haste+2','"Snapshot"+2','STR+8',}},
	body={ name="Xaddi Mail", augments={'Attack+15','Accuracy+10','"Store TP"+3',}},
	hands="Cizin Mufflers +1", legs="Cizin Breeches +1",
	feet={ name="Mikinaak Greaves", augments={'Attack+15','Accuracy+10','STR+10',}},
	neck="Ganesha's Mala", waist="Windbuffet Belt +1",
    left_ear="Tripudio Earring", right_ear="Brutal Earring", left_ring="K'ayres Ring",
	right_ring="Rajas Ring", back="Atheling Mantle",}
	
	sets.tp.medacc={ammo="Ginsen",
	head={ name="Otomi Helm", augments={'Haste+2','"Snapshot"+2','STR+8',}},
	body={ name="Xaddi Mail", augments={'Attack+15','Accuracy+10','"Store TP"+3',}},
	hands={ name="Xaddi Gauntlets", augments={'Accuracy+15','"Store TP"+3','"Dbl.Atk."+2',}},
	legs={ name="Xaddi Cuisses", augments={'Attack+15','Accuracy+10','"Store TP"+3',}},
	feet={ name="Mikinaak Greaves", augments={'Attack+15','Accuracy+10','STR+10',}},
	neck="Ganesha's Mala", waist="Anguinus Belt",
    left_ear="Tripudio Earring", right_ear="Brutal Earring", left_ring="K'ayres Ring",
	right_ring="Rajas Ring", back="Letalis Mantle",}
	
	sets.tp.highacc={ammo="Ginsen",
	head="Yaoyotl Helm",
	body={ name="Xaddi Mail", augments={'Attack+15','Accuracy+10','"Store TP"+3',}},
	hands="Buremte Gloves",
	legs={ name="Xaddi Cuisses", augments={'Attack+15','Accuracy+10','"Store TP"+3',}},
	feet={ name="Mikinaak Greaves", augments={'Attack+15','Accuracy+10','STR+10',}},
	neck="Iqabi Necklace", waist="Olseni Belt",
    left_ear="Tripudio Earring", right_ear="Zennaroi Earring", left_ring="Patricious Ring",
	right_ring="Mars's Ring", back="Updraft Mantle",}
	
	sets.o.lowacc= set_combine(sets.tp.lowacc, {left_ring="Oneiros Ring",})
	
	sets.o.medacc= set_combine(sets.tp.medacc, {left_ring="Oneiros Ring",})
	
	sets.o.highacc= set_combine(sets.tp.highacc, {left_ring="Oneiros Ring",})
	
	sets.ss.lowacc= set_combine(sets.tp.lowacc, {hands="Lncr. Vmbrc. +2",})
	
	sets.ss.medacc= set_combine(sets.tp.medacc, {hands="Lncr. Vmbrc. +2",})
	
	sets.ss.highacc= set_combine(sets.tp.highacc, {hands="Lncr. Vmbrc. +2",})
	
	sets.ss.o.lowacc= set_combine(sets.ss.lowacc, {left_ring="Oneiros Ring",})
	
	sets.ss.o.medacc= set_combine(sets.ss.medacc, {left_ring="Oneiros Ring",})
	
	sets.ss.o.highacc= set_combine(sets.ss.highacc, {left_ring="Oneiros Ring",})
	--offensive sets
	--defensive sets
	sets.hybrid={ammo="Ginsen", head="Ighwa Cap", body="Cizin Mail +1", hands="Cizin Mufflers +1", 
	legs="Cizin Breeches +1", feet="Cizin Greaves +1", neck="Twilight Torque", waist="Dynamic Belt +1",
	left_ear="Tripudio Earring", right_ear="Brutal Earring", left_ring="Patricius Ring", right_ring="Defending Ring",
    back="Mollusca Mantle",}
	
	sets.pdt= set_combine(sets.hybrid,{waist="Nierenschutz", left_ear="Ethereal Earring", right_ear="Sanare Earring",})
	
	sets.mdt= set_combine(sets.pdt, {head="Vishap Armet +1", body="Mekira Meikogai", left_ring="Shadow Ring",})
	--defensive sets
--aftercast sets
end

function is_sc_element_today(spell)
    if spell.type ~= 'WeaponSkill' then
        return
    end
   
    local weaponskill_elements = S{}:
        union(skillchain_elements[spell.skillchain_a]):
        union(skillchain_elements[spell.skillchain_b]):
        union(skillchain_elements[spell.skillchain_c])

    if weaponskill_elements:contains(world.day_element) then
        return true
    else
        return false
    end
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
	if spell.type == 'WeaponSkill' then
		if is_sc_element_today(spell) then
			equip(sets.wsdaybonus)
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
					equip(sets.o[TPType])
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
					equip(sets.o[TPType])
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
--TPMode commands
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
--TPMode commands

--TPType commands
	if command=="lowacc" then
		TPType="lowacc"
		add_to_chat(206, 'TP TYPE: LOWACC')
		send_command('text idlevariable text "LOW-ACC"')
		send_command('alias ddset gs equip sets.tp.lowacc')
		send_command('alias oset gs equip sets.tp.o.lowacc')
	end
	if command=="medacc" then
		TPType="medacc"
		add_to_chat(206, 'TP TYPE: MEDACC')
		send_command('text idlevariable text "MED-ACC"')
		send_command('alias ddset gs equip sets.tp.medacc')
		send_command('alias oset gs equip sets.tp.o.medacc')
	end
	if command=="highacc" then
		TPType="highacc"
		add_to_chat(206, 'TP TYPE: HIGHACC')
		send_command('text idlevariable text "HIGH-ACC"')
		send_command('alias ddset gs equip sets.tp.highacc')
		send_command('alias oset gs equip sets.tp.o.highacc')
	end
--TPType commands
	
--weaponry commands	
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
--weaponry commands	
	
--ws mode toggle	
	if command=="ws_dmg_or_acc" then
		if WSType=="damage" then
			WSType="accuracy"
			add_to_chat(206, 'WSType: ACCURACY')
			send_command('text wsvariable text "WSType: ACC"')			
		else
			WSType="damage"
			add_to_chat(206, 'WSType: DAMAGE')
			send_command('text wsvariable text "WSType: DMG"')			
		end
	end
--ws mode toggle

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