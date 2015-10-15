function get_sets()
-- includes
	--include('tco-include.lua')
	include('skillchain-elements.lua')
	include('organizer-lib.lua')
	macros_setup()
-- includes
-- keybinds, aliases and text boxes.
	send_command('alias pf gs c primfix')
	send_command('bind #4 idle')
	send_command('bind #2 gs c pdtset')
	send_command('bind #8 gs c mdtset')
	send_command('bind #g gs c ochain')
	send_command('bind @p gs c aegis')
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
	send_command('bind @f12 gs c wsacctoggle')
	send_command('bind #a gs c repulse')
	send_command('bind #s intervene')
	send_command('bind #i invincible')
	send_command('bind #6 phalanx')
	send_command('bind #5 input /ma "Enlight II" <me>')
	send_command('bind @3 input /item "Remedy" <me>')
	send_command('bind #1 input /item "Holy Water" <me>')
	send_command('bind @1 cmd9')
	send_command('bind @2 cmd10')
	send_command('bind #c crusade')
	send_command('bind @a gs c aftermath')
	send_command('bind !- cmd1')
	send_command('bind != cmd2')
	send_command('bind ^- cmd3')
	send_command('bind ^= cmd4')
	send_command('bind @- cmd5')
	send_command('bind @= cmd6')
	send_command('bind #- cmd7')
	send_command('bind #= cmd8')
	send_command('bind @h gs c help')
-- keybinds 

-- aliases	
	send_command('alias gsupdate gs c update')
	send_command('alias tp gs equip sets.aftercast.sword.highacc')
	send_command('alias hybrid gs equip sets.aftercast.absorbmode.highacc')
	send_command('alias idle gs equip sets.aftercast.idle')
-- aliases

--text boxes
	--send_command('text doavariable create;text doavariable bold true;text doavariable text "WSMODE:ACC";text doavariable pos 900 140')
	--send_command('text pdtvariable text "AEGIS MODE"')
	--send_command('text wsvariable text "STANDARD IDLE"')
	--send_command('text tpvariable text "Absorb MODE"')
	--send_command('text idlevariable text "HIGH-ACC"')
--text boxes

-- lists
	phys_ws= S{'Vorpal Blade','Fast Blade','Flat Blade','Circle Blade','Chant du Cygne','Savage Blade','Requiescat','Swift Blade','Hard Slash','Power Slash','Shockwave','Cresent Moon','Sickle Moon','Spinning Slash','Ground Strike','Torcleaver','Resolution','Brainshaker','Skullbreaker','True Strike','Judgement','Black Halo','Realmrazer'}
	cure= S{'Cure','Cure II','Cure III','Cure IV','Curaga','Curaga II', 'Cura','Cura II'}
	utsu= S{'Utsusemi: Ichi', 'Utsusemi: Ni'}
	PLD_JA= S{'Sentinel','Rampart','Holy Circle','Divine Emblem','Fealty','Chivalry','Intervene','Invincible','Shield Bash'}
-- lists for ws and spells

