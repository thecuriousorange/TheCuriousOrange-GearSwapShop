function get_sets()
-- includes
	include('skillchain-elements.lua')
	include('organizer-lib.lua')
-- includes

--aliasing
	send_command('alias ddset gs equip sets.tp.lowacc')
	send_command('alias oset gs equip sets.tp.o.lowacc')
	send_command('alias idle gs equip sets.idle.standardidle')
	send_command('alias pf gs c primfix')
--aliasing

--lists
	include('physws.lua')
--lists

--[[text boxes	
	send_command('text idlevariable text "LOW-ACC"')
	send_command('text tpvariable text "MULTIHIT MODE"')
	send_command('text wsvariable text "WSType: DMG"')
	send_command('text pdtvariable text "Habile Mazrak"')
--text boxes]]

--binds
	send_command('bind #2 gs equip sets.pdt')
	send_command('bind #4 idle')
	send_command('bind #8 gs equip sets.mdt')
	send_command('bind #h gs equip sets.hybrid')
	send_command('bind #t ddset')
	send_command('bind #x gs equip sets.xdt')
	send_command('bind @r gs c rr')
	send_command('bind @f1 gs c DD;')
	send_command('bind @f2 gs c Hybrid')
	send_command('bind @f3 gs c PDT')
	send_command('bind @f4 gs c MDT')
	send_command('bind #f1 gs c toggleaccuracy')
	send_command('bind #f3 gs c kitetoggle')
	send_command('bind #f4 gs c idletoggle')
	send_command('bind @f6 gs c Quint')
	send_command('bind @f7 gs c Trishula')
	send_command('bind @f8 gs c Olyndicus')
	send_command('bind @f9 gs c Gungnir')
	send_command('bind @f12 gs c ws_dmg_or_acc')
	send_command('bind #g gs c jumptoggle')
	send_command('bind @p gs c oring')
	send_command('bind !- input /ws "Double Thrust" <t>')
	send_command('bind != input /ws "Penta Thrust" <t>')
	send_command("alias ctgeir Camlann's Torment")
--binds	

--indicies
	sets.polearm={}
	sets.polearm.index={"Trishula","Habile Mazrak","Gungnir",}
	polearm=1
	
	sets.accuracy={}
	sets.accuracy.index={"lowacc","medacc","highacc","maxacc"}
	accuracy=1
	
	sets.tpbuild={}
	sets.tpbuild.index={"multi","xhit","xhit2"}
	tpbuild=1
	
	sets.defense={}	
	sets.defense.index={"pdt","mdt","xdt"}
	def=1
	
	sets.idle={}
	sets.idle.index={"standardidle","pdtidle","mdtidle","dtidle","pdtkite","mdtkite","dtkite"}
	idle=1
--indicies

--default macro set
	send_command('input /macro book 5;input /macro set 2')
--default macro set

--lists
	jumps= S{'Jump','High Jump','Spirit Jump','Soul Jump',}
--lists

--gui setup
windower.prim.create('TP_SET')
windower.prim.create('ACC_SET')
windower.prim.create('IDLE_SET')
windower.prim.create('WS_SET')
windower.prim.create('WEAPON_TYPE')
windower.prim.create('JUMP_TYPE')

windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/multi.png')
windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/lowacc.png')
windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/standardidle.png')
windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/dmg.png')
windower.prim.set_texture('WEAPON_TYPE',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/Trishula.png')
windower.prim.set_texture('JUMP_TYPE',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/dmgjump.png')

windower.prim.set_size('TP_SET',200,30)
windower.prim.set_size('ACC_SET',200,30)
windower.prim.set_size('IDLE_SET',200,30)
windower.prim.set_size('WS_SET',200,30)
windower.prim.set_size('WEAPON_TYPE',200,50)
windower.prim.set_size('JUMP_TYPE',200,50)

windower.prim.set_position('TP_SET',0.65*windower.get_windower_settings().ui_x_res,50)
windower.prim.set_position('ACC_SET',0.65*windower.get_windower_settings().ui_x_res,90)
windower.prim.set_position('IDLE_SET',0.65*windower.get_windower_settings().ui_x_res,130)
windower.prim.set_position('WS_SET',0.65*windower.get_windower_settings().ui_x_res,170)
windower.prim.set_position('WEAPON_TYPE',0.65*windower.get_windower_settings().ui_x_res,210)
windower.prim.set_position('JUMP_TYPE',0.65*windower.get_windower_settings().ui_x_res,260)

windower.prim.set_color('TP_SET', 100, 255, 255, 255)
windower.prim.set_color('ACC_SET', 100, 255, 255, 255)
windower.prim.set_color('IDLE_SET', 100, 255, 255, 255)
windower.prim.set_color('WS_SET', 100, 255, 255, 255)
windower.prim.set_color('WEAPON_TYPE',100,255,255,255)
windower.prim.set_color('JUMP_TYPE',100,255,255,255)

windower.prim.set_visibility('TP_SET',true)
windower.prim.set_visibility('ACC_SET',true)
windower.prim.set_visibility('IDLE_SET',true)
windower.prim.set_visibility('WS_SET',true)
windower.prim.set_visibility('WEAPON_TYPE',true)
windower.prim.set_visibility('JUMP_TYPE',true)
--gui setup

--augmented items
	taeonhead={ name="Taeon Chapeau", augments={'Accuracy+17 Attack+17','"Triple Atk."+2','Crit. hit damage +3%',}}
	taeonbody={ name="Taeon Tabard", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','Crit. hit damage +3%',}}
	taeonhands={ name="Taeon Gloves", augments={'Accuracy+16 Attack+16','"Triple Atk."+2','Crit. hit damage +3%',}}
	taeonlegs={ name="Taeon Tights", augments={'Accuracy+17 Attack+17','"Triple Atk."+2','Crit. hit damage +2%',}}
	taeonfeet={ name="Taeon Boots", augments={'Accuracy+19 Attack+19','"Triple Atk."+2','Crit. hit damage +2%',}}
	
	acrohead={ name="Acro Helm", augments={'Accuracy+19 Attack+19','Haste+3%','DEX+8',}}
	acrobody={ name="Acro Surcoat", augments={'Accuracy+18 Attack+18','"Store TP"+6','Crit. hit damage +3% ',}}
	acrohands={ name="Acro Gauntlets", augments={'Accuracy+20 Attack+20','"Store TP"+6','Crit. Hit Damage +3%',}}
	acrolegs={ name="Acro Breeches", augments={'Accuracy+19 Attack+19','"Store TP"+6','Crit. Hit Damage +3%',}}
	acrofeet={ name="Acro Leggings", augments={'Accuracy+20 Attack+20','"Store TP"+6','Crit. Hit Damage +3%',}}
	
	dabody={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','Crit. Hit Damage +1%',}}
	dahands={ name="Acro Gauntlets", augments={'Accuracy+20 Attack+20','"Dbl.Atk."+3','Crit. Hit Damage +2%',}}
	dalegs={ name="Acro Breeches", augments={'Accuracy+18 Attack+18','"Dbl.Atk."+3','Crit. Hit Damage +2%',}}
	dafeet={ name="Acro Leggings", augments={'Accuracy+19 Attack+19','"Dbl.Atk."+3','Crit. Hit Damage +2%',}}
	
	updrafttp={ name="Updraft Mantle", augments={'STR+2','Pet: Breath+3','Pet: Damage taken -1%','Weapon skill damage +1%',}}
	updraftws={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Double Attack +10%','STR+10'}}
--augmented items
	
--variables
	weapon="Trishula"
	JumpType="damage"
	TPMode="multi"
	TPType="lowacc"
	WSType="damage"
	rrlock="rroff"
	oring="off"
	
	sets.oring= T{}
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
	sets.weaponry.Gungnir={main="Gungnir", sub="Bloodrain Strap",}
	--[[sets.weaponry["Habile Mazrak"]={main="Habile Mazrak", sub="Bloodrain Strap",}]]
	--[[sets.weaponry.Annealed={main="Annealed Lance", sub="Bloodrain Strap",}]]
	sets.weaponry.Quint={main="Quint Spear", sub="Bloodrain Strap",}
	sets.weaponry["Trishula"]={main="Trishula", sub="Utu Grip",}
--weaponry
	
--JA sets
	sets.tpgain["Jump"]={ammo="Ginsen", head=acrohead, legs=acrolegs, body="Vishap Mail +1", hands="Vishap F. G. +1", 
	feet="Maenadic Gambieras", neck="Ganesha's Mala", waist="Windbuffet Belt +1", left_ear="Sherida Earring", 
	right_ear="Brutal Earring", left_ring="Petrov Ring", right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.tpgain["High Jump"]={ammo="Ginsen", head=acrohead, body="Vishap Mail +1", hands="Vishap F. G. +1", feet="Maenadic Gambieras", 
	neck="Ganesha's Mala", legs="Vishap Brais +1", waist="Windbuffet Belt +1", left_ear="Sherida Earring", right_ear="Brutal Earring", 
	left_ring="Petrov Ring", right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.tpgain["Spirit Jump"]={ammo="Ginsen", head=acrohead, body=acrobody, hands=acrohands, left_ear="Sherida Earring",
	legs="Pelt. Cuissots +1", feet="Pelt. Schyn. +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ring="Petrov Ring", right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.tpgain["Soul Jump"]={ammo="Ginsen", head=acrohead, body=acrobody, right_ring="Rajas Ring",
	hands=acrohands, legs="Pelt. Cuissots +1", feet=acrofeet, neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Tripudio Earring", right_ear="Brutal Earring", left_ring="Petrov Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.damage["Jump"]={ammo="Knobkierrie", body="Vishap Mail +1", hands="Vishap F. G. +1", feet="Vishap Greaves +1",
    head=taeonhead, legs=taeonlegs, neck="Ganesha's Mala", waist="Windbuffet Belt +1", left_ear="Steelflash Earring",
	right_ear="Bladeborn Earring", right_ring="Oneiros Ring", left_ring="Petrov Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.damage["High Jump"]={ammo="Knobkierrie", head=taeonhead, body=taeonbody, hands=taeonhands, legs="Vishap Brais +1", neck="Ganesha's Mala", 
	waist="Windbuffet Belt +1", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}}, feet=taeonfeet, right_ring="Oneiros Ring", left_ear="Sherida Earring", right_ear="Brutal Earring", 
	left_ring="Petrov Ring",}
	
	sets.damage["Spirit Jump"]={ammo="Ginsen", head="Sulevia's Mask +1", hands="Sulev. Gauntlets +1", legs="Pelt. Cuissots +1",
	body={ name="Valorous Mail", augments={'Accuracy+25 Attack+25','Crit. hit damage +2%','DEX+6','Accuracy+10','Attack+8',}},
	feet={ name="Valorous Greaves", augments={'Accuracy+29','"Store TP"+8','Attack+2',}}, neck="Combatant's Torque", waist="Grunfeld Rope",
	left_ear="Cessance Earring", right_ear="Telos Earring", left_ring="Cacoethic Ring +1", right_ring="Ramuh Ring +1",
	back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','DEX+10',}},}
	
	sets.damage["Soul Jump"]={ammo="Ginsen", head="Sulevia's Mask +1", hands="Sulev. Gauntlets +1", legs="Pelt. Cuissots +1",
	body={ name="Valorous Mail", augments={'Accuracy+25 Attack+25','Crit. hit damage +2%','DEX+6','Accuracy+10','Attack+8',}},
	feet={ name="Valorous Greaves", augments={'Accuracy+29','"Store TP"+8','Attack+2',}}, neck="Combatant's Torque", waist="Grunfeld Rope",
	left_ear="Cessance Earring", right_ear="Telos Earring", left_ring="Cacoethic Ring +1", right_ring="Ramuh Ring +1",
	back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','DEX+10',}},}
	
	sets.ja["Ancient Circle"]={legs="Vishap Brais +1",}
	
	sets.ja["Angon"]={hands="Ptero. Fin. G. +1", ammo="Angon"}
	
	sets.ja["Call Wyvern"]={body="Ptero. Mail +1",}
	
	sets.ja["Spirit Surge"]={body="Ptero. Mail +1", neck="Chanoix's Gorget", right_ear="Lancer's Earring", body="Wyvern Mail", hands="Despair Fin. Gaunt.", 
	legs="Vishap Brais +1", feet="Ptero. Greaves +1",}
	
	sets.ja["Deep Breathing"]={head="Ptero. Armet +1",}
	
	sets.ja["Steady Wing"]={neck="Chanoix's Gorget", right_ear="Lancer's Earring", body="Wyvern Mail", hands="Despair Fin. Gaunt.", 
	legs="Vishap Brais +1", feet="Ptero. Greaves +1",}
	
	sets.ja["Spirit Link"]={head="Vishap Armet +1", left_ear="Pratik Earring", hands="Pel. Vambraces +1", feet="Ptero. Greaves +1",}
--JA sets

--PETCMD sets
	sets.pet["Steady Wing"]={neck="Chanoix's Gorget", right_ear="Lancer's Earring", body="Wyvern Mail", hands="Despair Fin. Gaunt.", 
	legs="Vishap Brais +1", feet="Ptero. Greaves +1",}
	
	sets.pet["Spirit Link"]={head="Vishap Armet +1", hands="Pel. Vambraces +1", back=updrafttp,}
	
	sets.pet["Restoring Breath"]={head={ name="Ptero. Armet +1", augments={'Enhances "Deep Breathing" effect',}},
    body={ name="Acro Surcoat", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: Breath+6','Pet: Damage taken -3%',}},
    hands={ name="Acro Gauntlets", augments={'Pet: Mag. Acc.+22','Pet: Breath+7','CHR+8',}},
    legs={ name="Acro Breeches", augments={'Pet: Mag. Acc.+22','Pet: Breath+6','MND+8',}},
    feet={ name="Acro Leggings", augments={'Pet: Mag. Acc.+12','Pet: Breath+6','Pet: Damage taken -4%',}},
    neck="Lancer's Torque", waist="Glassblower's Belt", left_ear="Ethereal Earring", right_ear="Lancer's Earring",
    left_ring="Meridian Ring", right_ring="Eihwaz Ring", back={ name="Brigantia's Mantle", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Accuracy+20 Attack+20',}},}
	
	sets.pet["Smiting Breath"]={head={ name="Ptero. Armet +1", augments={'Enhances "Deep Breathing" effect',}},
    body={ name="Acro Surcoat", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: Breath+6','Pet: Damage taken -3%',}},
    hands={ name="Acro Gauntlets", augments={'Pet: Mag. Acc.+22','Pet: Breath+7','CHR+8',}},
    legs={ name="Acro Breeches", augments={'Pet: Mag. Acc.+22','Pet: Breath+6','MND+8',}},
    feet={ name="Acro Leggings", augments={'Pet: Mag. Acc.+12','Pet: Breath+6','Pet: Damage taken -4%',}},
    neck="Lancer's Torque", waist="Glassblower's Belt", left_ear="Ethereal Earring", right_ear="Lancer's Earring",
    left_ring="Meridian Ring", right_ring="Eihwaz Ring", back={ name="Brigantia's Mantle", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Accuracy+20 Attack+20',}},}
	
	sets.breath.precast={head="Vishap Armet +1", body="Wyvern Mail", hands="Despair Fin. Gaunt.", legs="Vishap Brais +1",
	feet={ name="Ptero. Greaves +1", augments={'Enhances "Empathy" effect',}}, neck="Chanoix's Gorget",
	waist="Glassblower's Belt", left_ear="Ethereal Earring", right_ear="Lancer's Earring", left_ring="Meridian Ring",
	right_ring="Eihwaz Ring", back="Strendu Mantle",}
--PETCMD sets

--WS sets	
	sets.ws.damage["Double Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs="Sulev. Cuisses +2", feet="Pelt. Schyn. +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Sherida Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring +1", 
	right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.accuracy["Double Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs="Sulev. Cuisses +2", feet="Pelt. Schyn. +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Sherida Earring", right_ear="Telos Earring", left_ring="Ifrit Ring +1", 
	right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.damage["Thunder Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs="Sulev. Cuisses +2", feet="Pelt. Schyn. +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Sherida Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring +1", 
	right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.accuracy["Thunder Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs="Sulev. Cuisses +2", feet="Pelt. Schyn. +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Sherida Earring", right_ear="Telos Earring", left_ring="Ifrit Ring +1", 
	right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.damage["Raiden Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs="Sulev. Cuisses +2", feet="Pelt. Schyn. +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Sherida Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring +1", 
	right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.accuracy["Raiden Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs="Sulev. Cuisses +2", feet="Pelt. Schyn. +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1", 
	left_ear="Sherida Earring", right_ear="Telos Earring", left_ring="Ifrit Ring +1", 
	right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.damage["Leg Sweep"]={ammo="Vanir Battery", head="Lustratio Cap", body="Dagon Breast.", hands=dahands, 
	legs=taeonlegs, feet=taeonfeet, neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ear="Sherida Earring", right_ear="Brutal Earring", right_ring="Oneiros Ring", left_ring="Petrov Ring",
    back="Bleating Mantle",}
	
	sets.ws.accuracy["Leg Sweep"]={ammo="Vanir Battery", head="Lustratio Cap", body="Dagon Breast.", hands=dahands, 
	legs=taeonlegs, feet=taeonfeet, neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ear="Sherida Earring", right_ear="Telos Earring", right_ring="Oneiros Ring", left_ring="Petrov Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.damage["Penta Thrust"]={ammo="Vanir Battery", head="Lustratio Cap", body="Dagon Breast.", hands=dahands, 
	legs=taeonlegs, feet=taeonfeet, neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ear="Sherida Earring", right_ear="Brutal Earring", right_ring="Oneiros Ring", left_ring="Petrov Ring",
    back="Bleating Mantle",}
	
	sets.ws.accuracy["Penta Thrust"]={ammo="Vanir Battery", head="Lustratio Cap", body="Dagon Breast.", hands=dahands, 
	legs=taeonlegs, feet=taeonfeet, neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ear="Sherida Earring", right_ear="Telos Earring", right_ring="Oneiros Ring", left_ring="Petrov Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.damage["Vorpal Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs="Pelt. Cuissots +1", feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Sherida Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring +1", 
	right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.accuracy["Vorpal Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs=taeonlegs, feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Sherida Earring", right_ear="Telos Earring", left_ring="Ifrit Ring +1", 
	right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.damage["Skewer"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs="Pelt. Cuissots +1", feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Sherida Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring +1", 
	right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.accuracy["Skewer"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs=taeonlegs, feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Sherida Earring", right_ear="Telos Earring", left_ring="Ifrit Ring +1", 
	right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.damage["Wheeling Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs="Pelt. Cuissots +1", feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Sherida Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring +1", 
	right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.accuracy["Wheeling Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs="Sulev. Cuisses +2", feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Sherida Earring", right_ear="Telos Earring", left_ring="Ifrit Ring +1", 
	right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.damage["Impulse Drive"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs="Pelt. Cuissots +1", feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Sherida Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring +1", 
	right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.accuracy["Impulse Drive"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs="Sulev. Cuisses +2", feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Sherida Earring", right_ear="Telos Earring", left_ring="Ifrit Ring +1", 
	right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.damage["Drakesbane"]={ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}},
    body="Sulevia's Plate. +1",
    hands={ name="Lustratio Mittens", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
    legs="Pelt. Cuissots +1",
    feet="Thereoid Greaves",--{ name="Valorous Greaves", augments={'Accuracy+22 Attack+22','Crit.hit rate+3','Accuracy+1','Attack+15',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear="Brutal Earring",
    left_ring="Ifrit Ring +1",
    right_ring="Shukuyu Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.accuracy["Drakesbane"]={ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}},
    body="Sulevia's Plate. +1",
    hands={ name="Lustratio Mittens", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
    legs="Pelt. Cuissots +1",
    feet={ name="Valorous Greaves", augments={'Accuracy+27','"Dbl.Atk."+3','DEX+5','Attack+6',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear="Telos Earring",
    left_ring="Ifrit Ring +1",
    right_ring="Shukuyu Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.damage["Sonic Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs="Pelt. Cuissots +1", feet="Sulev. Leggings +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Sherida Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring +1", 
	right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.accuracy["Sonic Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs="Sulev. Cuisses +2", feet="Sulev. Leggings +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Ifrit Ring +1", 
	right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.damage["Camlann's Torment"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs="Ptero. Brais +1", feet="Sulev. Leggings +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Sherida Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring +1", 
	right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.accuracy["Camlann's Torment"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs="Sulev. Cuisses +2", feet="Sulev. Leggings +1", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Ifrit Ring +1", 
	right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.damage["Stardiver"]={ammo="Knobkierrie", head="Lustratio Cap", body="Dagon Breast.", hands="Sulev. Gauntlets +1",
	legs="Sulev. Cuisses +2", feet="Lustratio Leggings", neck="Fotia Gorget", waist="Fotia Belt", 
	left_ear="Sherida Earring", right_ear="Brutal Earring", left_ring="Ifrit Ring +1", 
	right_ring="Shukuyu Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.accuracy["Stardiver"]={ammo="Knobkierrie", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body="Dagon Breast.", hands="Sulev. Gauntlets +1",
	legs="Sulev. Cuisses +2", feet="Sulev. Leggings +1",
	neck="Fotia Gorget", waist="Fotia Belt", left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, right_ear="Brutal Earring", left_ring="Ifrit Ring +1", right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.damage["Geirskogul"]={ammo="Knobkierrie",
    head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
    body="Pelt. Plackart +1",
    hands={ name="Lustratio Mittens", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
    legs={ name="Lustratio Subligar", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
    feet={ name="Valorous Greaves", augments={'Accuracy+27','"Dbl.Atk."+3','DEX+5','Attack+6',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Brutal Earring",
    left_ring="Ramuh Ring +1",
    right_ring="Rajas Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
	
	sets.ws.accuracy["Geirskogul"]={ammo="Knobkierrie",
    head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
    body="Pelt. Plackart +1",
    hands={ name="Lustratio Mittens", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
    legs={ name="Lustratio Subligar", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
    feet={ name="Valorous Greaves", augments={'Accuracy+27','"Dbl.Atk."+3','DEX+5','Attack+6',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Brutal Earring",
    left_ring="Ramuh Ring +1",
    right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
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
    left_ring="Meridian Ring", right_ring="Eihwaz Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}
--midcast sets

--aftercast sets
	--offensive sets
	sets.tp.lowacc={ammo="Ginsen", neck="Ganesha's Mala", waist="Windbuffet Belt +1", left_ear="Sherida Earring", head=taeonhead, right_ear="Brutal Earring",
	body="Dagon Breast.", hands=taeonhands, back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}}, 
	legs=taeonlegs, left_ring="Niqmaddu Ring", feet=taeonfeet, right_ring="Hetairoi Ring",}
	
	sets.tp.medacc= set_combine(sets.tp.lowacc, {waist="Ioskeha Belt", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},})
	
	sets.tp.highacc= {ammo="Amar Cluster", neck="Combatant's Torque", waist="Olseni Belt", right_ring="Ramuh Ring +1",
	head={ name="Taeon Chapeau", augments={'Accuracy+17 Attack+17','"Triple Atk."+2','Crit. hit damage +3%',}},
	body="Dagon Breast.", hands="Sulev. Gauntlets +1", left_ear="Sherida Earring", right_ear="Telos Earring", left_ring="Niqmaddu Ring",
	legs={ name="Taeon Tights", augments={'Accuracy+17 Attack+17','"Triple Atk."+2','Crit. hit damage +2%',}},
	feet={ name="Taeon Boots", augments={'Accuracy+19 Attack+19','"Triple Atk."+2','Crit. hit damage +2%',}},
	back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','DEX+10',}},}
	
	sets.tp.maxacc={ammo="Amar Cluster", head="Flam. Zucchetto +1", body={ name="Valorous Mail", augments={'Accuracy+25 Attack+25','Crit. hit damage +2%','DEX+6','Accuracy+10','Attack+8',}},
	hands="Sulev. Gauntlets +1", legs={ name="Taeon Tights", augments={'Accuracy+17 Attack+17','"Triple Atk."+2','Crit. hit damage +2%',}}, right_ring="Ramuh Ring +1",
	feet="Flam. Gambieras +1", neck="Combatant's Torque", waist="Ioskeha Belt", left_ear="Mache Earring", right_ear="Telos Earring", left_ring="Niqmaddu Ring",
	back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10',}},}
	
	sets.xhit.lowacc={ammo="Ginsen", head=acrohead, body="Pelt. Plackart +1", back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','DEX+10',}},
	hands=acrohands, waist="Windbuffet Belt +1", legs=acrolegs, feet=acrofeet, neck="Ganesha's Mala", left_ear="Tripudio Earring", right_ear="Cessance Earring", left_ring="Petrov Ring",
	right_ring="Rajas Ring",}
		
	sets.xhit.medacc=set_combine(sets.xhit.lowacc, {waist="Grunfeld Rope", back="Letalis Mantle"})
	
	sets.xhit.highacc={ammo="Ginsen", head={ name="Acro Helm", augments={'Accuracy+19 Attack+19','Haste+3','DEX+8',}},
	body="Pelt. Plackart +1", hands={ name="Acro Gauntlets", augments={'Accuracy+20 Attack+20','"Store TP"+6','Crit. hit damage +3%',}},
	legs={ name="Acro Breeches", augments={'Accuracy+19 Attack+19','"Store TP"+6','Crit. hit damage +3%',}}, neck="Combatant's Torque",
	feet={ name="Valorous Greaves", augments={'Accuracy+29','"Store TP"+8','Attack+2',}}, waist="Olseni Belt", left_ear="Telos Earring",
	right_ear="Cessance Earring", left_ring="Cacoethic Ring +1", right_ring="Ramuh Ring +1", 
	back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','DEX+10',}},}
	
	sets.xhit.maxacc={ammo="Amar Cluster", head="Flam. Zucchetto +1", body="Flamma Korazin +1", hands="Flam. Manopolas +1", legs="Sulev. Cuisses +2",
	feet="Flam. Gambieras +1", neck="Combatant's Torque", waist="Ioskeha Belt", left_ear="Telos Earring", right_ear="Tripudio Earring", left_ring="Cacoethic Ring +1",
	right_ring="Ramuh Ring +1", back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10',}},
}
	
	sets.xhit2.lowacc={ammo="Ginsen", head="Flam. Zucchetto +1", body="Pelt. Plackart +1", waist="Ioskeha Belt",
    hands={ name="Emicho Gauntlets", augments={'HP+50','DEX+10','Accuracy+15',}}, legs="Sulev. Cuisses +2",
	feet="Flam. Gambieras +1", neck="Shulmanu Collar", left_ear="Sherida Earring", right_ear="Telos Earring",
	left_ring="Niqmaddu Ring", right_ring="Rajas Ring", back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10',}},
}
	
	sets.xhit2.medacc=set_combine(sets.xhit2.lowacc, {body="Dagon Breast.",})
	
	sets.xhit2.highacc={ammo="Amar Cluster", head="Sulevia's Mask +1", hands="Sulev. Gauntlets +1", legs="Sulev. Cuisses +2",
	body={ name="Valorous Mail", augments={'Accuracy+25 Attack+25','Crit. hit damage +2%','DEX+6','Accuracy+10','Attack+8',}},
	feet={ name="Valorous Greaves", augments={'Accuracy+29','"Store TP"+8','Attack+2',}}, neck="Combatant's Torque", waist="Tempus Fugit",
	left_ear="Mache Earring", right_ear="Mache Earring", left_ring="Cacoethic Ring +1", right_ring="Ramuh Ring +1",
    back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','DEX+10',}},} --set_combine(sets.xhit.highacc, {legs=taeonlegs,})
	
	sets.xhit2.maxacc={ammo="Ginsen", head="Flam. Zucchetto +1", hands="Flam. Manopolas +1", legs="Sulev. Cuisses +2",
    body={ name="Valorous Mail", augments={'Accuracy+25 Attack+25','Crit. hit damage +2%','DEX+6','Accuracy+10','Attack+8',}},
	feet="Flam. Gambieras +1", neck="Combatant's Torque", waist="Ioskeha Belt", left_ear="Telos Earring", right_ear="Cessance Earring",
	left_ring="Cacoethic Ring +1", right_ring="Ramuh Ring +1", back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10',}},
}
	
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
	sets.hybrid={ammo="Amar Cluster", head="Sulevia's Mask +1", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1", legs="Sulev. Cuisses +2",
	feet="Sulev. Leggings +1", neck="Combatant's Torque", waist="Tempus Fugit", left_ear="Zwazo Earring", right_ear="Zennaroi Earring",
	left_ring="Cacoethic Ring +1", right_ring="Defending Ring", back="Ground. Mantle +1",}
	
	sets.pdt={ammo="Hasty Pinion +1", head="Sulevia's Mask +1", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs="Sulev. Cuisses +2", feet="Sulev. Leggings +1", neck="Loricate Torque +1", waist="Tempus Fugit", left_ear="Zwazo Earring",
	right_ear="Zennaroi Earring", left_ring="Vocane Ring", right_ring="Defending Ring", back="Agema Cape",}
	
	sets.mdt= set_combine(sets.pdt, {back="Engulfer Cape +1", left_ring="Shadow Ring",})
	
	sets.xdt=sets.pdt
	--defensive sets
	--idlesets
	sets.idle.standardidle={ammo="Vanir Battery", head="Valorous Mask", body="Jumalik Mail", hands="Sulev. Gauntlets +1", 
	legs={ name="Carmine Cuisses", augments={'Accuracy+10','DEX+10','MND+15',}}, feet="Amm Greaves", neck="Loricate Torque +1", waist="Nierenschutz",
	left_ear="Ethereal Earring", right_ear="Sanare Earring", left_ring="Shadow Ring", 
	right_ring="Sheltered Ring", back="Shadow Mantle",}
	
	sets.idle.pdt=sets.pdt
	
	sets.idle.mdt=sets.mdt
	
	sets.idle.xdt=sets.xdt
	
	sets.idle.pdtkite=set_combine(sets.pdt, {legs={ name="Carmine Cuisses", augments={'Accuracy+10','DEX+10','MND+15',}},})
	
	sets.idle.mdtkite=set_combine(sets.mdt, {legs={ name="Carmine Cuisses", augments={'Accuracy+10','DEX+10','MND+15',}},})
	
	sets.idle.xdtkite=set_combine(sets.xdt, {legs={ name="Carmine Cuisses", augments={'Accuracy+10','DEX+10','MND+15',}},})
	--idlesets
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
		if not spell.interrupted then
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
	if pet_midaction==true then
		add_to_chat(206, 'Wyvern Action Check')
	else
		status_change(player.status)
	end
end

function status_change(new,old)
	if new=='Engaged' then
		if TPMode=="xhit" then
			if oring=="on" then
				if buffactive['Spirit Surge'] then
					if player.mp<99 then
						equip(sets.ss[sets.accuracy.index[accuracy]])
					else
						equip(sets.ss.o[sets.accuracy.index[accuracy]])
					end
				else
					if player.mp<99 then
						equip(sets.xhit[sets.accuracy.index[accuracy]])
					else
						equip(sets.xhito[sets.accuracy.index[accuracy]])
					end
				end
			elseif oring=="off" then
				if buffactive['Spirit Surge'] then
					equip(sets.ss[sets.accuracy.index[accuracy]])
				else
					equip(sets.xhit[sets.accuracy.index[accuracy]])
				end
			end
		elseif TPMode=="multi" then
			if oring=="on" then
				if buffactive['Spirit Surge'] then
					if player.mp<99 then
						equip(sets.ss[sets.accuracy.index[accuracy]])
					else
						equip(sets.ss.o[sets.accuracy.index[accuracy]])
					end
				else
					if player.mp<99 then
						equip(sets.tp[sets.accuracy.index[accuracy]])
					else
						equip(sets.o[sets.accuracy.index[accuracy]])
					end
				end
			elseif oring=="off" then
				if buffactive['Spirit Surge'] then
					equip(sets.ss[sets.accuracy.index[accuracy]])
				else
					equip(sets.tp[sets.accuracy.index[accuracy]])
				end
			end
		elseif TPMode=="xhit2" then
			if oring=="on" then
				if buffactive['Spirit Surge'] then
					if player.mp<99 then
						equip(sets.ss[sets.accuracy.index[accuracy]])
					else
						equip(sets.ss.o[sets.accuracy.index[accuracy]])
					end
				else
					if player.mp<99 then
						equip(sets.xhit2[sets.accuracy.index[accuracy]])
					else
						equip(sets.xhit2o[sets.accuracy.index[accuracy]])
					end
				end
			elseif oring=="off" then
				if buffactive['Spirit Surge'] then
					equip(sets.ss[sets.accuracy.index[accuracy]])
				else
					equip(sets.xhit2[sets.accuracy.index[accuracy]])
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
		equip(sets.idle[sets.idle.index[idle]])				
	end
	equip(sets.weaponry[weapon])
	send_command('pf')
end

function pet_precast(spell)
	if string.find(spell.english, 'Breath') then
		equip(sets.breath.midcast)
	end
end

function pet_midcast(spell)
	if string.find(spell.english, 'Breath') and not spell.interrupted then
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
			windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/multi.png')
			send_command('alias ddset gs equip sets.tp.'..sets.accuracy.index[accuracy]..'')
			send_command('alias oset gs equip sets.tp.o.'..sets.accuracy.index[accuracy]..'')
		elseif TPMode=="xhit" then
			TPMode="xhit2"
			add_to_chat(206, 'XHIT2 MODE')
			windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/xhit2.png')
			send_command('alias ddset gs equip sets.xhit2.'..sets.accuracy.index[accuracy]..'')
			send_command('alias oset gs equip sets.xhit2.o.'..sets.accuracy.index[accuracy]..'')
		elseif TPMode=="multi" then
			TPMode="xhit"
			add_to_chat(206, 'XHIT MODE')
			windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/xhit.png')
			send_command('alias ddset gs equip sets.xhit.'..sets.accuracy.index[accuracy]..'')
			send_command('alias oset gs equip sets.xhit.o.'..sets.accuracy.index[accuracy]..'')
		else
			TPMode="multi"
			add_to_chat(206, 'MULTIHIT MODE')
			windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/multi.png')
			send_command('alias ddset gs equip sets.tp.'..sets.accuracy.index[accuracy]..'')
			send_command('alias oset gs equip sets.tp.o.'..sets.accuracy.index[accuracy]..'')
		end
		status_change(player.status)
	end
	if command=="Hybrid" then
		if TPMode=="Hybrid" then
			add_to_chat(206, 'Hybrid MODE ALREADY ACTIVE')
		else
			TPMode="Hybrid"
			add_to_chat(206, 'HYBRID MODE')
			windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/hybridmode.png')
		end
		status_change(player.status)
	end
	if command=="PDT" then
		if TPMode=="PDT" then
			add_to_chat(206, 'PDT MODE ALREADY ACTIVE')
		else
			TPMode="PDT"
			add_to_chat(206, 'PDT MODE')
			windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/pdtmode.png')
		end
		status_change(player.status)
	end
	if command=="MDT" then
		if TPMode=="MDT" then
			add_to_chat(206, 'MDT MODE ALREADY ACTIVE')
		else
			TPMode="MDT"
			add_to_chat(206, 'MDT MODE')
			windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/mdtmode.png')
		end
		status_change(player.status)
	end
--TPMode commands
	if command=="toggleaccuracy" then
		accuracy=accuracy+1
		if accuracy >#sets.accuracy.index then
			accuracy=1
		end
		windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/'..sets.accuracy.index[accuracy]..'.png')
		if TPMode=="multi" then
			send_command('alias ddset gs equip sets.tp.'..sets.accuracy.index[accuracy]..'')
			send_command('alias oset gs equip sets.tp.o.'..sets.accuracy.index[accuracy]..'')
		elseif TPMode=="xhit" then
			send_command('alias ddset gs equip sets.xhit.'..sets.accuracy.index[accuracy]..'')
			send_command('alias oset gs equip sets.xhit.o.'..sets.accuracy.index[accuracy]..'')
		elseif TPMode=="xhit2" then
			send_command('alias ddset gs equip sets.xhit2.'..sets.accuracy.index[accuracy]..'')
			send_command('alias oset gs equip sets.xhit2.o.'..sets.accuracy.index[accuracy]..'')
		end
		status_change(player.status)
	end
	
--weaponry commands	
	if command== "Gungnir" then
		if weapon=="Gungnir" then
			add_to_chat(206, 'Gungnir already equiped, updating')
			status_change(player.status)
		else
			weapon="Gungnir"			
			add_to_chat(206, 'Gungnir Mode')
			windower.prim.set_texture('WEAPON_TYPE',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/Gungnir.png')
			send_command("alias ctgeir Geirskogul")
		end
	end	
	--[[if command== "Habile Mazrak" then
		if weapon=="Habile Mazrak" then
			add_to_chat(206, 'Olyndicus already equiped, updating')
			status_change(player.status)
		else
			weapon="Habile Mazrak"
			add_to_chat(206, 'Olyndicus Mode')
			status_change(player.status)
			windower.prim.set_texture('WEAPON_TYPE',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/Habile Mazrak.png')
			send_command("alias ctgeir Camlann's Torment")
		end
	end]]--
	if command=="Trishula" then
		if weapon=="Trishula" then
			add_to_chat(206, 'Trishula already equiped, updating')
			status_change(player.status)
		else
			weapon="Trishula"
			add_to_chat(206, 'Trishula Mode')
			status_change(player.status)
			windower.prim.set_texture('WEAPON_TYPE',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/Trishula.png')
			send_command("alias ctgeir Camlann's Torment")
		end
	end
	--[[if command=="Annealed" then
		if weapon=="Annealed" then
			add_to_chat(206, 'Annealed Lance already equiped, updating')
			status_change(player.status)
		else
			weapon="Annealed"
			add_to_chat(206, 'Annealed Lance Mode')
			status_change(player.status)
			send_command('text pdtvariable text "Annealed Lance"')
		end
	end]]
	if command=="Quint" then
		if weapon=="Quint" then
			add_to_chat(206, 'Quint Spear already equiped, updating')
			status_change(player.status)
		else
			weapon="Quint"
			add_to_chat(206, 'Quint Spear Mode')
			status_change(player.status)
			send_command("alias ctgeir Camlann's Torment")
			--send_command('text pdtvariable text "Quint Spear"')
		end
	end
--weaponry commands	
	
--ws mode toggle	
	if command=="ws_dmg_or_acc" then
		if WSType=="damage" then
			WSType="accuracy"
			add_to_chat(206, 'WSType: ACCURACY')
			windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/acc.png')
		else
			WSType="damage"
			add_to_chat(206, 'WSType: DAMAGE')
			windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/dmg.png')
		end
	end
--ws mode toggle

--jump mode
	if command=="jumptoggle" then
		if JumpType=="damage" then
			JumpType="tpgain"
			add_to_chat(206, 'JUMP TYPE: TP GAIN')
			windower.prim.set_texture('JUMP_TYPE',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/stpjump.png')
		elseif JumpType=="tpgain" then
			JumpType="damage"
			add_to_chat(206, 'JUMP TYPE: DAMAGE')
			windower.prim.set_texture('JUMP_TYPE',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/dmgjump.png')
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
	if command == 'oring' then
		if oring=="off" then
			oring="on"
			add_to_chat(206, 'Oring: ON')
			status_change(player.status)
		else
			oring="off"
			add_to_chat(206, 'Oring: OFF')
			status_change(player.status)
		end
	end
	if command=="kitetoggle" then
		if idle < 4 then
			idle=4
		elseif not idle <4 then
			idle=idle+1
			if idle > #sets.idle.index then
				idle=4
			end
		end
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/'..sets.idle.index[idle]..'.png')
	end
	if command=="idletoggle" then
		idle=idle+1
		if idle > #sets.idle.index then
			idle=1
		end
		send_command('alias idle gs equip sets.idle.'..sets.idle.index[idle]..'')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/'..sets.idle.index[idle]..'.png')
	end
	if command=='primfix' then
		windower.prim.set_size('TP_SET',200,30)
		windower.prim.set_size('ACC_SET',200,30)
		windower.prim.set_size('IDLE_SET',200,30)
		windower.prim.set_size('WS_SET',200,30)
		windower.prim.set_size('WEAPON_TYPE',200,50)
		windower.prim.set_size('JUMP_TYPE',200,50)
	end
end