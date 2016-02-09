function get_sets()
-- includes
	include('tco-include.lua')
	include('organizer-lib.lua')
-- includes

--aliasing
	send_command('alias ddset gs equip sets.tp.lowacc')
	send_command('alias oset gs equip sets.tp.o.lowacc')
--aliasing

--text boxes	
	send_command('text idlevariable text "LOW-ACC"')
	send_command('text tpvariable text "MULTIHIT MODE"')
	send_command('text wsvariable text "WSType: DMG"')
	send_command('text pdtvariable text "Olyndicus"')
--text boxes

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
	send_command('bind @f6 gs c Quint')
	send_command('bind @f7 gs c Annealed')
	send_command('bind @f8 gs c Olyndicus')
	send_command('bind @f9 gs c Gungnir')
	send_command('bind @f12 gs c ws_dmg_or_acc')
	send_command('bind #g gs c jumptoggle')
--binds	

--default macro set
	send_command('input /macro book 5;input /macro set 2')
--default macro set

--lists
	jumps= S{'Jump','High Jump','Spirit Jump','Soul Jump',}
--lists


--augmented items
	taeonhead={ name="Taeon Chapeau", augments={'Accuracy+17 Attack+17','"Triple Atk."+2','Crit. hit damage +3%',}}
	taeonbody={ name="Taeon Tabard", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','Crit. hit damage +3%',}}
	taeonhands={ name="Taeon Gloves", augments={'Accuracy+16 Attack+16','"Triple Atk."+2','Crit. hit damage +3%',}}
	taeonlegs={ name="Taeon Tights", augments={'Accuracy+17 Attack+17','"Triple Atk."+2','Crit. hit damage +2%',}}
	taeonfeet={ name="Taeon Boots", augments={'Accuracy+19 Attack+19','"Triple Atk."+2','Crit. hit damage +2%',}}
	
	acrohead={ name="Acro Helm", augments={'Accuracy+12 Attack+12','Haste+3%','STR+10',}}
	acrobody={ name="Acro Surcoat", augments={'Accuracy+18 Attack+18','"Store TP"+6','Crit. hit damage +3% ',}}
	acrohands={ name="Acro Gauntlets", augments={'Accuracy+20 Attack+20','"Store TP"+6','Crit. Hit Damage +3%',}}
	acrolegs={ name="Acro Breeches", augments={'Accuracy+19 Attack+19','"Store TP"+6','Crit. Hit Damage +3%',}}
	acrofeet={ name="Acro Leggings", augments={'Accuracy+17 Attack+17','"Store TP"+6','Crit. Hit Damage +3%',}}
	
	dabody={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','STR+10',}}
	dahands={ name="Acro Gauntlets", augments={'Accuracy+20 Attack+20','"Dbl.Atk."+3','Crit. Hit Damage +2%',}}
	dalegs={ name="Acro Breeches", augments={'Accuracy+18 Attack+18','"Dbl.Atk."+3','STR+7',}}
	dafeet={ name="Acro Leggings", augments={'Accuracy+19 Attack+19','"Dbl.Atk."+3','Crit. Hit Damage +2%',}}
	
	updrafttp={ name="Updraft Mantle", augments={'STR+3','Pet: Breath+10',}}
	updraftws={ name="Updraft Mantle", augments={'STR+1','Pet: Breath+3','Pet: Damage taken -1%','Weapon skill damage +2%',}}
--augmented items
	
--variables
	weapon="Olyndicus"
	JumpType="damage"
	TPMode="multi"
	TPType="lowacc"
	WSType="damage"
	rrlock="rroff"
	
	sets.weapon= T{}
	sets.TPMode= T{}
	sets.TPType= T{}
	sets.WSType= T{}
	sets.rrlock= T{}
	sets.JumpType= T{}
--variables

--base names(empty sets)
	sets.weaponry={}
	sets.precast={}
	sets.midcast={}
	sets.aftercast={}
	sets.jumps={}
	sets.ja={}
	sets.tp={}
	sets.xhit={}
	sets.xhito={}
	sets.o={}
	sets.ss={}
	sets.ss.o={}
	sets.breath={}
	sets.pet={}
	sets.ws={}
	sets.ws.damage={}
	sets.ws.accuracy={}
	sets.xhit2o={}
	sets.xhit2={}
	sets.tpgain={}
	sets.damage={}
--base names(empty sets)

--rr lock set
	sets.rr={head="Twilight Helm", body="Twilight Mail",}
--rr lock set

--weaponry
	sets.weaponry.Gungnir={main="Gungnir", sub="Pole Grip",}
	sets.weaponry.Olyndicus={main="Olyndicus", sub="Pole Grip",}
	sets.weaponry.Annealed={main="Annealed Lance", sub="Pole Grip",}
	sets.weaponry.Quint={main="Quint Spear", sub="Pole Grip",}
--weaponry
	sets.idle={ammo="Vanir Battery", head="Twilight Helm", body="Twilight Mail", hands="Cizin Mufflers +1", 
	legs={ name="Carmine Cuisses", augments={'Accuracy+10','DEX+10','MND+15',}}, feet="Amm Greaves", neck="Loricate Torque +1", waist="Nierenschutz",
	left_ear="Ethereal Earring", right_ear="Sanare Earring", left_ring="Shadow Ring", 
	right_ring="Sheltered Ring", back="Shadow Mantle",}
--JA sets
	sets.tpgain["Jump"]={ammo="Ginsen", head=acrohead, legs=acrolegs, body="Vishap Mail +1", hands="Vishap F. G. +1", 
	feet="Ostro Greaves", neck="Ganesha's Mala", waist="Windbuffet Belt +1", left_ear="Tripudio Earring", 
	right_ear="Brutal Earring", left_ring="Petrov Ring", right_ring="Rajas Ring", back="Letalis Mantle",}
	
	sets.tpgain["High Jump"]={ammo="Ginsen", head=acrohead, body="Vishap Mail +1", hands="Vishap F. G. +1", feet="Ostro Greaves", 
	neck="Ganesha's Mala", legs="Vishap Brais +1", waist="Windbuffet Belt +1", left_ear="Tripudio Earring", right_ear="Brutal Earring", 
	left_ring="Petrov Ring", right_ring="Rajas Ring", back="Letalis Mantle",}
	
	sets.tpgain["Spirit Jump"]={ammo="Ginsen", head=acrohead, body=acrobody, hands=acrohands, left_ear="Tripudio Earring",
	legs="Pelt. Cuissots +1", feet="Pelt. Schyn. +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ring="Petrov Ring", right_ring="Rajas Ring", back="Letalis Mantle",}
	
	sets.tpgain["Soul Jump"]={ammo="Ginsen", head=acrohead, body=acrobody, right_ring="Rajas Ring",
	hands=acrohands, legs="Pelt. Cuissots +1", feet=acrofeet, neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Tripudio Earring", right_ear="Brutal Earring", left_ring="Petrov Ring", back="Letalis Mantle",}
	
	sets.damage["Jump"]={ammo="Thew Bomblet", body="Vishap Mail +1", hands="Vishap F. G. +1", feet="Vishap Greaves +1",
    head=taeonhead, legs=taeonlegs, neck="Ganesha's Mala", waist="Windbuffet Belt +1", left_ear="Steelflash Earring",
	right_ear="Bladeborn Earring", right_ring="Oneiros Ring", left_ring="Petrov Ring", back="Letalis Mantle",}
	
	sets.damage["High Jump"]={ammo="Thew Bomblet", head=taeonhead, body=taeonbody, hands=taeonhands, legs="Vishap Brais +1", neck="Ganesha's Mala", 
	waist="Windbuffet Belt +1", back="Letalis Mantle", feet=taeonfeet, right_ring="Oneiros Ring", left_ear="Steelflash Earring", right_ear="Bladeborn Earring", 
	left_ring="Petrov Ring",}
	
	sets.damage["Spirit Jump"]={ammo="Thew Bomblet", head=taeonhead, body=taeonbody, hands=taeonhands,
    legs="Pelt. Cuissots +1", feet={ name="Hrafn Gambieras", augments={'Crit. hit damage +9%',}},
	neck="Ganesha's Mala", waist="Windbuffet Belt +1", left_ear="Steelflash Earring", 
	right_ear="Bladeborn Earring", right_ring="Oneiros Ring", left_ring="Petrov Ring", back="Letalis Mantle",}
	
	sets.damage["Soul Jump"]={ammo="Thew Bomblet", head=taeonhead, body=taeonbody, hands=taeonhands,
    legs="Pelt. Cuissots +1", feet={ name="Hrafn Gambieras", augments={'Crit. hit damage +9%',}},
	neck="Ganesha's Mala", waist="Windbuffet Belt +1", left_ear="Steelflash Earring", 
	right_ear="Bladeborn Earring", right_ring="Oneiros Ring", left_ring="Petrov Ring", back="Letalis Mantle",}
	
	sets.ja["Ancient Circle"]={legs="Vishap Brais +1",}
	
	sets.ja["Angon"]={hands="Ptero. Fin. G. +1", ammo="Angon"}
	
	sets.ja["Call Wyvern"]={body="Ptero. Mail +1",}
	
	sets.ja["Spirit Surge"]={body="Ptero. Mail +1",}
	
	sets.ja["Deep Breathing"]={head="Ptero. Armet +1",}
	
	sets.ja["Steady Wing"]={neck="Chanoix's Gorget", right_ear="Lancer's Earring", body="Wyvern Mail", hands="Despair Fin. Gaunt.", 
	legs="Vishap Brais +1", feet="Ptero. Greaves +1",}
	
	sets.ja["Spirit Link"]={head="Vishap Armet +1", left_ear="Pratik Earring", hands="Pel. Vambraces +1", feet="Ptero. Greaves +1",}
--JA sets

--PETCMD sets
	sets.pet["Steady Wing"]={neck="Chanoix's Gorget", right_ear="Lancer's Earring", body="Wyvern Mail", hands="Despair Fin. Gaunt.", 
	legs="Vishap Brais +1", feet="Ptero. Greaves +1",}
	
	sets.pet["Spirit Link"]={head="Vishap Armet +1", hands="Pel. Vambraces +1", back="Updraft Mantle",}
	
	sets.pet["Restoring Breath"]={head={ name="Ptero. Armet +1", augments={'Enhances "Deep Breathing" effect',}},
    body={ name="Acro Surcoat", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: Breath+6','Pet: Damage taken -3%',}},
    hands={ name="Acro Gauntlets", augments={'Pet: Mag. Acc.+22','Pet: Breath+7','CHR+8',}},
    legs={ name="Acro Breeches", augments={'Pet: Mag. Acc.+22','Pet: Breath+6','MND+8',}},
    feet={ name="Acro Leggings", augments={'Pet: Mag. Acc.+12','Pet: Breath+6','Pet: Damage taken -4%',}},
    neck="Lancer's Torque", waist="Glassblower's Belt", left_ear="Ethereal Earring", right_ear="Lancer's Earring",
    left_ring="Meridian Ring", right_ring="Eihwaz Ring", back=updrafttp,}
	
	sets.pet["Smiting Breath"]={head={ name="Ptero. Armet +1", augments={'Enhances "Deep Breathing" effect',}},
    body={ name="Acro Surcoat", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: Breath+6','Pet: Damage taken -3%',}},
    hands={ name="Acro Gauntlets", augments={'Pet: Mag. Acc.+22','Pet: Breath+7','CHR+8',}},
    legs={ name="Acro Breeches", augments={'Pet: Mag. Acc.+22','Pet: Breath+6','MND+8',}},
    feet={ name="Acro Leggings", augments={'Pet: Mag. Acc.+12','Pet: Breath+6','Pet: Damage taken -4%',}},
    neck="Lancer's Torque", waist="Glassblower's Belt", left_ear="Ethereal Earring", right_ear="Lancer's Earring",
    left_ring="Meridian Ring", right_ring="Eihwaz Ring", back=updrafttp,}
	
	sets.breath.precast={head="Vishap Armet +1", body="Wyvern Mail", hands="Despair Fin. Gaunt.", legs="Vishap Brais +1",
	feet={ name="Ptero. Greaves +1", augments={'Enhances "Empathy" effect',}}, neck="Chanoix's Gorget",
	waist="Glassblower's Belt", left_ear="Ethereal Earring", right_ear="Lancer's Earring", left_ring="Meridian Ring",
	right_ring="Eihwaz Ring", back="Strendu Mantle",}
--PETCMD sets

--WS sets	
	sets.ws.damage["Double Thrust"]={ammo="Thew Bomblet", head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}}, body="Pelt. Plackart +1", hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}},
	legs="Valorous Hose", feet="Pelt. Schyn. +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Double Thrust"]={ammo="Thew Bomblet", head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}}, body="Pelt. Plackart +1", hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}},
	legs="Valorous Hose", feet="Pelt. Schyn. +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back=updraftws,}
	
	sets.ws.damage["Thunder Thrust"]={ammo="Thew Bomblet", head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}}, body="Pelt. Plackart +1", hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}},
	legs="Valorous Hose", feet="Pelt. Schyn. +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Thunder Thrust"]={ammo="Thew Bomblet", head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}}, body="Pelt. Plackart +1", hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}},
	legs="Valorous Hose", feet="Pelt. Schyn. +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back=updraftws,}
	
	sets.ws.damage["Raiden Thrust"]={ammo="Thew Bomblet", head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}}, body="Pelt. Plackart +1", hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}},
	legs="Valorous Hose", feet="Pelt. Schyn. +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Raiden Thrust"]={ammo="Thew Bomblet", head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}}, body="Pelt. Plackart +1", hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}},
	legs="Valorous Hose", feet="Pelt. Schyn. +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back=updraftws,}
	
	sets.ws.damage["Leg Sweep"]={ammo="Vanir Battery", head="Lustratio Cap", body="Lustratio Harness", hands=dahands, 
	legs=taeonlegs, feet=taeonfeet, neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", right_ring="Oneiros Ring", left_ring="Petrov Ring",
    back="Bleating Mantle",}
	
	sets.ws.accuracy["Leg Sweep"]={ammo="Vanir Battery", head="Lustratio Cap", body="Lustratio Harness", hands=dahands, 
	legs=taeonlegs, feet=taeonfeet, neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", right_ring="Oneiros Ring", left_ring="Petrov Ring",
    back=updraftws,}
	
	sets.ws.damage["Penta Thrust"]={ammo="Vanir Battery", head="Lustratio Cap", body="Lustratio Harness", hands=dahands, 
	legs=taeonlegs, feet=taeonfeet, neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", right_ring="Oneiros Ring", left_ring="Petrov Ring",
    back="Bleating Mantle",}
	
	sets.ws.accuracy["Penta Thrust"]={ammo="Vanir Battery", head="Lustratio Cap", body="Lustratio Harness", hands=dahands, 
	legs=taeonlegs, feet=taeonfeet, neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", right_ring="Oneiros Ring", left_ring="Petrov Ring",
    back=updraftws,}
	
	sets.ws.damage["Vorpal Thrust"]={ammo="Thew Bomblet", head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}}, body="Pelt. Plackart +1", hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}},
	legs="Pelt. Cuissots +1", feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Vorpal Thrust"]={ammo="Thew Bomblet", head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}}, body="Pelt. Plackart +1", hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}},
	legs=taeonlegs, feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back=updraftws,}
	
	sets.ws.damage["Skewer"]={ammo="Thew Bomblet", head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}}, body="Pelt. Plackart +1", hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}},
	legs="Pelt. Cuissots +1", feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Skewer"]={ammo="Thew Bomblet", head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}}, body="Pelt. Plackart +1", hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}},
	legs=taeonlegs, feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back=updraftws,}
	
	sets.ws.damage["Wheeling Thrust"]={ammo="Thew Bomblet", head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}}, body="Pelt. Plackart +1", hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}},
	legs="Pelt. Cuissots +1", feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Wheeling Thrust"]={ammo="Thew Bomblet", head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}}, body="Pelt. Plackart +1", hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}},
	legs="Valorous Hose", feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back=updraftws,}
	
	sets.ws.damage["Impulse Drive"]={ammo="Thew Bomblet", head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}}, body="Pelt. Plackart +1", hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}},
	legs="Pelt. Cuissots +1", feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Impulse Drive"]={ammo="Thew Bomblet", head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}}, body="Pelt. Plackart +1", hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}},
	legs="Valorous Hose", feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back=updraftws,}
	
	sets.ws.damage["Drakesbane"]={ammo="Thew Bomblet",
    head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}},
    body="Pelt. Plackart +1",
    hands={ name="Lustratio Mittens", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
    legs="Pelt. Cuissots +1",
    feet="Thereoid Greaves",--{ name="Valorous Greaves", augments={'Accuracy+22 Attack+22','Crit.hit rate+3','Accuracy+1','Attack+15',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Brutal Earring",
    left_ring="Ifrit Ring",
    right_ring="Rajas Ring",
    back="Buquwik Cape",}
	
	sets.ws.accuracy["Drakesbane"]={ammo="Thew Bomblet",
    head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}},
    body="Pelt. Plackart +1",
    hands={ name="Lustratio Mittens", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
    legs="Pelt. Cuissots +1",
    feet={ name="Valorous Greaves", augments={'Accuracy+22 Attack+22','Crit.hit rate+3','Accuracy+1','Attack+15',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Brutal Earring",
    left_ring="Ifrit Ring",
    right_ring="Rajas Ring",
    back=updraftws,}
	
	sets.ws.damage["Sonic Thrust"]={ammo="Thew Bomblet", head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}}, body="Pelt. Plackart +1", hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}},
	legs="Pelt. Cuissots +1", feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Sonic Thrust"]={ammo="Thew Bomblet", head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}}, body="Pelt. Plackart +1", hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}},
	legs="Valorous Hose", feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back=updraftws,}
	
	sets.ws.damage["Camlann's Torment"]={ammo="Thew Bomblet", head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}}, body="Pelt. Plackart +1", hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}},
	legs="Ptero. Brais +1", feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back=updraftws,}
	
	sets.ws.accuracy["Camlann's Torment"]={ammo="Thew Bomblet", head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}}, body="Pelt. Plackart +1", hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}},
	legs="Valorous Hose", feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back=updraftws,}
	
	sets.ws.damage["Stardiver"]={ammo="Thew Bomblet", head="Lustratio Cap", body="Lustratio Harness", hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}},
	legs="Despair Cuisses", feet="Despair Greaves", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Moonshade Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring", 
	right_ring="Rajas Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Stardiver"]={ammo="Thew Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Lustratio Harness", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}}, hands={ name="Lustratio Mittens", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
	legs={ name="Valor. Hose", augments={'Accuracy+23 Attack+23','Enmity+2','Accuracy+5','Attack+15',}}, feet={ name="Valorous Greaves", augments={'Accuracy+22 Attack+22','Crit.hit rate+3','Accuracy+1','Attack+15',}},
	neck="Fotia Gorget", waist="Fotia Belt", left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, right_ear="Brutal Earring", left_ring="Ifrit Ring", right_ring="Rajas Ring", back=updraftws,}
	
	sets.ws.damage["Geirskogul"]={ammo="Thew Bomblet",
    head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
    body="Pelt. Plackart +1",
    hands={ name="Lustratio Mittens", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
    legs={ name="Lustratio Subligar", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
    feet={ name="Valorous Greaves", augments={'Accuracy+22 Attack+22','Crit.hit rate+3','Accuracy+1','Attack+15',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Brutal Earring",
    left_ring="Ramuh Ring",
    right_ring="Rajas Ring",
    back="Buquwik Cape",}
	
	sets.ws.accuracy["Geirskogul"]={ammo="Thew Bomblet",
    head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
    body="Pelt. Plackart +1",
    hands={ name="Lustratio Mittens", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
    legs={ name="Lustratio Subligar", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
    feet={ name="Valorous Greaves", augments={'Accuracy+22 Attack+22','Crit.hit rate+3','Accuracy+1','Attack+15',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Brutal Earring",
    left_ring="Ramuh Ring",
    right_ring="Rajas Ring", back=updraftws,}
--WS sets

--ws day bonus
	sets.wsdaybonus={head="Gavialis Helm",}
--ws day bonus

--midcast sets
	sets.breath.midcast={head={ name="Ptero. Armet +1", augments={'Enhances "Deep Breathing" effect',}},
    body={ name="Acro Surcoat", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: Breath+6','Pet: Damage taken -3%',}},
    hands={ name="Acro Gauntlets", augments={'Pet: Mag. Acc.+22','Pet: Breath+7','CHR+8',}},
    legs={ name="Acro Breeches", augments={'Pet: Mag. Acc.+22','Pet: Breath+6','MND+8',}},
    feet={ name="Acro Leggings", augments={'Pet: Mag. Acc.+12','Pet: Breath+6','Pet: Damage taken -4%',}},
    neck="Lancer's Torque", waist="Glassblower's Belt", left_ear="Ethereal Earring", right_ear="Lancer's Earring",
    left_ring="Meridian Ring", right_ring="Eihwaz Ring", back=updraftws,}
--midcast sets

--aftercast sets
	--offensive sets
	sets.tp.lowacc={ammo="Ginsen", neck="Ganesha's Mala", waist="Windbuffet Belt +1", left_ear="Steelflash Earring",
	head=taeonhead, right_ear="Bladeborn Earring",
	body=taeonbody, hands=taeonhands, back="Bleating Mantle", legs=taeonlegs, left_ring="Petrov Ring",
	feet=taeonfeet, right_ring="Rajas Ring",}
	
	sets.tp.medacc= set_combine(sets.tp.lowacc, {waist="Anguinus Belt", back="Letalis Mantle",})
	
	sets.tp.highacc= set_combine(sets.tp.medacc, {waist="Olseni Belt", back=updrafttp,
	hands={ name=dahands, augments={'Accuracy+15','"Store TP"+3','"Dbl.Atk."+2',}}, left_ring="Patricius Ring", 
	right_ring="Mars's Ring", left_ear="Steelflash Earring", right_ear="Zennaroi Earring", neck="Subtlety Spec.",})
	
	sets.xhit.lowacc={ammo="Ginsen", head=acrohead, body="Pelt. Plackart +1", back="Bleating Mantle", hands=acrohands, waist="Windbuffet Belt +1",
	legs=acrolegs, feet=acrofeet, neck="Ganesha's Mala", left_ear="Tripudio Earring", right_ear="Cessance Earring", left_ring="Petrov Ring",
	right_ring="Rajas Ring",}
		
	sets.xhit.medacc=set_combine(sets.xhit.lowacc, {waist="Anguinus Belt", back="Letalis Mantle"})
	
	sets.xhit.highacc=set_combine(sets.xhit.medacc, {neck="Subtlety Spec.", waist="Olseni Belt", left_ring="Patricius Ring", right_ring="Mars's Ring", back=updrafttp, right_ear="Zennaroi Earring",})
	
	sets.xhit2.lowacc=set_combine(sets.xhit.lowacc, {legs=taeonlegs,})
	
	sets.xhit2.medacc=set_combine(sets.xhit.medacc, {legs=taeonlegs,})
	
	sets.xhit2.highacc=set_combine(sets.xhit.highacc, {legs=taeonlegs,})
	
	sets.o.lowacc= set_combine(sets.tp.lowacc, {right_ring="Oneiros Ring",})
	
	sets.o.medacc= set_combine(sets.tp.medacc, {right_ring="Oneiros Ring",})
	
	sets.o.highacc= set_combine(sets.tp.highacc, {right_ring="Oneiros Ring",})
	
	sets.xhito.lowacc= set_combine(sets.xhit.lowacc, {right_ring="Oneiros Ring",})
	
	sets.xhito.medacc= set_combine(sets.xhit.medacc, {right_ring="Oneiros Ring",})
	
	sets.xhito.highacc= set_combine(sets.xhit.highacc, {right_ring="Oneiros Ring",})
	
	sets.xhit2o.lowacc= set_combine(sets.xhit2.lowacc, {right_ring="Oneiros Ring",})
	
	sets.xhit2o.medacc= set_combine(sets.xhit2.medacc, {right_ring="Oneiros Ring",})
	
	sets.xhit2o.highacc= set_combine(sets.xhit2.highacc, {right_ring="Oneiros Ring",})
	
	sets.ss.lowacc= set_combine(sets.tp.lowacc, {hands="Pel. Vambraces +1",})
	
	sets.ss.medacc= set_combine(sets.tp.medacc, {hands="Pel. Vambraces +1",})
	
	sets.ss.highacc= set_combine(sets.tp.highacc, {hands="Pel. Vambraces +1",})
	
	sets.ss.o.lowacc= set_combine(sets.ss.lowacc, {right_ring="Oneiros Ring",})
	
	sets.ss.o.medacc= set_combine(sets.ss.medacc, {right_ring="Oneiros Ring",})
	
	sets.ss.o.highacc= set_combine(sets.ss.highacc, {right_ring="Oneiros Ring",})
	--offensive sets
	--defensive sets
	sets.hybrid={ammo="Ginsen", head="Ighwa Cap", body="Cizin Mail +1", hands="Cizin Mufflers +1", 
	legs="Cizin Breeches +1", feet="Amm Greaves", neck="Loricate Torque +1", waist="Dynamic Belt +1",
	left_ear="Tripudio Earring", right_ear="Brutal Earring", left_ring="Patricius Ring", right_ring="Defending Ring",
    back="Mollusca Mantle",}
	
	sets.pdt={ammo="Vanir Battery", head="Loess Barbuta +1", body={ name="Jumalik Mail", augments={'HP+45','Attack+14','Enmity+8','"Refresh"+1',}},
	hands="Cizin Mufflers +1", right_ear="Sanare Earring", left_ring="Vocane Ring", right_ring="Defending Ring",
	legs={ name="Cizin Breeches +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -2%','Accuracy+8',}},
	feet="Amm Greaves", neck="Loricate Torque +1", waist="Nierenschutz",
	left_ear="Ethereal Earring", back="Mollusca Mantle",}
	
	sets.mdt= set_combine(sets.pdt, {back="Engulfer Cape +1", left_ring="Shadow Ring",})
	
	sets.xdt={ammo="Vanir Battery", head="Loess Barbuta +1", body={ name="Jumalik Mail", augments={'HP+45','Attack+14','Enmity+8','"Refresh"+1',}},
	hands={ name="Founder's Gauntlets", augments={'STR+8','Attack+15','"Mag.Atk.Bns."+13','Phys. dmg. taken -3%',}},
	legs={ name="Cizin Breeches +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -2%','Accuracy+8',}},
	feet="Amm Greaves", neck="Loricate Torque +1", waist="Nierenschutz",
	left_ear="Ethereal Earring", right_ear="Sanare Earring", left_ring="Vocane Ring", right_ring="Defending Ring",
    back="Mollusca Mantle",}
	--defensive sets
--aftercast sets
end

function precast(spell)
	if spell.prefix== '/jobability' then
		if jumps:contains(spell.english) then
			if JumpType=="damage" then
				equip(sets.damage[spell.english])
			elseif JumpType=="tpgain" then
				equip(sets.tpgain[spell.english])
			end
		else
			equip(sets.ja[spell.english])
		end
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
	equip(sets.weaponry[weapon])
end

function aftercast(spell)
	if pet.isvalid then
		if spell.prefix=="/weaponskill" or spell.prefix=="/magic" or spell.prefix=="pet" then
			add_to_chat(206, 'Wyvern Action Check')
		else
			status_change(player.status)
		end
	else
		status_change(player.status)
	end
end

function status_change(new,old)
	if new=='Engaged' then
		if TPMode=="xhit" then
			if buffactive['Spirit Surge'] then
				if player.mp<99 then
					equip(sets.ss[TPType])
				else
					equip(sets.ss.o[TPType])
				end
			else
				if player.mp<99 then
					equip(sets.xhit[TPType])
				else
					equip(sets.xhito[TPType])
				end
			end
		elseif TPMode=="multi" then
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
		elseif TPMode=="xhit2" then
			if buffactive['Spirit Surge'] then
				if player.mp<99 then
					equip(sets.ss[TPType])
				else
					equip(sets.ss.o[TPType])
				end
			else
				if player.mp<99 then
					equip(sets.xhit2[TPType])
				else
					equip(sets.xhit2o[TPType])
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
	equip(sets.weaponry[weapon])
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
		if TPMode=="xhit2" then
			TPMode="multi"
			add_to_chat(206, 'MULTIHIT MODE')
			send_command('text tpvariable text "MULTIHIT MODE"')
			if TPType=="lowacc" then
				send_command('alias ddset gs equip sets.tp.lowacc')
				send_command('alias oset gs equip sets.tp.o.lowacc')
			elseif TPType=="medacc" then
				send_command('alias ddset gs equip sets.tp.medacc')
				send_command('alias oset gs equip sets.tp.o.medacc')
			elseif TPType=="highacc" then
				send_command('alias ddset gs equip sets.tp.highacc')
				send_command('alias oset gs equip sets.tp.o.highacc')
			end
		elseif TPMode=="xhit" then
			TPMode="xhit2"
			add_to_chat(206, 'XHIT2 MODE')
			send_command('text tpvariable text "XHIT2 MODE"')
			if TPType=="lowacc" then
				send_command('alias ddset gs equip sets.xhit2.lowacc')
				send_command('alias oset gs equip sets.xhit2o.lowacc')
			elseif TPType=="medacc" then
				send_command('alias ddset gs equip sets.xhit2.medacc')
				send_command('alias oset gs equip sets.xhit2o.medacc')
			elseif TPType=="highacc" then
				send_command('alias ddset gs equip sets.xhit2.highacc')
				send_command('alias oset gs equip sets.xhit2o.highacc')
			end
		elseif TPMode=="multi" then
			TPMode="xhit"
			add_to_chat(206, 'XHIT MODE')
			send_command('text tpvariable text "XHIT MODE"')
			if TPType=="lowacc" then
				send_command('alias ddset gs equip sets.xhit.lowacc')
				send_command('alias oset gs equip sets.xhito.lowacc')
			elseif TPType=="medacc" then
				send_command('alias ddset gs equip sets.xhit.medacc')
				send_command('alias oset gs equip sets.xhito.medacc')
			elseif TPType=="highacc" then
				send_command('alias ddset gs equip sets.xhit.highacc')
				send_command('alias oset gs equip sets.xhito.highacc')
			end
		else
			TPMode="multi"
			add_to_chat(206, 'MULTIHIT MODE')
			send_command('text tpvariable text "MULTIHIT MODE"')
			if TPType=="lowacc" then
				send_command('alias ddset gs equip sets.tp.lowacc')
				send_command('alias oset gs equip sets.tp.o.lowacc')
			elseif TPType=="medacc" then
				send_command('alias ddset gs equip sets.tp.medacc')
				send_command('alias oset gs equip sets.tp.o.medacc')
			elseif TPType=="highacc" then
				send_command('alias ddset gs equip sets.tp.highacc')
				send_command('alias oset gs equip sets.tp.o.highacc')
			end
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
		if TPMode=="multi" then
			send_command('alias ddset gs equip sets.tp.lowacc')
			send_command('alias oset gs equip sets.tp.o.lowacc')
		elseif TPMode=="xhit" then
			send_command('alias ddset gs equip sets.xhit.lowacc')
			send_command('alias oset gs equip sets.xhit.o.lowacc')
		end
	end
	if command=="medacc" then
		TPType="medacc"
		add_to_chat(206, 'TP TYPE: MEDACC')
		send_command('text idlevariable text "MED-ACC"')
		if TPMode=="multi" then
			send_command('alias ddset gs equip sets.tp.medacc')
			send_command('alias oset gs equip sets.tp.o.medacc')
		elseif TPMode=="xhit" then
			send_command('alias ddset gs equip sets.xhit.medacc')
			send_command('alias oset gs equip sets.xhit.o.medacc')
		end
	end
	if command=="highacc" then
		TPType="highacc"
		add_to_chat(206, 'TP TYPE: HIGHACC')
		send_command('text idlevariable text "HIGH-ACC"')
		if TPMode=="multi" then
			send_command('alias ddset gs equip sets.tp.highacc')
			send_command('alias oset gs equip sets.tp.o.highacc')
		elseif TPMode=="xhit" then
			send_command('alias ddset gs equip sets.xhit.highacc')
			send_command('alias oset gs equip sets.xhit.o.highacc')
		end
	end
--TPType commands
	
--weaponry commands	
	if command== "Gungnir" then
		if weapon=="Gungnir" then
			add_to_chat(206, 'Gungnir already equiped, updating')
			status_change(player.status)
		else
			weapon="Gungnir"			
			add_to_chat(206, 'Gungnir Mode')
			send_command('text pdtvariable text "Gungnir"')
		end
	end	
	if command== "Olyndicus" then
		if weapon=="Olyndicus" then
			add_to_chat(206, 'Olyndicus already equiped, updating')
			status_change(player.status)
		else
			weapon="Olyndicus"
			add_to_chat(206, 'Olyndicus Mode')
			status_change(player.status)
			send_command('text pdtvariable text "Olyndicus"')
		end
	end
	if command=="Annealed" then
		if weapon=="Annealed" then
			add_to_chat(206, 'Annealed Lance already equiped, updating')
			status_change(player.status)
		else
			weapon="Annealed"
			add_to_chat(206, 'Annealed Lance Mode')
			status_change(player.status)
			send_command('text pdtvariable text "Annealed Lance"')
		end
	end
	if command=="Quint" then
		if weapon=="Quint" then
			add_to_chat(206, 'Quint Spear already equiped, updating')
			status_change(player.status)
		else
			weapon="Quint"
			add_to_chat(206, 'Quint Spear Mode')
			status_change(player.status)
			send_command('text pdtvariable text "Quint Spear"')
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

--jump mode
	if command=="jumptoggle" then
		if JumpType=="damage" then
			JumpType="tpgain"
			add_to_chat(206, 'JUMP TYPE: TP GAIN')
		elseif JumpType=="tpgain" then
			JumpType="damage"
			add_to_chat(206, 'JUMP TYPE: DAMAGE')
		end
	end
--jump mode

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