--
	stphead={ name="Acro Helm", augments={'Accuracy+12 Attack+12','"Store TP"+5','Weapon skill damage +3%',}}
	stpbody={ name="Acro Surcoat", augments={'Accuracy+18 Attack+18','"Store TP"+6','Crit. hit damage +3% ',}}
	stphands={ name="Acro Gauntlets", augments={'Accuracy+20 Attack+20','"Store TP"+6','Crit. Hit Damage +3%',}}
	stplegs={ name="Acro Breeches", augments={'Accuracy+19 Attack+19','"Store TP"+6','Crit. Hit Damage +3%',}}
	stpfeet={ name="Acro Leggings", augments={'Accuracy+17 Attack+17','"Store TP"+6','Crit. Hit Damage +3%',}}
	
	dabody={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','STR+10',}}
	dahands={ name="Acro Gauntlets", augments={'Accuracy+20 Attack+20','"Dbl.Atk."+3','Crit. Hit Damage +2%',}}
	dalegs={ name="Acro Breeches", augments={'Accuracy+18 Attack+18','"Dbl.Atk."+3','STR+7',}}
	dafeet={ name="Acro Leggings", augments={'Accuracy+19 Attack+19','"Dbl.Atk."+3','Crit. Hit Damage +2%',}}
	
	wsdmghead={ name="Yorium Barbuta", augments={'Accuracy+17 Attack+17','Enmity+7','Weapon skill damage +3%',}}
	wsdmghands={ name="Yorium Gauntlets", augments={'Accuracy+17','Enmity+8','Weapon skill damage +3%',}}
	wsdmglegs={ name="Yorium Cuisses", augments={'Mag. Acc.+8','Enmity+10','Weapon skill damage +3%',}}
	wsdmgfeet={ name="Yorium Sabatons", augments={'Accuracy+18 Attack+18','Enmity+8','Weapon skill damage +3%',}}
	
	dthead={ name="Yorium Barbuta", augments={'Accuracy+15 Attack+15','"Dbl. Atk."+2%','Damage taken-3%',}}
	dthands={ name="Yorium Gauntlets", augments={'Accuracy+22','Enmity+10','Damage taken-3%',}}
	dtlegs={ name="Yorium Cuisses", augments={'Accuracy+15 Attack+15','"Dbl. Atk."+3%','Damage taken-3%',}}
	dtfeet={ name="Yorium Sabatons", augments={'Accuracy+16 Attack+16','"Dbl. Atk."+3%','Damage taken-3%',}}
	
	curehead={ name="Yorium Barbuta", augments={'"Cure" potency +4%','Phalanx +3',}}
	curebody={ name="Yorium Cuirass", augments={'Attack+19','"Cure" potency +4%','Sklchn.dmg.+1%',}}	
	curelegs={ name="Yorium Cuisses", augments={'"Cure" potency +3%','Phalanx +3',}}
	curefeet={ name="Yorium Sabatons", augments={'"Cure" potency +3%','Phalanx +2',}}
	
	
    
	
--

-- variables	
	swordtype="burtgang"
	shieldtype="Aegis"
	last_shield_used="Ochain"
	Acc="highacc"
	IdleMode="idle"		
	TPSet="absorb"
	rrlock="rroff"
	repulsemode="normal"
	WSMode="acc"
	AM_ON_OR_OFF="on"
	display_help="false"
		
	sets.swordtype= T{}
	sets.shieldtype= T{}
	sets.Acc= T{}
	sets.IdleMode= T{}
	sets.TPSet= T{}
	sets.repulsemode= T{}
	sets.WSMode= T{}
	sets.AM_ON_OR_OFF= T{}
	sets.display_help= T{}
-- variables
windower.prim.create('TP_SET')
windower.prim.create('ACC_SET')
windower.prim.create('IDLE_SET')
windower.prim.create('WS_SET')
windower.prim.create('SHIELD_SET')

windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/absorbmode.png')
windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/highacc.png')
windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/standardidle.png')
windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/acc.png')
windower.prim.set_texture('SHIELD_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/Aegis.png')

windower.prim.set_size('TP_SET',200,30)
windower.prim.set_size('ACC_SET',200,30)
windower.prim.set_size('IDLE_SET',200,30)
windower.prim.set_size('WS_SET',200,30)
windower.prim.set_size('SHIELD_SET',200,55)

windower.prim.set_position('TP_SET',0.65*windower.get_windower_settings().x_res,50)
windower.prim.set_position('ACC_SET',0.65*windower.get_windower_settings().x_res,90)
windower.prim.set_position('IDLE_SET',0.65*windower.get_windower_settings().x_res,130)
windower.prim.set_position('WS_SET',0.65*windower.get_windower_settings().x_res,170)
windower.prim.set_position('SHIELD_SET',0.65*windower.get_windower_settings().x_res,210)

windower.prim.set_color('TP_SET', 100, 255, 255, 255)
windower.prim.set_color('ACC_SET', 100, 255, 255, 255)
windower.prim.set_color('IDLE_SET', 100, 255, 255, 255)
windower.prim.set_color('WS_SET', 100, 255, 255, 255)
windower.prim.set_color('SHIELD_SET', 130, 255, 255, 255)

windower.prim.set_visibility('TP_SET',true)
windower.prim.set_visibility('ACC_SET',true)
windower.prim.set_visibility('IDLE_SET',true)
windower.prim.set_visibility('WS_SET',true)
windower.prim.set_visibility('SHIELD_SET',true)

windower.prim.create('TCOhelp')
windower.prim.set_texture('TCOhelp',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/help.png')
windower.prim.set_position('TCOhelp',0.2*windower.get_windower_settings().x_res,0.1*windower.get_windower_settings().y_res)
windower.prim.set_size('TCOhelp',640,480)
windower.prim.set_color('TCOhelp',150,255,255,255)
windower.prim.set_visibility('TCOhelp',false)

-- base sets
	sets.precast={}
	sets.precast.ws={}
	sets.ws={}
	sets.ws.dmg={}
	sets.ws.acc={}
	sets.midcast={}
	sets.aftercast={}
	sets.aftercast.sword={}
	sets.aftercast.greatsword={}
	sets.aftercast.club={}
	sets.aftercast.aftermath={}
	sets.repulsemantle={"Repulse Mantle",}
-- base sets

-- weaponry
	sets.burtgang={main="Burtgang",}
	
	sets.Ochain={sub="Ochain",}
	
	sets.Aegis={sub="Aegis",}
-- weaponry

-- rr set
	sets.rr={head="Twilight Helm", body="Twilight Mail",}
-- rr set	
	
-- precast sets
	sets.precast.fc= {ammo="Incantor Stone", head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','System: 2 ID: 180 Val: 2',}},  
	hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}}, body="Nuevo Coselete",
	legs="Enif Cosciales", feet="Carmine Greaves", neck="Jeweled Collar", waist="Siegel Sash", right_ring="Defending Ring",
	right_ear="Etiolation Earring", left_ear="Loquac. Earring", left_ring="Prolix Ring", back="Boxer's Mantle",}
	
	sets.precast.cure= set_combine(sets.precast.fc, {left_ear="Nourish. Earring +1", right_ear="Mendi. Earring", body={ name="Jumalik Mail", augments={'HP+45','Attack+14','Enmity+8','"Refresh"+1',}},})
	
	sets.precast.ja= {ammo="Iron Gobbet", head="Cab. Coronet +1", body="Chev. Cuirass +1", hands=wsdmghands, 
	legs=wsdmglegs, feet=wsdmgfeet, neck="Warder's Charm", waist="Creed Baudrier",
	left_ear="Cryptic Earring", right_ear="Trux Earring", left_ring="Apeile Ring +1", right_ring="Eihwaz Ring",
    back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},}
		
	sets.precast.ja["Sentinel"]= set_combine(sets.precast.ja, {feet="Cab. Leggings +1"})
	sets.precast.ja["Rampart"]= set_combine(sets.precast.ja, {head="Cab. Coronet +1"})
	sets.precast.ja["Fealty"]= set_combine(sets.precast.ja, {body="Cab. Surcoat +1"})
	sets.precast.ja["Chivalry"]= set_combine(sets.precast.ja, {head="Rev. Coronet +1", body="Cab. Surcoat +1", hands="Cab. Gauntlets +1", left_ring="Levia. Ring", right_ring="Levia. Ring", feet=dafeet,})
	sets.precast.ja["Shield Bash"]= set_combine(sets.precast.ja, {left_ear="Knightly Earring", hands="Cab. Gauntlets +1", left_ring="Fenian Ring",})
	sets.precast.ja["Intervene"]= set_combine(sets.precast.ja, {hands="Cab. Gauntlets +1"})
	sets.precast.ja["Invincible"]= set_combine(sets.precast.ja, {legs="Cab. Breeches +1"})
	sets.precast.ja["Holy Circle"]= set_combine(sets.precast.ja, {feet="Rev. Leggings +1"})
	sets.precast.ja["Divine Emblem"]= set_combine(sets.precast.ja, {feet="Chev. Sabatons +1"})
	
	sets.precast.ja.cwaltz={ammo="Iron Gobbet", head={ name="Cab. Coronet +1", augments={'Enhances "Iron Will" effect',}},
	body={ name="Jumalik Mail", augments={'HP+45','Attack+14','Enmity+8','"Refresh"+1',}}, hands="Chev. Gauntlets +1", legs={ name="Cab. Breeches +1", augments={'Enhances "Invincible" effect',}},
	feet="Rev. Leggings +1", neck="Twilight Torque", waist="Goading Belt", left_ear="Cryptic Earring", right_ear="Trux Earring",
	left_ring="Terrasoul Ring", right_ring="Terrasoul Ring", back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},}
	
	sets.precast.ws.CdC= {ammo="Jukukik Feather", head="Yaoyotl Helm", body="Mes. Haubergeon",
    hands="Chev. Gauntlets +1", legs=dalegs, feet=dafeet, neck="Fotia Gorget",
    waist="Fotia Belt", left_ear="Steelflash Earring", right_ear="Bladeborn Earring", 
	left_ring="Ramuh Ring", right_ring="Rajas Ring", back="Bleating Mantle",}
	
	sets.precast.ws.Req= {ammo="Ginsen", head="Yaoyotl Helm", body="Rav. Breastplate",
    hands="Chev. Gauntlets +1", legs=dalegs, feet=dafeet, neck="Fotia Gorget",
    waist="Fotia Belt", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
    left_ring="Levia. Ring", right_ring="Rajas Ring", back="Bleating Mantle",}
	
	sets.precast.ws.VB= {ammo="Ginsen", head="Yaoyotl Helm", body="Mes. Haubergeon",
    hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet, neck="Asperity Necklace",
    waist="Windbuffet Belt +1", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
    left_ring="Ramuh Ring", right_ring="Rajas Ring", back="Bleating Mantle",}
	
	sets.precast.ws.Atonement= set_combine(sets.precast.ja, {head=wsdmghead, neck="Fotia Gorget", body="Phorcys Korazin", hands=wsdmghands, waist="Fotia Belt", legs=wsdmglegs, feet=wsdmgfeet, left_ear="Moonshade Earring", })
	
	sets.precast.ws.Resolution= set_combine(sets.precast.ws.CdC, {Left_Ring="Ifrit Ring"})
	
	sets.precast.ws.magicws=set_combine(sets.precast.ws.Atonement, {head="Jumalik Helm", hands="Leyline Gloves", right_ear="Friomisi Earring",})
	
	sets.wsdaybonus={head="Gavialis Helm",}
	
	sets.tpbonusphysicaldamage={left_ear="Moonshade Earring", right_ear="Brutal Earring"}
	sets.tpbonusphysicalaccuracy={right_ear="Moonshade Earring", left_ear="Zennaroi Earring"}
	sets.tpbonusmagical={left_ear="Moonshade Earring", right_ear="Crematio Earring"}
-- precast sets

-- ws sets
	--Sword WS
	sets.ws.dmg["Fast Blade"]=sets.precast.ws.VB
	
	sets.ws.acc["Fast Blade"]=set_combine(sets.ws.dmg["Fast Blade"], {neck="Subtlety Spec.", back="Letalis Mantle", left_ring="Mars's Ring", })
	
	sets.ws.dmg["Burning Blade"]=sets.precast.ws.magicws
	
	sets.ws.acc["Burning Blade"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Red Lotus Blade"]=sets.precast.ws.magicws
	
	sets.ws.acc["Red Lotus Blade"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Flat Blade"]=set_combine(sets.precast.ws.VB, {left_ring="Ifrit Ring", right_ring="Ifrit Ring",})
	
	sets.ws.acc["Flat Blade"]=set_combine(sets.ws.dmg["Flat Blade"], {neck="Subtlety Spec.", back="Letalis Mantle", left_ring="Mars's Ring", })
	
	sets.ws.dmg["Shining Blade"]=sets.precast.ws.magicws
	
	sets.ws.acc["Shining Blade"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Seraph Blade"]=sets.precast.ws.magicws
	
	sets.ws.acc["Seraph Blade"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Circle Blade"]=set_combine(sets.precast.ws.VB, {left_ring="Ifrit Ring", right_ring="Ifrit Ring",})
	
	sets.ws.acc["Circle Blade"]=set_combine(sets.ws.dmg["Circle Blade"], {neck="Subtlety Spec.", back="Letalis Mantle", left_ring="Mars's Ring", })
	
	sets.ws.dmg["Spirits Within"]=set_combine(sets.precast.ja, {body="Phorcys Korazin", waist="Fotia Belt", legs=stplegs,})
	
	sets.ws.acc["Spirits Within"]=set_combine(sets.precast.ja, {body="Phorcys Korazin", waist="Fotia Belt", legs=stplegs,})
	
	sets.ws.dmg["Vorpal Blade"]=set_combine(sets.precast.ws.VB, {waist="Fotia Belt", left_ring="Ifrit Ring",})
	
	sets.ws.acc["Vorpal Blade"]=set_combine(sets.ws.dmg["Vorpal Blade"], {neck="Subtlety Spec.", back="Letalis Mantle", left_ring="Mars's Ring", })
	
	sets.ws.dmg["Swift Blade"]=set_combine(sets.precast.ws.VB, {neck="Fotia Gorget", waist="Fotia Belt", left_ring="Ifrit Ring",})
	
	sets.ws.acc["Swift Blade"]=set_combine(sets.ws.dmg["Swift Blade"], {legs=dalegs, back="Letalis Mantle", left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Mars's Ring",})
	
	sets.ws.dmg["Savage Blade"]=set_combine(sets.precast.ws.VB, {neck="Fotia Gorget", waist="Fotia Belt", left_ring="Ifrit Ring",})
	
	sets.ws.acc["Savage Blade"]=set_combine(sets.ws.dmg["Savage Blade"], {legs=dalegs, back="Letalis Mantle", left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Mars's Ring",})
	
	sets.ws.dmg["Sanguine Blade"]=set_combine(sets.precast.ws.magicws, {left_ring="Archon Ring",})
	
	sets.ws.acc["Sanguine Blade"]=set_combine(sets.precast.ws.magicws, {left_ring="Archon Ring",})
	
	sets.ws.dmg["Chant du Cygne"]={ammo="Jukukik Feather", head="Gavialis Helm", body="Mes. Haubergeon",
    hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet, neck="Fotia Gorget",
    waist="Fotia Belt", left_ear="Steelflash Earring", right_ear="Bladeborn Earring", 
	left_ring="Ramuh Ring", right_ring="Rajas Ring", back="Bleating Mantle",}
	
	sets.ws.acc["Chant du Cygne"]=set_combine(sets.ws.dmg["Chant du Cygne"], {legs=dalegs, back="Letalis Mantle", left_ear="Zennaroi Earring", right_ear="Brutal Earring", hands="Chev. Gauntlets +1", right_ring="Mars's Ring",})
	
	sets.ws.dmg["Atonement"]=sets.precast.ws.Atonement
	
	sets.ws.acc["Atonement"]=sets.precast.ws.Atonement
	
	sets.ws.dmg["Requiescat"]={ammo="Ginsen", head="Otomi Helm", body="Rav. Breastplate",
    hands="Chev. Gauntlets +1", legs={ name="Carmine Cuisses", augments={'Accuracy+10','DEX+10','MND+15',}},
	feet=dafeet, neck="Fotia Gorget", waist="Fotia Belt", left_ear="Steelflash Earring", 
	right_ear="Bladeborn Earring", left_ring="Levia. Ring", right_ring="Rajas Ring", back="Bleating Mantle",}
	
	sets.ws.acc["Requiescat"]=set_combine(sets.ws.dmg["Requiescat"], {head="Gavialis Helm", back="Letalis Mantle", left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Mars's Ring",})
	--Sword WS
	
	--Club WS
	
	sets.ws.dmg["Shining Strike"]=sets.precast.ws.magicws
	
	sets.ws.acc["Shining Strike"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Seraph Strike"]=sets.precast.ws.magicws
	
	sets.ws.acc["Seraph Strike"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Brainshaker"]={ammo="Ginsen", head={ name="Otomi Helm", augments={'Haste+2','"Snapshot"+2','STR+8',}}, body="Phorcys Korazin", neck="Asperity Necklace", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.acc["Brainshaker"]=set_combine(sets.ws.dmg["Brainshaker"], {head="Gavialis Helm", neck="Subtlety Spec.", legs=dalegs, back="Letalis Mantle", left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Mars's Ring",})
	
	sets.ws.dmg["Starlight"]=sets.precast.ws.magicws
	
	sets.ws.acc["Starlight"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Moonlight"]=sets.precast.ws.magicws
	
	sets.ws.acc["Moonlight"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Skullbreaker"]={ammo="Ginsen", head={ name="Otomi Helm", augments={'Haste+2','"Snapshot"+2','STR+8',}}, body="Phorcys Korazin", neck="Fotia Gorget", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.acc["Skullbreaker"]=set_combine(sets.ws.dmg["Skullbreaker"], {head="Gavialis Helm", body="Mes. Haubergeon", legs=dalegs, back="Letalis Mantle", left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Mars's Ring",})
	
	sets.ws.dmg["True Strike"]={ammo="Ginsen", head={ name="Otomi Helm", augments={'Haste+2','"Snapshot"+2','STR+8',}}, body="Phorcys Korazin", neck="Fotia Gorget", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.acc["True Strike"]=set_combine(sets.ws.dmg["True Strike"], {head="Gavialis Helm", legs=dalegs, back="Letalis Mantle", left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Mars's Ring",})
	
	sets.ws.dmg["Judgement"]=sets.ws.dmg["True Strike"]
	
	sets.ws.acc["Judgement"]=sets.ws.acc["True Strike"]
	
	sets.ws.dmg["Black Halo"]=set_combine(sets.ws.dmg["Requiescat"], {neck="Fotia Gorget",})
	
	sets.ws.acc["Black Halo"]=set_combine(sets.ws.dmg["Black Halo"], {head="Gavialis Helm", legs=dalegs, back="Letalis Mantle", left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Mars's Ring",})
	
	sets.ws.dmg["Flash Nova"]=sets.precast.ws.magicws
	
	sets.ws.acc["Flash Nova"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Realmrazer"]=set_combine(sets.ws.dmg["Requiescat"], {neck="Fotia Gorget",})
	
	sets.ws.acc["Realmrazer"]=set_combine(sets.ws.dmg["Realmrazer"], {head="Gavialis Helm", legs=dalegs, back="Letalis Mantle", left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Mars's Ring",})
	--Club WS
	
	--Great Sword WS
	sets.ws.dmg["Hard Slash"]={ammo="Ginsen", head={ name="Otomi Helm", augments={'Haste+2','"Snapshot"+2','STR+8',}}, body="Mes. Haubergeon", neck="Asperity Necklace", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.acc["Hard Slash"]=set_combine(sets.ws.dmg["Hard Slash"], {head="Yaoyotl Helm", neck="Subtlety Spec.", legs=dalegs, back="Letalis Mantle", left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Mars's Ring",})
	
	sets.ws.dmg["Power Slash"]={ammo="Ginsen", head={ name="Otomi Helm", augments={'Haste+2','"Snapshot"+2','STR+8',}}, body="Mes. Haubergeon", neck="Fotia Gorget", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.acc["Power Slash"]=set_combine(sets.ws.dmg["Power Slash"], {head="Yaoyotl Helm", legs=dalegs, back="Letalis Mantle", left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Mars's Ring",})
	
	sets.ws.dmg["Frostbite"]=sets.precast.ws.magicws
	
	sets.ws.acc["Frostbite"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Freezebite"]=sets.precast.ws.magicws
	
	sets.ws.acc["Freezebite"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Shockwave"]={ammo="Ginsen", head={ name="Otomi Helm", augments={'Haste+2','"Snapshot"+2','STR+8',}}, body="Mes. Haubergeon", neck="Asperity Necklace", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.acc["Shockwave"]=set_combine(sets.ws.dmg["Shockwave"], {head="Yaoyotl Helm", neck="Subtlety Spec.", legs=dalegs, back="Letalis Mantle", left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Mars's Ring",})
	
	sets.ws.dmg["Crescent Moon"]={ammo="Ginsen", head={ name="Otomi Helm", augments={'Haste+2','"Snapshot"+2','STR+8',}}, body="Mes. Haubergeon", neck="Asperity Necklace", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.acc["Crescent Moon"]=set_combine(sets.ws.dmg["Crescent Moon"], {head="Yaoyotl Helm", neck="Subtlety Spec.", legs=dalegs, back="Letalis Mantle", left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Mars's Ring",})
	
	sets.ws.dmg["Sickle Moon"]={ammo="Ginsen", head={ name="Otomi Helm", augments={'Haste+2','"Snapshot"+2','STR+8',}}, body="Mes. Haubergeon", neck="Asperity Necklace", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.acc["Sickle Moon"]=set_combine(sets.ws.dmg["Sickle Moon"], {head="Yaoyotl Helm", neck="Subtlety Spec.", legs=dalegs, back="Letalis Mantle", left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Mars's Ring",})
	
	sets.ws.dmg["Spinning Slash"]={ammo="Ginsen", head={ name="Otomi Helm", augments={'Haste+2','"Snapshot"+2','STR+8',}}, body="Mes. Haubergeon", neck="Fotia Gorget", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.acc["Spinning Slash"]=set_combine(sets.ws.dmg["Spinning Slash"], {head="Yaoyotl Helm", legs=dalegs, back="Letalis Mantle", left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Mars's Ring",})
	
	sets.ws.dmg["Ground Strike"]={ammo="Ginsen", head={ name="Otomi Helm", augments={'Haste+2','"Snapshot"+2','STR+8',}}, body="Mes. Haubergeon", neck="Fotia Gorget", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.acc["Ground Strike"]=set_combine(sets.ws.dmg["Ground Strike"], {head="Yaoyotl Helm", legs=dalegs, back="Letalis Mantle", left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Mars's Ring",})
	
	sets.ws.dmg["Herculean Slash"]=sets.precast.ws.magicws
	
	sets.ws.acc["Herculean Slash"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Torcleaver"]={ammo="Ginsen", head={ name="Otomi Helm", augments={'Haste+2','"Snapshot"+2','STR+8',}}, body="Mes. Haubergeon", neck="Fotia Gorget", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Terrasoul Ring", right_ring="Terrasoul Ring", back="Buquwik Cape",}
	
	sets.ws.acc["Torcleaver"]=set_combine(sets.ws.dmg["Torcleaver"], {head="Yaoyotl Helm", legs=dalegs, back="Letalis Mantle", left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Mars's Ring",})
	
	sets.ws.dmg["Resolution"]={ammo="Ginsen", head={ name="Otomi Helm", augments={'Haste+2','"Snapshot"+2','STR+8',}}, body="Mes. Haubergeon", neck="Fotia Gorget", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.acc["Resolution"]=set_combine(sets.ws.dmg["Resolution"], {head="Yaoyotl Helm", legs=dalegs, back="Letalis Mantle", left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Mars's Ring",})
	--Great Sword WS
-- ws sets

-- midcast sets	
	sets.midcast.cure= {ammo="Iron Gobbet", head=curehead, body={ name="Jumalik Mail", augments={'HP+45','Attack+14','Enmity+8','"Refresh"+1',}}, 
	hands="Macabre Gaunt. +1", legs=curelegs, feet=curefeet, neck="Phalaina Locket", waist="Goading Belt",
    left_ear="Nourish. Earring +1", right_ear="Mendi. Earring", left_ring="Apeile Ring +1", right_ring="Eihwaz Ring",
    back="Fierabras's Mantle",}
	
	sets.midcast.selfcure= set_combine(sets.midcast.cure, {ammo="Iron Gobbet", head="Shabti Armet", --body="Chev. Cuirass +1",
	left_ring="Vocane Ring", right_ring="Kunaji Ring",})
	
	sets.midcast.flash= {ammo="Incantor Stone", head="Cizin Helm +1", body="Cab. Surcoat +1", hands="Rev. Gauntlets +1",
    legs="Rev. Breeches +1", feet="Chev. Sabatons +1", neck="Warder's Charm", waist="Goading Belt",
    left_ear="Loquac. Earring", right_ear="Cryptic Earring", left_ring="Apeile Ring +1", right_ring="Eihwaz Ring",
    back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},}
	
	sets.midcast.utsu= set_combine(sets.midcast.flash, {back="Boxer's Mantle", feet="Rev. Leggings +1",})
	
	sets.midcast.enlight= {ammo="Incantor Stone", head={ name="Jumalik Helm", augments={'MND+9','"Mag.Atk.Bns."+13','Magic burst mdg.+9%',}}, 
	body="Rev. Surcoat +1", hands="Eschite Gauntlets", legs=wsdmglegs, feet="Chev. Sabatons +1", neck="Warder's Charm", waist="Goading Belt", 
	left_ear="Etiolation Earring", right_ear="Loquac. Earring", left_ring="Globidonta Ring", right_ring="Defending Ring", back="Boxer's Mantle",}
	
	sets.midcast.enhancing= {ammo="Incantor Stone", head=curehead, body="Shab. Cuirass +1", hands="Souv. Handschuhs",
    legs=curelegs, feet=curefeet, neck="Colossus's Torque", waist="Olympus Sash", right_ear="Augment. Earring",
    left_ear="Andoaa Earring", left_ring="Portus Annulet", right_ring="Defending Ring", back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},}
	
	sets.midcast.proshell= set_combine(sets.midcast.enhancing, {right_ring="Sheltered Ring"})
-- midcast sets
	
-- aftercast sets
	sets.aftercast.aftermath.lowacc={ammo="Ginsen", neck="Asperity Necklace", waist="Windbuffet Belt +1", left_ear="Tripudio Earring",
	head={ name="Otomi Helm", augments={'Haste+2','"Snapshot"+2','STR+8',}}, back="Bleating Mantle",
	body=stpbody, right_ring="Rajas Ring", hands=stphands, right_ear="Brutal Earring",
	legs=stplegs, feet=stpfeet, left_ring="Petrov Ring",}
	
	sets.aftercast.aftermath.medacc=set_combine(sets.aftercast.aftermath.lowacc, {waist="Anguinus Belt", back="Letalis Mantle"})
	
	sets.aftercast.aftermath.highacc=set_combine(sets.aftercast.aftermath.medacc, {right_ear="Zennaroi Earring", neck="Subtlety Spec.", waist="Olseni Belt", back="Letalis Mantle"})
	
	sets.aftercast.sword.lowacc= {ammo="Ginsen", head={ name="Otomi Helm", augments={'Haste+2','"Snapshot"+2','STR+8',}},
	body=dabody, legs=dalegs, hands="Eschite Gauntlets", waist="Windbuffet Belt +1", feet=dafeet, neck="Asperity Necklace", 
	left_ring="Petrov Ring", left_ear="Trux Earring", right_ear="Brutal Earring", right_ring="Rajas Ring", back="Bleating Mantle",}
	
	sets.aftercast.sword.medacc= {ammo="Ginsen", head={ name="Otomi Helm", augments={'Haste+2','"Snapshot"+2','STR+8',}}, 
	legs=dalegs, body="Rav. Breastplate", hands="Eschite Gauntlets", feet=dafeet, neck="Subtlety Spec.", waist="Windbuffet Belt +1", 
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Patricius Ring", right_ring="Rajas Ring", back="Bleating Mantle",}
		
	sets.aftercast.sword.highacc= {ammo="Ginsen", head={ name="Otomi Helm", augments={'Haste+2','"Snapshot"+2','STR+8',}}, 
	body="Mes. Haubergeon", hands="Eschite Gauntlets", legs=dalegs, left_ear="Zennaroi Earring", feet=dafeet, neck="Subtlety Spec.",
	waist="Anguinus Belt", right_ear="Brutal Earring", left_ring="Patricius Ring", right_ring="Mars's Ring", back="Letalis Mantle",}

	sets.aftercast.hybrid= {ammo="Hasty Pinion +1", head="Rev. Coronet +1", body="Cab. Surcoat +1", 
	hands="Chev. Gauntlets +1", legs="Chev. Cuisses +1", feet="Rev. Leggings +1",}
	
	sets.aftercast.hybrid.lowacc= set_combine(sets.aftercast.hybrid, {neck="Twilight Torque", waist="Nierenschutz",
	left_ear="Ethereal Earring", right_ear="Brutal Earring", left_ring="Vocane Ring", right_ring="Defending Ring",
	back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},})
	
	sets.aftercast.hybrid.medacc= set_combine(sets.aftercast.hybrid.lowacc, {left_ring="Patricius Ring", 
	right_ring="Rajas Ring",})
	
	sets.aftercast.hybrid.highacc= set_combine(sets.aftercast.hybrid.medacc, {head="Ighwa Cap", neck="Subtlety Spec.", 
	waist="Anguinus Belt",back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},})
	
	sets.aftercast.absorbmode={head="Chev. Armet +1", body="Chev. Cuirass +1", hands="Chev. Gauntlets +1", legs="Chev. Cuisses +1", 
	feet="Chev. Sabatons +1", left_ear="Ethereal Earring", right_ear="Brutal Earring", neck="Warder's Charm",}
	
	sets.aftercast.absorbmode.lowacc=set_combine(sets.aftercast.absorbmode, {ammo="Vanir Battery", left_ring="Patricius Ring",
	right_ring="Defending Ring", waist="Windbuffet Belt +1", back="Bleating Mantle",})
	
	sets.aftercast.absorbmode.medacc=set_combine(sets.aftercast.absorbmode.lowacc, {neck="Subtlety Spec.", Waist="Anguinus Belt", right_ring="Rajas Ring",})
	
	sets.aftercast.absorbmode.highacc=set_combine(sets.aftercast.absorbmode.medacc, {ammo="Ginsen", neck="Subtlety Spec.", waist="Olseni Belt", back="Letalis Mantle", right_ring="Mars's Ring",})
	
	sets.aftercast.pdtengaged= {ammo="Hasty Pinion +1", head="Ighwa Cap", body={ name="Cab. Surcoat +1", augments={'Enhances "Fealty" effect',}},
	hands="Umuthi Gloves", legs=dtlegs, feet={ name="Xaddi Boots", augments={'HP+45','Accuracy+15','Phys. dmg. taken -3',}},
	neck="Twilight Torque", waist="Flume Belt", left_ear="Ethereal Earring", right_ear="Zennaroi Earring", left_ring="Vocane Ring",
	right_ring="Defending Ring", back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},}
	
	sets.aftercast.pdt={ammo="Iron Gobbet", head={ name="Souveran Schaller", augments={'HP+80','VIT+10','Phys. dmg. taken -3',}},
	body={ name="Cab. Surcoat +1", augments={'Enhances "Fealty" effect',}}, legs="Chev. Cuisses +1", feet="Rev. Leggings +1",
	hands={ name="Souv. Handschuhs", augments={'HP+50','Shield skill +10','Phys. dmg. taken -3',}}, neck="Twilight Torque",
	waist="Flume Belt", left_ear="Ethereal Earring", right_ear="Sanare Earring", left_ring="Vocane Ring", right_ring="Defending Ring",
	back="Mollusca Mantle",}
	
	sets.aftercast.mdt= {ammo="Vanir Battery", head="Rev. Coronet +1", body="Cab. Surcoat +1", hands="Rev. Gauntlets +1",
	legs="Chev. Cuisses +1", feet="Cab. Leggings +1", neck="Twilight Torque", waist="Creed Baudrier",
	left_ring="Shadow Ring", left_ear="Ethereal Earring", right_ear="Sanare Earring", right_ring="Defending Ring",
	back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},}
	
	sets.aftercast.mdtengaged=sets.aftercast.mdt
	
	sets.aftercast.mdtshellvengaged={ammo="Vanir Battery", head={ name="Souveran Schaller", augments={'HP+80','VIT+10','Phys. dmg. taken -3',}}, body="Chev. Cuirass +1",
	hands="Rev. Gauntlets +1", legs="Chev. Cuisses +1", feet={ name="Cab. Leggings +1", augments={'Enhances "Guardian" effect',}},
	neck="Twilight Torque", waist="Creed Baudrier", left_ear="Ethereal Earring", right_ear="Sanare Earring", left_ring="Shadow Ring",
	right_ring="Defending Ring", back="Engulfer Cape +1",}
	
	sets.aftercast.mdtshellv={ammo="Vanir Battery", head={ name="Souveran Schaller", augments={'HP+80','VIT+10','Phys. dmg. taken -3',}}, body="Chev. Cuirass +1",
	hands="Rev. Gauntlets +1", legs="Chev. Cuisses +1", feet={ name="Cab. Leggings +1", augments={'Enhances "Guardian" effect',}},
	neck="Twilight Torque", waist="Creed Baudrier", left_ear="Ethereal Earring", right_ear="Sanare Earring", left_ring="Shadow Ring",
	right_ring="Defending Ring", back="Engulfer Cape +1",}
	
	sets.aftercast.dt={ammo="Hasty Pinion +1", head="Loess Barbuta +1", body="Chev. Cuirass +1", hands=dthands,
	legs=dtlegs, feet=dtfeet, neck="Twilight Torque", waist="Nierenschutz", left_ear="Ethereal Earring",
	right_ear="Zennaroi Earring", left_ring="Vocane Ring", right_ring="Defending Ring", back="Mollusca Mantle",}
	
	sets.aftercast.dtengaged=set_combine(sets.aftercast.dt,{head=dthead, body="Cab. Surcoat +1",})
	
	sets.aftercast.idle= {ammo="Vanir Battery", head="Baghere Salade", body={ name="Jumalik Mail", augments={'HP+45','Attack+14','Enmity+8','"Refresh"+1',}}, hands=dthands,
    legs={ name="Carmine Cuisses", augments={'Accuracy+10','DEX+10','MND+15',}}, feet=dtfeet, neck="Creed Collar", waist="Nierenschutz",
    left_ear="Ethereal Earring", right_ear="Sanare Earring", left_ring="Shadow Ring", right_ring="Sheltered Ring",
    back="Shadow Mantle",}
	
	sets.aftercast.refresh= set_combine(sets.aftercast.idle, {head="Wivre Hairpin", waist="Fucho-No-Obi",})
	
	sets.aftercast.pdtkite= set_combine(sets.aftercast.pdt, {back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},  legs={ name="Carmine Cuisses", augments={'Accuracy+10','DEX+10','MND+15',}},})
	
	sets.aftercast.mdtkite= set_combine(sets.aftercast.mdt, {back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},  legs={ name="Carmine Cuisses", augments={'Accuracy+10','DEX+10','MND+15',}},})
	
	sets.aftercast.dtkite= set_combine(sets.aftercast.dt, {back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},  legs={ name="Carmine Cuisses", augments={'Accuracy+10','DEX+10','MND+15',}},})
-- aftercast sets
end

function precast(spell)	
	if spell.prefix ==  '/jobability' then
		if PLD_JA:contains(spell.english) then
			equip(sets.precast.ja[spell.english])
		elseif spell.english:contains('Curing Waltz') then
			equip(sets.precast.ja.cwaltz)
		else
			equip(sets.precast.ja)
		end
	elseif spell.prefix== '/magic' or '/ninjutsu' then
		if spell.english:contains('Cure','Cura') then
			equip(sets.precast.cure)
		else
			equip(sets.precast.fc)
		end
	end
	if spell.prefix == '/weaponskill' then
		if WSMode=="dmg" then
			equip(sets.ws.dmg[spell.english])			
		else
			equip(sets.ws.acc[spell.english])			
		end
		if is_sc_element_today(spell) and spell.english~="Atonement" then
			equip(sets.wsdaybonus)
		end
		if player.tp>999 and player.tp<3000 then
			if phys_ws:contains(spell.english) then
				if WSMode=="dmg" then
					equip(sets.moonshadephysicaldamage)
				elseif WSMode=="acc" then
					equip(sets.moonshadephysicalaccuracy)
				end
			else
				equip(sets.moonshademagic)
			end
		end
	end
	equip(sets[swordtype])
	equip(sets[shieldtype])
end

function midcast(spell)
	if spell.english== 'Utsusemi: Ichi' and buffactive['Copy Image'] then
		send_command('pause 1.9;cancel Copy Image*')
	end
	if cure:contains(spell.english) then
		if spell.target.type== 'SELF' then			
			equip(sets.midcast.selfcure)				
		else
			equip(sets.midcast.cure)				
		end
	elseif spell.skill== 'Divine Magic' then
		if spell.english== 'Enlight' or spell.english=='Enlight II' then		
			equip(sets.midcast.enlight)			
		else
			equip(sets.midcast.flash)
		end
	elseif spell.skill== 'Enhancing Magic' then
		if spell.english:find('Pro') or spell.english:find('Shel') then
			equip(sets.midcast.proshell)			
		else
			equip(sets.midcast.enhancing)			
		end
	elseif spell.skill== 'Ninjutsu' then
		if utsu:contains(spell.english) then
			equip(sets.midcast.utsu)
		else
			equip(sets.midcast.flash)
		end
	elseif spell.skill=="Blue Magic" then
		equip(sets.midcast.flash)
	elseif spell.skill=="Elemental Magic" then
		equip(sets.midcast.flash)
	elseif spell.skill=="Enfeebling Magic" then
		equip(sets.midcast.flash)
	elseif spell.english:contains('Raise') then
		equip(sets.midcast.flash)
	end
	if spell.english=="Souleater" then
		send_command('pause 1;cancel Souleater')
	end
	if spell.english=="Last Resort" then
		send_command('pause 1;cancel Last Resort')
	end
	equip(sets[swordtype])
	equip(sets[shieldtype])
end

function aftercast(spell)	
	if spell.english=="Atonement" then
		if TPSet=="dd"then
			windower.send_command('input /echo Atonement just used, checking for AM3;wait 1;gsupdate;input /echo tp set updated')
		end
	end
	status_change(player.status)
end

function status_change(new,old)
	if new == 'Engaged' then
		if TPSet=="dd" then
			if AM_ON_OR_OFF=="on" then 
				if buffactive["Aftermath: Lv.3"] then
					equip(sets.aftercast.aftermath[Acc])
				else
					equip(sets.aftercast.sword[Acc])
				end
			elseif AM_ON_OR_OFF~="on" then
				equip(sets.aftercast.sword[Acc])
			end			
		elseif TPSet=="absorb" then
			equip(sets.aftercast.absorbmode[Acc])
		elseif TPSet=="hybrid" then
			equip(sets.aftercast.hybrid[Acc])
		elseif TPSet=="pdt" then
			equip(sets.aftercast.pdtengaged)
		elseif TPSet=="mdt" then
			if buffactive["Shell V"] then
				equip(sets.aftercast.mdtshellvengaged)
			elseif not buffactive["Shell V"] then
				equip(sets.aftercast.mdtengaged)
			end
		elseif TPSet=="dt" then
			equip(sets.aftercast.dtengaged)
		end		
	elseif new~="engaged" then
		if IdleMode=="mdt" then
			if buffactive["Shell V"] then
				equip(sets.aftercast.mdtshellv)
			elseif not buffactive["Shell V"] then
				equip(sets.aftercast.mdt)
			end
		else
			equip(sets.aftercast[IdleMode])
		end
	end	
	equip(sets[swordtype])
	equip(sets[shieldtype])
	send_command('pf')
end		

function self_command(command)
	
	-- weaponry variable commands rule start
	if command == 'ochain' then
		if shieldtype~="Ochain" then
			shieldtype="Ochain"
			equip(sets.Ochain)
			add_to_chat(206, 'OCHAIN SELECTED')
			--send_command('text pdtvariable text "OCHAIN"')
			windower.prim.set_texture('SHIELD_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/Ochain.png')
			windower.prim.set_size('SHIELD_SET',200,55)
		elseif shieldtype=="Ochain" then
			status_change(player.status)
			add_to_chat(206, 'OCHAIN ALREADY SET, REFRESHING EQUIPMENT.')
		end
	elseif command == 'aegis' then
		if shieldtype~="Aegis" then
			shieldtype="Aegis"
			equip(sets.Aegis)
			add_to_chat(206, 'AEGIS SELECTED')
			--send_command('text pdtvariable text "AEGIS"')
			windower.prim.set_texture('SHIELD_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/Aegis.png')
			windower.prim.set_size('SHIELD_SET',200,55)
		elseif shieldtype=="Aegis" then
			status_change(player.status)
			add_to_chat(206, 'AEGIS ALREADY SET, REFRESHING EQUIPMENT.')
		end
	end
	-- weaponry variable commands rule end
	
	-- accuracy variable commands rule start
	if command == 'lowacc' then
		Acc="lowacc"
		add_to_chat(206, 'Low Accuracy Mode')
		--send_command('text idlevariable text "LOW-ACC"')
		send_command('alias tp gs equip sets.aftercast.sword.lowacc')
		windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/lowacc.png')
		windower.prim.set_size('ACC_SET',200,30)
		if TPSet=="hybrid" then
			send_command('alias hybrid gs equip sets.aftercast.hybrid.lowacc')
		elseif TPSet=="absorb" then
			send_command('alias hybrid gs equip sets.aftercast.absorbmode.lowacc')
		end
	elseif command == 'medacc' then
		Acc="medacc"
		add_to_chat(206, 'Medium Accuracy Mode')
		--send_command('text idlevariable text "MEDIUM-ACC"')
		send_command('alias tp gs equip sets.aftercast.sword.medacc')
		windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/medacc.png')
		windower.prim.set_size('ACC_SET',200,30)
		if TPSet=="hybrid" then
			send_command('alias hybrid gs equip sets.aftercast.hybrid.medacc')
		elseif TPSet=="absorb" then
			send_command('alias hybrid gs equip sets.aftercast.absorbmode.medacc')
		end
	elseif command == 'highacc' then
		Acc="highacc"
		add_to_chat(206, 'High Accuracy Mode')
		--send_command('text idlevariable text "HIGH-ACC"')
		send_command('alias tp gs equip sets.aftercast.sword.highacc')
		windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/highacc.png')
		windower.prim.set_size('ACC_SET',200,30)
		if TPSet=="hybrid" then
			send_command('alias hybrid gs equip sets.aftercast.hybrid.highacc')
		elseif TPSet=="absorb" then
			send_command('alias hybrid gs equip sets.aftercast.absorbmode.highacc')
		end
	end
	-- accuracy variable commands rule end
	
	-- engage variable commands rule start
	if command == 'dd' then
		TPSet="dd"
		add_to_chat(206, 'DD Mode')
		--send_command('text tpvariable text "DD MODE"')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/ddmode.png')
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/ddmode.wav')
		windower.prim.set_size('TP_SET',200,30)
	end
	if command == 'hybrid' then
		if TPSet~= "hybrid" then
			TPSet="hybrid"
			add_to_chat(206, 'HYBRID MODE')
			--send_command('text tpvariable text "Hybrid MODE"')
			if Acc=="lowacc" then
				send_command('alias hybrid gs equip sets.aftercast.hybrid.lowacc')
			elseif Acc=="medacc" then
				send_command('alias hybrid gs equip sets.aftercast.hybrid.medacc')
			elseif Acc=="highacc" then
				send_command('alias hybrid gs equip sets.aftercast.hybrid.highacc')
			end
			windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/hybridmode.png')
			windower.prim.set_size('TP_SET',200,30)
		else
			TPSet="absorb"
			add_to_chat(206, 'ABSORB MODE')
			--send_command('text tpvariable text "Absorb MODE"')
			if Acc=="lowacc" then
				send_command('alias hybrid gs equip sets.aftercast.absorbmode.lowacc')
			elseif Acc=="medacc" then
				send_command('alias hybrid gs equip sets.aftercast.absorbmode.medacc')
			elseif Acc=="highacc" then
				send_command('alias hybrid gs equip sets.aftercast.absorbmode.highacc')
			end
			windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/absorbmode.png')
			windower.prim.set_size('TP_SET',200,30)
		end
	end
	if command == 'pdt' then
		TPSet="pdt"
		add_to_chat(206, 'PDT MODE')
		--send_command('text tpvariable text "PDT MODE"')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/pdtmode.png')
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/dtsets.wav')
		windower.prim.set_size('TP_SET',200,30)
	end
	if command == 'mdt' then
		TPSet="mdt"
		add_to_chat(206, 'MDT MODE')
		--send_command('text tpvariable text "MDT MODE"')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/mdtmode.png')
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/dtsets.wav')
		windower.prim.set_size('TP_SET',200,30)
	end
	if command == 'dt' then
		TPSet="dt"
		add_to_chat(206, 'DT MODE')
		--send_command('text tpvariable text "DT MODE"')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/dtmode.png')
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/dtsets.wav')
		windower.prim.set_size('TP_SET',200,30)
	end
	-- engage variable commands rule end
	
	-- ws variable rule
	if command=="wsacctoggle" then
		if WSMode=="dmg" then
			WSMode="acc"
			add_to_chat(206, 'WSMODE: ACCURACY')
			--send_command('text doavariable text "WSMODE: ACC"')
			windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/acc.png')
			windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/acc.wav')
			windower.prim.set_size('WS_SET',200,30)
		else
			WSMode="dmg"
			add_to_chat(206, 'WSMODE: DAMAGE')
			--send_command('text doavariable text "WSMODE: DMG"')
			windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/dmg.png')
			windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/dmg.wav')
			windower.prim.set_size('WS_SET',200,30)
		end
	end
	-- ws variable rule
	
	-- idle variable commands rule start
	if command == 'idle' then
		if IdleMode=="idle" then
			IdleMode="refresh"
			add_to_chat(206, 'REFRESH IDLE MODE')
			--send_command('text wsvariable text "REFRESH IDLE"')
			send_command('alias idle gs equip sets.aftercast.refresh')
			windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/refreshidle.png')
			windower.prim.set_size('IDLE_SET',200,30)
			status_change(player.status)
		else
			IdleMode="idle"
			add_to_chat(206, 'STANDARD IDLE MODE')
			--send_command('text wsvariable text "STANDARD IDLE"')
			send_command('alias idle gs equip sets.aftercast.idle')
			windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/standardidle.png')
			windower.prim.set_size('IDLE_SET',200,30)
			status_change(player.status)
		end
	end
	if command == 'kitepdt' then
		IdleMode="pdtkite"
		add_to_chat(206, 'PDT KITING MODE')
		--send_command('text wsvariable text "PDT KITE"')
		send_command('alias idle gs equip sets.aftercast.pdtkite')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/pdtkite.png')
		windower.prim.set_size('IDLE_SET',200,30)
		status_change(player.status)
	end
	if command == 'kitemdt' then
		IdleMode="mdtkite"
		add_to_chat(206, 'MDT KITING MODE')
		--send_command('text wsvariable text "MDT KITE"')
		send_command('alias idle gs equip sets.aftercast.mdtkite')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/mdtkite.png')
		windower.prim.set_size('IDLE_SET',200,30)
		status_change(player.status)
	end
	if command == 'pdtidle' then
		IdleMode="pdt"
		add_to_chat(206, 'PDT IDLE MODE')
		--send_command('text wsvariable text "PDT IDLE"')
		send_command('alias idle gs equip sets.aftercast.pdt')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/pdtidle.png')
		windower.prim.set_size('IDLE_SET',200,30)
		status_change(player.status)
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/dtsets.wav')
	end
	if command == 'mdtidle' then
		IdleMode="mdt"
		add_to_chat(206, 'MDT IDLE MODE')
		--send_command('text wsvariable text "MDT IDLE"')
		send_command('alias idle gs equip sets.aftercast.mdt')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/mdtidle.png')
		windower.prim.set_size('IDLE_SET',200,30)
		status_change(player.status)
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/dtsets.wav')
	end
	if command == 'dtidle' then
		IdleMode="dt"
		add_to_chat(206, 'DT IDLE MODE')
		--send_command('text wsvariable text "DT IDLE"')
		send_command('alias idle gs equip sets.aftercast.dt')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/dtidle.png')
		status_change(player.status)
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/dtsets.wav')
	end
	if command == 'dtkite' then
		IdleMode="dtidle"
		add_to_chat(206, 'DT KITING MODE')
		--send_command('text wsvariable text "DT KITE"')
		send_command('alias idle gs equip sets.aftercast.dtkite')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/dtkite.png')
		status_change(player.status)
	end
	-- idle variable commands rule end
	
	-- gear set commands
	if command=='pdtset' then
		if player.status=="Engaged" then
			equip(sets.aftercast.pdtengaged)
			windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/dtsets.wav')
		else
			equip(sets.aftercast.pdt)
			windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/dtsets.wav')
		end
	end
	if command=='mdtset' then
		if buffactive["Shell V"] then
			if player.status=="Idle" then
				equip(sets.aftercast.mdtshellv)
				windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/dtsets.wav')
			elseif player.status=="Engaged" then
				equip(sets.aftercast.mdtshellvengaged)
				windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/dtsets.wav')
			end
		elseif not buffactive["Shell V"] then
			if player.status=="Engaged" then
				equip(sets.aftercast.mdtengaged)
				windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/dtsets.wav')
			elseif player.status=="idle" then
				equip(sets.aftercast.mdt)
				windower.play_sound(''..windower.windower_path..'addons/gearswap/data/'..player.name..'/sounds/dtsets.wav')
			end
		end
	end
	-- gear set commands
	
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
			status_change(player.status)
		else
			repulsemode="repulse"
			send_command('input /equip back "Repulse Mantle";gs disable back')
			add_to_chat(206, 'REPULSE MODE ON')
		end
	end
	if command == 'aftermath' then
		if AM_ON_OR_OFF=="on" then
			AM_ON_OR_OFF="off"
			add_to_chat(206, 'AFTERMATH SET: OFF')
		else 
			AM_ON_OR_OFF="on"
			add_to_chat(206, 'AFTERMATH SET: ON')
		end
	end
	-- special case
	if command == 'update' then
		status_change(player.status)		
	end
	if command=='help' then
		if display_help=="false" then
			display_help="true"
			windower.prim.set_visibility('TCOhelp',true)
		else
			display_help="false"
			windower.prim.set_visibility('TCOhelp',false)
		end
	end
	if command=='primfix' then
		windower.prim.set_size('TP_SET',200,30)
		windower.prim.set_size('ACC_SET',200,30)
		windower.prim.set_size('IDLE_SET',200,30)
		windower.prim.set_size('WS_SET',200,30)
		windower.prim.set_size('SHIELD_SET',200,55)
	end
end

function sub_job_change(NewSubjob,OldSubjob)
	macros_setup()
end

function macros_setup()
	if player.sub_job=="WAR" then
		send_command('input /macro book 1;input /macro set 2')
		send_command('alias cmd1 input /ja "Provoke" <stnpc>')
		send_command('alias cmd2 input /ma "Flash" <stnpc>')
		send_command('alias cmd3 input /ja "Shield Bash" <stnpc>')
		send_command('alias cmd4 input /ja "Cover" <stpt>')
		send_command('alias cmd5 input /ja "Aggressor" <me>')
		send_command('alias cmd6 input /ja "Berserk" <me>')
		send_command('alias cmd7 input /ja "Warcry" <me>')
		send_command('alias cmd8 input /ws "Flat Blade" <t>')
		send_command('alias cmd9 input /ma "Holy II" <t>')
		send_command('alias cmd10 input /ma "Holy" <t>')
		add_to_chat(206, '/WAR Keybinds active')
	elseif player.sub_job=="DRK" then
		send_command('input /macro book 1;input /macro set 1')
		send_command('alias cmd1 input /ma "Poisonga" <t>')
		send_command('alias cmd2 input /ma "Absorb-CHR" <t>')
		send_command('alias cmd3 input /ma "Absorb-STR" <t>')
		send_command('alias cmd4 input /ma "Absorb-VIT" <t>')
		send_command('alias cmd5 input /ma "Absorb-DEX" <t>')
		send_command('alias cmd6 input /ma "Absorb-AGI" <t>')
		send_command('alias cmd7 input /ma "Absorb-INT" <t>')
		send_command('alias cmd8 input /ma "Absorb-MND" <t>')
		send_command('alias cmd9 input /ma "Bind" <t>')
		send_command('alias cmd10 input /ma "Sleep" <t>')
		add_to_chat(206, '/DRK Keybinds active')
	elseif player.sub_job=="RUN" then
		send_command('input /macro book 1;input /macro set 10')
		send_command('alias cmd1 input /ja "Tenebrae" <me>')
		send_command('alias cmd2 input /ja "Lux" <me>')
		send_command('alias cmd3 input /ja "Tellus" <me>')
		send_command('alias cmd4 input /ja "Flabra" <me>')
		send_command('alias cmd5 input /ja "Ignis" <me>')
		send_command('alias cmd6 input /ja "Gelus" <me>')
		send_command('alias cmd7 input /ja "Sulpor" <me>')
		send_command('alias cmd8 input /ja "Unda" <me>')
		send_command('alias cmd9 input /ja "Lunge" <t>')
		send_command('alias cmd10 input /ja "Swipe" <t>')
		send_command('bind @9 input /ma "Aquaveil" <me>')
		add_to_chat(206, '/RUN Keybinds active')
	elseif player.sub_job=="NIN" then
		send_command('input /macro book 1;input /macro set 9')
		send_command('alias cmd1 input /ma "Holy II" <t>')
		send_command('alias cmd2 input /ma "Holy" <t>')
		send_command('alias cmd3 input /ma "Katon: Ichi" <t>')
		send_command('alias cmd4 input /ma "Hyoton: Ichi" <t>')
		send_command('alias cmd5 input /ma "Doton: Ichi" <t>')
		send_command('alias cmd6 input /ma "Raiton: Ichi" <t>')
		send_command('alias cmd7 input /ma "Huton: Ichi" <t>')
		send_command('alias cmd8 input /ma "Suiton: Ichi" <t>')
		send_command('alias cmd9 input /ma "Utsusemi: Ichi" <me>')
		send_command('alias cmd10 input /ma "Utsusemi: Ni" <me>')
		add_to_chat(206, '/NIN Keybinds active')
	elseif player.sub_job=="RDM" then
		send_command('input /macro book 1;input /macro set 8')
		send_command('alias cmd1 input /ma "Diaga" <t>')
		send_command('alias cmd2 input /ma "Dia II" <t>')
		send_command('alias cmd3 input /ma "Dispel" <t>')
		send_command('alias cmd4 input /ma "Bind" <t>')
		send_command('alias cmd5 input /ma "Blink" <me>')
		send_command('alias cmd6 input /ma "Ice Spikes" <me>')
		send_command('alias cmd7 input /ma "Blaze Spikes" <me>')
		send_command('alias cmd8 input /ma "Stone" <t>')
		send_command('alias cmd9 input /ma "Sleep II" <t>')
		send_command('alias cmd10 input /ma "Sleep" <t>')
		send_command('bind @9 input /ma "Aquaveil" <me>')
		add_to_chat(206, '/RDM Keybinds active')
	elseif player.sub_job=="BLU" then
		send_command('input /macro book 1;input /macro set 7')
		send_command('alias cmd1 input /ma "Jettatura" <t>')
		send_command('alias cmd2 input /ma "Cursed Sphere" <t>')
		send_command('alias cmd3 input /ma "Sandspin" <t>')
		send_command('alias cmd4 input /ma "Sound Blast" <t>')
		send_command('alias cmd5 input /ma "Stinking Gas" <t>')
		send_command('alias cmd6 input /ma "Grand Slam" <t>')
		send_command('alias cmd7 input /ma "Battle Dance" <t>')
		send_command('alias cmd8 input /ma "Geist Wall" <t>')
		send_command('alias cmd9 input /ma "Pollen" <me>')
		send_command('alias cmd10 input /ma "Healing Breeze" <me>')
		add_to_chat(206, '/BLU Keybinds active')
	elseif player.sub_job=="DNC" then
		send_command('input /macro book 1;input /macro set 6')
		send_command('alias cmd1 input /ja "Box Step" <t>')
		send_command('alias cmd2 input /ja "Quick Step" <t>')
		send_command('alias cmd3 input /ja "Desperate Flourish" <t>')
		send_command('alias cmd4 input /ja "Curing Waltz II" <stal>')
		send_command('alias cmd5 input /ja "Violent Flourish" <t>')
		send_command('alias cmd6 input /ja "Drain Samba II" <me>')
		send_command('alias cmd7 input /ja "Drain Samba" <me>')
		send_command('alias cmd8 input /ja "Curing Waltz" <stal>')
		send_command('alias cmd9 input /ja "Haste Samba" <me>')
		send_command('alias cmd10 input /ja "Curing Waltz III" <stal>')
	end
end