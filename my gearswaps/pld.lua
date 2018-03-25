function get_sets()
-- includes
	--include('tco-include.lua')
	include('skillchain-elements.lua')
	include('organizer-lib.lua')
	include('corrolls.lua')
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
	send_command('bind @f6 gs c resisttoggle')
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
	send_command('bind @f9 gs c lowacc')
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
	send_command('bind #e input /item "Echo Drops" <me>')
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
	--[[send_command('text main create;text main bold true;text main text "'..player.equipment.main..'";text main pos 1000 630;text main show')
	send_command('text sub create;text sub bold true;text sub text "'..player.equipment.sub..'";text sub pos 1000 650;text sub show')
	send_command('text range create;text range bold true;text range text "'..player.equipment.range..'";text range pos 1000 670;text range show')
	send_command('text ammo create;text ammo bold true;text ammo text "'..player.equipment.ammo..'";text ammo pos 1000 690;text ammo show')
	send_command('text head create;text head bold true;text head text "'..player.equipment.head..'";text head pos 1000 710;text head show')
	send_command('text neck create;text neck bold true;text neck text "'..player.equipment.neck..'";text neck pos 1000 730;text neck show')
	send_command('text left_ear create;text left_ear bold true;text left_ear text "'..player.equipment.left_ear..'";text left_ear pos 1000 750;text left_ear show')
	send_command('text right_ear create;text right_ear bold true;text right_ear text "'..player.equipment.right_ear..'";text right_ear pos 1000 770;text right_ear show')
	send_command('text body create;text body bold true;text body text "'..player.equipment.body..'";text body pos 1000 790;text body show')
	send_command('text hands create;text hands bold true;text hands text "'..player.equipment.hands..'";text hands pos 1000 810;text hands show')
	send_command('text left_ring create;text left_ring bold true;text left_ring text "'..player.equipment.left_ring..'";text left_ring pos 1000 830;text left_ring show')
	send_command('text right_ring create;text right_ring bold true;text right_ring text "'..player.equipment.right_ring..'";text right_ring pos 1000 850;text right_ring show')
	send_command('text back create;text back bold true;text back text "'..player.equipment.back..'";text back pos 1000 870;text back show')
	send_command('text waist create;text waist bold true;text waist text "'..player.equipment.waist..'";text waist pos 1000 890;text waist show')
	send_command('text legs create;text legs bold true;text legs text "'..player.equipment.legs..'";text legs pos 1000 910;text legs show')
	send_command('text feet create;text feet bold true;text feet text "'..player.equipment.feet..'";text feet pos 1000 930;text feet show')]]
	-- uncomment this to use the equip osd
	
	--send_command('text doavariable create;text doavariable bold true;text doavariable text "WSMODE:ACC";text doavariable pos 900 140')
	--send_command('text pdtvariable text "AEGIS MODE"')
	--send_command('text wsvariable text "STANDARD IDLE"')
	--send_command('text tpvariable text "Absorb MODE"')
	--send_command('text idlevariable text "HIGH-ACC"')
--text boxes

-- lists
	include('physws.lua')
	cure= S{'Cure','Cure II','Cure III','Cure IV','Curaga','Curaga II', 'Cura','Cura II'}
	utsu= S{'Utsusemi: Ichi', 'Utsusemi: Ni'}
	PLD_JA= S{'Sentinel','Rampart','Holy Circle','Divine Emblem','Fealty','Chivalry','Intervene','Invincible','Shield Bash'}
-- lists for ws and spells

--
	stphead={ name="Acro Helm", augments={'Accuracy+19 Attack+19','Haste+3%','DEX+8',}}
	stpbody={ name="Acro Surcoat", augments={'Accuracy+18 Attack+18','"Store TP"+6','Crit. hit damage +3% ',}}
	stphands={ name="Acro Gauntlets", augments={'Accuracy+20 Attack+20','"Store TP"+6','Crit. Hit Damage +3%',}}
	stplegs={ name="Acro Breeches", augments={'Accuracy+19 Attack+19','"Store TP"+6','Crit. Hit Damage +3%',}}
	stpfeet={ name="Acro Leggings", augments={'Accuracy+20 Attack+20','"Store TP"+6','Crit. Hit Damage +3%',}}
	
	dabody={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','Crit. Hit Damage +1%',}}
	dahands={ name="Acro Gauntlets", augments={'Accuracy+20 Attack+20','"Dbl.Atk."+3','Crit. Hit Damage +2%',}}
	dalegs={ name="Acro Breeches", augments={'Accuracy+18 Attack+18','"Dbl.Atk."+3','Crit. Hit Damage +2%',}}
	dafeet={ name="Acro Leggings", augments={'Accuracy+19 Attack+19','"Dbl.Atk."+3','Crit. Hit Damage +2%',}}
	
	wsdmghead={ name="Yorium Barbuta", augments={'Accuracy+17 Attack+17','Enmity+7','Weapon skill damage +3%',}}
	wsdmghands={ name="Yorium Gauntlets", augments={'Accuracy+17','Enmity+8','Weapon skill damage +3%',}}
	wsdmglegs={ name="Yorium Cuisses", augments={'Mag. Acc.+8','Enmity+10','Weapon skill damage +3%',}}
	wsdmgfeet={ name="Yorium Sabatons", augments={'Accuracy+18 Attack+18','Enmity+8','Weapon skill damage +3%',}}
			
	curehead={ name="Yorium Barbuta", augments={'"Cure" potency +4%','Phalanx +3',}}
	curebody={ name="Yorium Cuirass", augments={'Attack+19','"Cure" potency +4%','Phalanx +3',}}	
	curelegs={ name="Yorium Cuisses", augments={'"Cure" potency +3%','Phalanx +3',}}
	curefeet={ name="Yorium Sabatons", augments={'"Cure" potency +3%','Phalanx +2',}}
	
	fcbody={ name="Odyss. Chestplate", augments={'Mag. Acc.+19','"Fast Cast"+6','VIT+1','"Mag.Atk.Bns."+6',}}
	fcfeet={ name="Odyssean Greaves", augments={'Mag. Acc.+21','"Fast Cast"+6','MND+4',}}
    
	
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
	resistance="death"
	hastetype="none"
	march=0
	
	sets.hastetype= T{}
	sets.swordtype= T{}
	sets.shieldtype= T{}
	sets.Acc= T{}
	sets.IdleMode= T{}
	sets.TPSet= T{}
	sets.repulsemode= T{}
	sets.WSMode= T{}
	sets.AM_ON_OR_OFF= T{}
	sets.display_help= T{}
	sets.resistance= T{}
-- variables

-- base sets
	sets.resist={}
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
	sets.repulsemantle={back="Impassive Mantle",}
-- base sets

-- weaponry
	sets.burtgang={main="Burtgang",}
	
	sets.Ochain={sub="Ochain",}
	
	sets.Aegis={sub="Aegis",}
	
	sets.Srivatsa={sub="Srivatsa"}
	
	sets.Priwen={sub="Priwen"}
-- weaponry

-- rr set
	sets.rr={head="Twilight Helm", body="Twilight Mail",}
-- rr set	
	
-- precast sets
	sets.precast.fc= {ammo="Sapience Orb", head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},  
	hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}}, body=fcbody,
	legs="Odyssean Cuisses", feet=fcfeet, neck="Jeweled Collar", waist="Siegel Sash", right_ring="Rahab Ring",
	right_ear="Etiolation Earring", left_ear="Loquac. Earring", left_ring="Kishar Ring", back={ name="Rudianos's Mantle", augments={'"Fast Cast"+10',}},}
	
	sets.precast.cure= set_combine(sets.precast.fc, {neck="Diemer Gorget", left_ear="Nourish. Earring +1", right_ear="Mendi. Earring", body={ name="Jumalik Mail", augments={'HP+45','Attack+14','Enmity+8','"Refresh"+1',}},})
	
	sets.precast.ja= {ammo="Iron Gobbet", head="Loess Barbuta +1", body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}}, hands=wsdmghands, 
	legs=wsdmglegs, feet={ name="Eschite Greaves", augments={'HP+80','Enmity+7','Phys. dmg. taken -4',}}, neck="Unmoving Collar +1", waist="Creed Baudrier",
	left_ear="Cryptic Earring", right_ear="Trux Earring", left_ring="Apeile Ring +1", right_ring="Eihwaz Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','Enmity+10',}},}
		
	sets.precast.ja["Sentinel"]= set_combine(sets.precast.ja, {feet="Cab. Leggings +2"})
	sets.precast.ja["Rampart"]= set_combine(sets.precast.ja, {head="Cab. Coronet +1"})
	sets.precast.ja["Fealty"]= set_combine(sets.precast.ja, {body="Cab. Surcoat +1"})
	sets.precast.ja["Chivalry"]= set_combine(sets.precast.ja, {head=wsdmghead, body="Cab. Surcoat +1", hands="Cab. Gauntlets +2", left_ring="Levia. Ring", right_ring="Levia. Ring", feet=dafeet,})
	sets.precast.ja["Shield Bash"]= set_combine(sets.precast.ja, {left_ear="Knightly Earring", hands="Cab. Gauntlets +2", left_ring="Fenian Ring",})
	sets.precast.ja["Intervene"]= set_combine(sets.precast.ja, {hands="Cab. Gauntlets +2"})
	sets.precast.ja["Invincible"]= set_combine(sets.precast.ja, {legs="Cab. Breeches +1"})
	sets.precast.ja["Holy Circle"]= set_combine(sets.precast.ja, {feet="Rev. Leggings +3"})
	sets.precast.ja["Divine Emblem"]= set_combine(sets.precast.ja, {feet="Chev. Sabatons +1"})
	sets.precast.ja["Cover"]=set_combine(sets.precast.ja,{head="Rev. Coronet +3",body="Cab. Surcoat +1",})
	
	sets.precast.ja.cwaltz={ammo="Iron Gobbet", head={ name="Cab. Coronet +1", augments={'Enhances "Iron Will" effect',}},
	body={ name="Jumalik Mail", augments={'HP+45','Attack+14','Enmity+8','"Refresh"+1',}}, hands="Chev. Gauntlets +1", legs={ name="Cab. Breeches +1", augments={'Enhances "Invincible" effect',}},
	feet="Rev. Leggings +3", neck="Loricate Torque +1", waist="Goading Belt", left_ear="Cryptic Earring", right_ear="Trux Earring",
	left_ring="Vocane Ring", right_ring="Kunaji Ring", back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},}
	
	sets.precast.ws.CdC= {ammo="Jukukik Feather", head="Valorous Mask", body="Valorous Mail",
    hands="Chev. Gauntlets +1", legs=dalegs, feet=dafeet, neck="Fotia Gorget",
    waist="Fotia Belt", left_ear="Steelflash Earring", right_ear="Bladeborn Earring", 
	right_ring="Ramuh Ring +1", left_ring="Regal Ring", back="Bleating Mantle",}
	
	sets.precast.ws.Req= {ammo="Ginsen", head="Valorous Mask", body=dabody,
    hands="Chev. Gauntlets +1", legs=dalegs, feet=dafeet, neck="Fotia Gorget",
    waist="Fotia Belt", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
    right_ring="Ramuh Ring +1", left_ring="Regal Ring", back="Bleating Mantle",}
	
	sets.precast.ws.VB= {ammo="Ginsen", head="Valorous Mask", body="Valorous Mail",
    hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet, neck="Asperity Necklace",
    waist="Windbuffet Belt +1", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",
    right_ring="Ramuh Ring +1", left_ring="Regal Ring", back="Bleating Mantle",}
	
	sets.precast.ws.Atonement= set_combine(sets.precast.ja, {head=wsdmghead, neck="Fotia Gorget", body="Phorcys Korazin", hands=wsdmghands, waist="Fotia Belt", legs=wsdmglegs, feet="Sulev. Leggings +2", left_ear="Ishvara Earring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},})
	
	sets.precast.ws.Resolution= set_combine(sets.precast.ws.CdC, {left_ring="Ifrit Ring +1"})
	
	sets.precast.ws.magicws={ammo="Pemphredo Tathlum", head={ name="Jumalik Helm", augments={'MND+9','"Mag.Atk.Bns."+13','Magic burst dmg.+9%',}},
	body={ name="Carm. Scale Mail", augments={'Accuracy+10','DEX+10','MND+15',}}, left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
	hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}}, right_ear="Friomisi Earring", back="Toro Cape",
	legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}}, waist="Fotia Belt", left_ring="Acumen Ring",
	feet={ name="Founder's Greaves", augments={'VIT+9','Accuracy+14','"Mag.Atk.Bns."+13','Mag. Evasion+15',}}, neck="Fotia Gorget", right_ring="Vertigo Ring",}
	
	sets.wsdaybonus={head="Gavialis Helm",}
	
	sets.tpbonusphysicaldamage={left_ear="Moonshade Earring", right_ear="Brutal Earring"}
	sets.tpbonusphysicalaccuracy={right_ear="Moonshade Earring", left_ear="Zennaroi Earring"}
	sets.tpbonusmagical={left_ear="Moonshade Earring", right_ear="Crematio Earring"}
-- precast sets

-- ws sets
	--Sword WS
	sets.ws.dmg["Fast Blade"]=sets.precast.ws.VB
	
	sets.ws.acc["Fast Blade"]=set_combine(sets.ws.dmg["Fast Blade"], {neck="Combatant's Torque", back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, right_ring="Regal Ring", })
	
	sets.ws.dmg["Burning Blade"]=sets.precast.ws.magicws
	
	sets.ws.acc["Burning Blade"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Red Lotus Blade"]=sets.precast.ws.magicws
	
	sets.ws.acc["Red Lotus Blade"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Flat Blade"]=set_combine(sets.precast.ws.VB, {left_ring="Ifrit Ring +1", right_ring="Ifrit Ring",})
	
	sets.ws.acc["Flat Blade"]=set_combine(sets.ws.dmg["Flat Blade"], {neck="Combatant's Torque", back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, right_ring="Regal Ring", })
	
	sets.ws.dmg["Shining Blade"]=sets.precast.ws.magicws
	
	sets.ws.acc["Shining Blade"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Seraph Blade"]=sets.precast.ws.magicws
	
	sets.ws.acc["Seraph Blade"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Circle Blade"]=set_combine(sets.precast.ws.VB, {left_ring="Ifrit Ring +1", right_ring="Ifrit Ring",})
	
	sets.ws.acc["Circle Blade"]=set_combine(sets.ws.dmg["Circle Blade"], {neck="Combatant's Torque", back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, right_ring="Regal Ring", })
	
	sets.ws.dmg["Spirits Within"]=set_combine(sets.precast.ja, {body="Phorcys Korazin", waist="Fotia Belt", legs=stplegs,})
	
	sets.ws.acc["Spirits Within"]=set_combine(sets.precast.ja, {body="Phorcys Korazin", waist="Fotia Belt", legs=stplegs,})
	
	sets.ws.dmg["Vorpal Blade"]=set_combine(sets.precast.ws.VB, {waist="Fotia Belt", left_ring="Ifrit Ring +1",})
	
	sets.ws.acc["Vorpal Blade"]=set_combine(sets.ws.dmg["Vorpal Blade"], {neck="Combatant's Torque", back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, right_ring="Regal Ring", })
	
	sets.ws.dmg["Swift Blade"]=set_combine(sets.precast.ws.VB, {neck="Fotia Gorget", waist="Fotia Belt", left_ring="Ifrit Ring +1",})
	
	sets.ws.acc["Swift Blade"]=set_combine(sets.ws.dmg["Swift Blade"], {legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Regal Ring",})
	
	sets.ws.dmg["Savage Blade"]={ammo="Ginsen", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}}, neck="Fotia Gorget", left_ear="Zwazo Earring +1", right_ear="Brutal Earring",
	body="Dagon Breast.", waist="Fotia Belt", left_ring="Ifrit Ring +1", right_ring="Regal Ring",
    hands="Sulev. Gauntlets +2", legs="Sulev. Cuisses +2", feet="Lustratio Leggings", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}
	
	sets.ws.acc["Savage Blade"]=set_combine(sets.ws.dmg["Savage Blade"], {legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, right_ear="Cessance Earring", right_ring="Regal Ring",})
	
	sets.ws.dmg["Sanguine Blade"]=set_combine(sets.precast.ws.magicws, {head="Pixie Hairpin +1", left_ring="Archon Ring",})
	
	sets.ws.acc["Sanguine Blade"]=set_combine(sets.precast.ws.magicws, {left_ring="Archon Ring",})
	
	sets.ws.dmg["Chant du Cygne"]={ammo="Jukukik Feather", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}}, body="Dagon Breast.", feet="Thereoid Greaves",
	hands="Lustratio Mittens", legs={ name="Lustratio Subligar", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
	neck="Fotia Gorget", waist="Chiner's Belt +1", left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ramuh Ring +1", right_ring="Hetairoi Ring", back="Bleating Mantle",}
	
	sets.ws.acc["Chant du Cygne"]=set_combine(sets.ws.dmg["Chant du Cygne"], {legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Zennaroi Earring", right_ear="Brutal Earring", hands="Chev. Gauntlets +1", right_ring="Regal Ring",})
	
	sets.ws.dmg["Atonement"]=sets.precast.ws.Atonement
	
	sets.ws.acc["Atonement"]=sets.precast.ws.Atonement
	
	sets.ws.dmg["Requiescat"]={ammo="Ginsen", head="Carmine Mask +1", body="Carm. Scale Mail",
    hands="Carmine Fin. Ga.", legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
	feet="Carmine Greaves", neck="Fotia Gorget", waist="Fotia Belt", left_ear="Steelflash Earring", 
	right_ear="Bladeborn Earring", left_ring="Levia. Ring", right_ring="Rufescent Ring", back="Bleating Mantle",}
	
	sets.ws.acc["Requiescat"]=set_combine(sets.ws.dmg["Requiescat"], {head="Gavialis Helm", back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Regal Ring",})
	--Sword WS
	
	--Club WS
	
	--[[sets.ws.dmg["Shining Strike"]=sets.precast.ws.magicws
	
	sets.ws.acc["Shining Strike"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Seraph Strike"]=sets.precast.ws.magicws
	
	sets.ws.acc["Seraph Strike"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Brainshaker"]={ammo="Ginsen", head="Lustratio Cap", body="Phorcys Korazin", neck="Asperity Necklace", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}
	
	sets.ws.acc["Brainshaker"]=set_combine(sets.ws.dmg["Brainshaker"], {head="Gavialis Helm", neck="Combatant's Torque", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Regal Ring",})
	
	sets.ws.dmg["Starlight"]=sets.precast.ws.magicws
	
	sets.ws.acc["Starlight"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Moonlight"]=sets.precast.ws.magicws
	
	sets.ws.acc["Moonlight"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Skullbreaker"]={ammo="Ginsen", head="Lustratio Cap", body="Phorcys Korazin", neck="Fotia Gorget", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}
	
	sets.ws.acc["Skullbreaker"]=set_combine(sets.ws.dmg["Skullbreaker"], {head="Gavialis Helm", body="Valorous Mail", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Regal Ring",})
	
	sets.ws.dmg["True Strike"]={ammo="Ginsen", head="Lustratio Cap", body="Phorcys Korazin", neck="Fotia Gorget", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}
	
	sets.ws.acc["True Strike"]=set_combine(sets.ws.dmg["True Strike"], {head="Gavialis Helm", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Regal Ring",})
	
	sets.ws.dmg["Judgement"]=sets.ws.dmg["True Strike"]
	
	sets.ws.acc["Judgement"]=sets.ws.acc["True Strike"]
	
	sets.ws.dmg["Black Halo"]=set_combine(sets.ws.dmg["Requiescat"], {neck="Fotia Gorget",})
	
	sets.ws.acc["Black Halo"]=set_combine(sets.ws.dmg["Black Halo"], {head="Gavialis Helm", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Regal Ring",})
	
	sets.ws.dmg["Flash Nova"]=sets.precast.ws.magicws
	
	sets.ws.acc["Flash Nova"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Realmrazer"]=set_combine(sets.ws.dmg["Requiescat"], {neck="Fotia Gorget",})
	
	sets.ws.acc["Realmrazer"]=set_combine(sets.ws.dmg["Realmrazer"], {head="Gavialis Helm", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Regal Ring",})
	--Club WS
	
	--Great Sword WS
	sets.ws.dmg["Hard Slash"]={ammo="Ginsen", head="Lustratio Cap", body="Valorous Mail", neck="Asperity Necklace", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}
	
	sets.ws.acc["Hard Slash"]=set_combine(sets.ws.dmg["Hard Slash"], {head="Valorous Mask", neck="Combatant's Torque", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Regal Ring",})
	
	sets.ws.dmg["Power Slash"]={ammo="Ginsen", head="Lustratio Cap", body="Valorous Mail", neck="Fotia Gorget", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}
	
	sets.ws.acc["Power Slash"]=set_combine(sets.ws.dmg["Power Slash"], {head="Valorous Mask", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Regal Ring",})
	
	sets.ws.dmg["Frostbite"]=sets.precast.ws.magicws
	
	sets.ws.acc["Frostbite"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Freezebite"]=sets.precast.ws.magicws
	
	sets.ws.acc["Freezebite"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Shockwave"]={ammo="Ginsen", head="Lustratio Cap", body="Valorous Mail", neck="Asperity Necklace", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}
	
	sets.ws.acc["Shockwave"]=set_combine(sets.ws.dmg["Shockwave"], {head="Valorous Mask", neck="Combatant's Torque", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Regal Ring",})
	
	sets.ws.dmg["Crescent Moon"]={ammo="Ginsen", head="Lustratio Cap", body="Valorous Mail", neck="Asperity Necklace", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}
	
	sets.ws.acc["Crescent Moon"]=set_combine(sets.ws.dmg["Crescent Moon"], {head="Valorous Mask", neck="Combatant's Torque", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Regal Ring",})
	
	sets.ws.dmg["Sickle Moon"]={ammo="Ginsen", head="Lustratio Cap", body="Valorous Mail", neck="Asperity Necklace", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}
	
	sets.ws.acc["Sickle Moon"]=set_combine(sets.ws.dmg["Sickle Moon"], {head="Valorous Mask", neck="Combatant's Torque", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Regal Ring",})
	
	sets.ws.dmg["Spinning Slash"]={ammo="Ginsen", head="Lustratio Cap", body="Valorous Mail", neck="Fotia Gorget", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}
	
	sets.ws.acc["Spinning Slash"]=set_combine(sets.ws.dmg["Spinning Slash"], {head="Valorous Mask", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Regal Ring",})
	
	sets.ws.dmg["Ground Strike"]={ammo="Ginsen", head="Lustratio Cap", body="Valorous Mail", neck="Fotia Gorget", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}
	
	sets.ws.acc["Ground Strike"]=set_combine(sets.ws.dmg["Ground Strike"], {head="Valorous Mask", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Regal Ring",})
	
	sets.ws.dmg["Herculean Slash"]=sets.precast.ws.magicws
	
	sets.ws.acc["Herculean Slash"]=sets.precast.ws.magicws
	
	sets.ws.dmg["Torcleaver"]={ammo="Ginsen", head="Lustratio Cap", body="Valorous Mail", neck="Fotia Gorget", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Terrasoul Ring", right_ring="Terrasoul Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}
	
	sets.ws.acc["Torcleaver"]=set_combine(sets.ws.dmg["Torcleaver"], {head="Valorous Mask", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Regal Ring",})
	
	sets.ws.dmg["Resolution"]={ammo="Ginsen", head="Lustratio Cap", body="Valorous Mail", neck="Fotia Gorget", waist="Fotia Belt",
	hands="Chev. Gauntlets +1", legs="Scuff. Cosciales", feet=dafeet,
	left_ear="Steelflash Earring", right_ear="Bladeborn Earring", left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','STR+10',}},}
	
	sets.ws.acc["Resolution"]=set_combine(sets.ws.dmg["Resolution"], {head="Valorous Mask", legs=dalegs, back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Regal Ring",})
	--Great Sword WS]]--
-- ws sets

-- midcast sets	
	sets.midcast.cure= {ammo="Impatiens", head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
	body={ name="Jumalik Mail", augments={'HP+45','Attack+14','Enmity+8','"Refresh"+1',}}, hands="Macabre Gaunt. +1", right_ear="Trux Earring",
	legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}}, neck="Phalaina Locket",
	feet={ name="Odyssean Greaves", augments={'Mag. Acc.+21','"Fast Cast"+6','MND+4',}}, waist="Rumination Sash", left_ear="Nourish. Earring +1",
	left_ring="Apeile Ring +1", right_ring="Supershear Ring", back="Solemnity Cape",}
	
	sets.midcast.selfcure= {ammo="Staunch Tathlum", head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
	body={ name="Jumalik Mail", augments={'HP+45','Attack+14','Enmity+8','"Refresh"+1',}}, hands="Macabre Gaunt. +1", neck="Phalaina Locket",
	legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}}, waist="Gishdubar Sash",
	feet={ name="Odyssean Greaves", augments={'Potency of "Cure" effect received+6%','MND+4','Mag. Acc.+12','"Mag.Atk.Bns."+12',}},
	left_ear="Nourish. Earring +1", right_ear="Mendi. Earring", left_ring="Moonbeam Ring", right_ring="Eihwaz Ring", back="Fierabras's Mantle",}
	
	sets.midcast.flash= {ammo="Sapience Orb", head="Cizin Helm +1", body="Odyssean Chestplate", hands=wsdmghands,
    legs=wsdmglegs, feet=wsdmgfeet, neck="Warder's Charm +1", waist="Goading Belt",
    left_ear="Loquac. Earring", right_ear="Cryptic Earring", left_ring="Apeile Ring +1", right_ring="Eihwaz Ring",
    back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},}
	
	sets.midcast.DEflash=set_combine(sets.midcast.flash, {feet="Chev. Sabatons +1",})
	
	sets.midcast.utsu= set_combine(sets.midcast.flash, {back={ name="Rudianos's Mantle", augments={'"Fast Cast"+10',}}, feet="Rev. Leggings +3",})
	
	sets.midcast.enlight= {ammo="Sapience Orb", head={ name="Jumalik Helm", augments={'MND+9','"Mag.Atk.Bns."+13','Magic burst dmg.+9%',}}, 
	body="Rev. Surcoat +3", hands="Eschite Gauntlets", legs="Kaiser Diechlings", feet="Templar Sabatons", neck="Incanter's Torque", waist="Asklepian Belt", 
	left_ear="Beatific Earring", right_ear="Divine Earring", left_ring="Stikini Ring", right_ring="Stikini Ring", back="Altruistic Cape",}
	
	sets.midcast.enhancing= {ammo="Sapience Orb", head="Carmine Mask +1", body="Shab. Cuirass +1", hands="Regal Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}}, feet={ name="Souveran Schuhs +1", augments={'HP+65','Attack+25','Magic dmg. taken -4',}}, neck="Incanter's Torque", waist="Olympus Sash", right_ear="Augment. Earring",
    left_ear="Andoaa Earring", left_ring="Portus Annulet", right_ring="Defending Ring", back={ name="Rudianos's Mantle", augments={'"Fast Cast"+10',}},}
	
	sets.midcast["Phalanx"]={ammo="Sapience Orb", head=curehead, body=curebody, hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
    legs=curelegs, feet={ name="Souveran Schuhs +1", augments={'HP+65','Attack+25','Magic dmg. taken -4',}}, neck="Incanter's Torque", waist="Olympus Sash", right_ear="Augment. Earring",
    left_ear="Andoaa Earring", left_ring="Portus Annulet", right_ring="Defending Ring", back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},}
	
	sets.midcast["Reprisal"]={ammo="Egoist's Tathlum",
    head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
    body="Rev. Surcoat +3",
    hands="Regal Gauntlets",
    legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    feet={ name="Souveran Schuhs +1", augments={'HP+65','Attack+25','Magic dmg. taken -4',}},
    neck="Dualism Collar +1",
    waist="Oneiros Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Odnowa Earring",
    left_ring="Moonbeam Ring",
    right_ring="Moonbeam Ring",
    back="Moonbeam Cape",}
	
	sets.midcast.proshell= set_combine(sets.midcast.enhancing, {right_ring="Sheltered Ring"})
-- midcast sets
	
-- aftercast sets
	sets.aftercast.aftermath.lowacc={
	ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body={ name="Valorous Mail", augments={'Accuracy+28','"Store TP"+7','DEX+7',}},
    hands={ name="Acro Gauntlets", augments={'Accuracy+20 Attack+20','"Store TP"+6','Crit. hit damage +3%',}},
    legs={ name="Valor. Hose", augments={'Attack+27','"Store TP"+6','DEX+8','Accuracy+11',}},
    feet={ name="Valorous Greaves", augments={'Accuracy+29','"Store TP"+8','Attack+2',}},
    neck="Lissome Necklace",
    waist="Dynamic Belt +1",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Flamma Ring",
    right_ring="Petrov Ring",
    back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
	}
	
	sets.aftercast.aftermath.medacc=set_combine(sets.aftercast.aftermath.lowacc, {neck="Combatant's Torque",})
	
	sets.aftercast.aftermath.highacc=set_combine(sets.aftercast.aftermath.medacc, {right_ear="Zennaroi Earring", waist="Olseni Belt", back="Letalis Mantle"})
	
	sets.aftercast.sword.lowacc= {ammo="Focal Orb",
    head="Flam. Zucchetto +2",
    body="Dagon Breast.",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet={ name="Odyssean Greaves", augments={'"Cure" potency +4%','Mag. Acc.+10 "Mag.Atk.Bns."+10','Quadruple Attack +2','Accuracy+20 Attack+20',}},
    neck="Asperity Necklace",
    waist="Tempus Fugit",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Petrov Ring",
    right_ring="Hetairoi Ring",
    back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},}
	
	sets.aftercast.sword.medacc= set_combine(sets.aftercast.sword.lowacc, {neck="Lissome Necklace", right_ear="Telos Earring", right_ring="Flamma Ring", feet="Flam. Gambieras +2",})
		
	sets.aftercast.sword.highacc={ammo="Hasty Pinion +1", head="Sulevia's Mask +2", body="Sulevia's Plate. +2", hands="Sulev. Gauntlets +2", legs="Sulev. Cuisses +2", feet="Sulev. Leggings +2",
	neck="Combatant's Torque", waist="Tempus Fugit", left_ear="Mache Earring", right_ear="Telos Earring", left_ring="Ramuh Ring +1", right_ring="Regal Ring", back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},}
		
	sets.maxacc={ammo="Amar Cluster",
    head="Rev. Coronet +3",
    body="Dagon Breast.",
    hands="Rev. Gauntlets +3",
    legs="Rev. Breeches +3",
    feet="Rev. Leggings +3",
    neck="Combatant's Torque",
    waist="Dynamic Belt +1",
    left_ear="Mache Earring",
    right_ear="Telos Earring",
    left_ring="Ramuh Ring +1",
    right_ring="Regal Ring",
    back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},}
	
	sets.composers={hands="Composer's Mitts",}
	
	sets.testset={ammo="Paeapua",
    head={ name="Acro Helm", augments={'Accuracy+19 Attack+19','Haste+3','DEX+8',}},
    body={ name="Acro Surcoat", augments={'Accuracy+17 Attack+17','"Dbl.Atk."+3','Crit. hit damage +1%',}},
    hands={ name="Valorous Mitts", augments={'Mag. Acc.+23','STR+6','Quadruple Attack +1','Accuracy+7 Attack+7',}},
    legs={ name="Valor. Hose", augments={'"Fast Cast"+1','Pet: INT+6','Quadruple Attack +2','Accuracy+6 Attack+6','Mag. Acc.+18 "Mag.Atk.Bns."+18',}},
    feet={ name="Odyssean Greaves", augments={'"Cure" potency +4%','Mag. Acc.+10 "Mag.Atk.Bns."+10','Quadruple Attack +2','Accuracy+20 Attack+20',}},
    neck="Defiant Collar",
    waist="Windbuffet Belt +1",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Petrov Ring",
    right_ring="Hetairoi Ring",
    back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},}
	
	sets.sbmode={ammo="Iron Gobbet", head="Chev. Armet +1", body={ name="Souv. Cuirass +1", augments={'VIT+12','Attack+25','"Refresh"+3',}}, legs="Chev. Cuisses +1", neck="Combatant's Torque",
	hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}}, feet={ name="Souveran Schuhs +1", augments={'HP+65','Attack+25','Magic dmg. taken -4',}},
	waist="Flume Belt", left_ear="Ethereal Earring", right_ear="Thureous Earring", left_ring="Vocane Ring", right_ring="Defending Ring", back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','Enmity+10',}},}
	
	--[[sets.aftercast.hybrid= {ammo="Hasty Pinion +1", head="Rev. Coronet +1", body="Cab. Surcoat +1", 
	hands="Chev. Gauntlets +1", legs="Chev. Cuisses +1", feet="Rev. Leggings +3",}
	
	sets.aftercast.hybrid.lowacc= set_combine(sets.aftercast.hybrid, {neck="Loricate Torque +1", waist="Nierenschutz",
	left_ear="Ethereal Earring", right_ear="Brutal Earring", left_ring="Vocane Ring", right_ring="Defending Ring",
	back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},})
	
	sets.aftercast.hybrid.medacc= set_combine(sets.aftercast.hybrid.lowacc, {left_ring="Patricius Ring", 
	right_ring="Rajas Ring",})
	
	sets.aftercast.hybrid.highacc= set_combine(sets.aftercast.hybrid.medacc, {head=dthead, neck="Combatant's Torque", 
	waist="Grunfeld Rope",back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},})]]--
	
	sets.aftercast.absorbmode={head="Chev. Armet +1", body="Chev. Cuirass +1", hands="Chev. Gauntlets +1", legs="Chev. Cuisses +1", 
	feet="Chev. Sabatons +1", left_ear="Ethereal Earring", right_ear="Brutal Earring", neck="Warder's Charm +1",}
	
	sets.aftercast.absorbmode.lowacc=set_combine(sets.aftercast.absorbmode, {ammo="Vanir Battery", left_ring="Patricius Ring",
	right_ring="Defending Ring", waist="Windbuffet Belt +1", back="Bleating Mantle",})
	
	sets.aftercast.absorbmode.medacc=set_combine(sets.aftercast.absorbmode.lowacc, {neck="Combatant's Torque", Waist="Grunfeld Rope", right_ring="Rajas Ring",})
	
	sets.aftercast.absorbmode.highacc=set_combine(sets.aftercast.absorbmode.medacc, {ammo="Ginsen", neck="Combatant's Torque", waist="Olseni Belt", back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, right_ring="Regal Ring",})
	
	sets.aftercast.pdtengaged= {ammo="Iron Gobbet",
    head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
    body="Tartarus Platemail",
    hands="Chev. Gauntlets +1",
    legs="Chev. Cuisses +1",
    feet={ name="Souveran Schuhs +1", augments={'HP+65','Attack+25','Magic dmg. taken -4',}},
    neck="Combatant's Torque",
    waist="Flume Belt",
    left_ear="Ethereal Earring",
    right_ear="Thureous Earring",
    left_ring="Vocane Ring",
    right_ring="Defending Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','Enmity+10',}},}
	
	sets.aftercast.pdt={ammo="Iron Gobbet",
    head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
    body="Tartarus Platemail",
    hands="Chev. Gauntlets +1",
    legs="Chev. Cuisses +1",
    feet={ name="Souveran Schuhs +1", augments={'HP+65','Attack+25','Magic dmg. taken -4',}},
    neck="Combatant's Torque",
    waist="Flume Belt",
    left_ear="Ethereal Earring",
    right_ear="Thureous Earring",
    left_ring="Vocane Ring",
    right_ring="Defending Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','Enmity+10',}},}
	
	sets.aftercast.mdt= {ammo="Vanir Battery", head="Sulevia's Mask +2",
    body={ name="Cab. Surcoat +1", augments={'Enhances "Fealty" effect',}}, feet={ name="Cab. Leggings +2", augments={'Enhances "Guardian" effect',}},
	hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}}, waist="Nierenschutz", left_ear="Etiolation Earring",
	legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}}, neck="Loricate Torque +1",
	right_ear="Sanare Earring", left_ring="Shadow Ring", right_ring="Defending Ring", back="Engulfer Cape +1",}
	
	sets.aftercast.mdtengaged=sets.aftercast.mdt
	
	sets.aftercast.mdtshellvengaged={ammo="Vanir Battery", head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}}, body="Chev. Cuirass +1",
	hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}}, legs="Chev. Cuisses +1", feet={ name="Cab. Leggings +2", augments={'Enhances "Guardian" effect',}},
	neck="Loricate Torque +1", waist="Creed Baudrier", left_ear="Ethereal Earring", right_ear="Sanare Earring", left_ring="Shadow Ring",
	right_ring="Defending Ring", back="Engulfer Cape +1",}
	
	sets.aftercast.mdtshellv={ammo="Vanir Battery", head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}}, body="Chev. Cuirass +1",
	hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}}, legs="Chev. Cuisses +1", feet={ name="Cab. Leggings +2", augments={'Enhances "Guardian" effect',}},
	neck="Loricate Torque +1", waist="Creed Baudrier", left_ear="Ethereal Earring", right_ear="Sanare Earring", left_ring="Shadow Ring",
	right_ring="Defending Ring", back="Engulfer Cape +1",}
	
	sets.aftercast.dt={ammo="Staunch Tathlum", head="Sulevia's Mask +2", body="Rev. Surcoat +3", hands="Sulev. Gauntlets +2", legs="Sulev. Cuisses +2", feet="Sulev. Leggings +2",
	neck="Loricate Torque +1", waist="Nierenschutz", left_ear="Ethereal Earring", right_ear="Sanare Earring", left_ring="Shadow Ring", right_ring="Defending Ring",
    back="Shadow Mantle",}
	
	sets.aftercast.dtengaged={ammo="Amar Cluster", head="Sulevia's Mask +2", body="Rev. Surcoat +3", hands="Sulev. Gauntlets +2", legs="Sulev. Cuisses +2", feet="Sulev. Leggings +2",
	neck="Loricate Torque +1", waist="Tempus Fugit", left_ear="Ethereal Earring", right_ear="Zennaroi Earring", left_ring="Regal Ring", right_ring="Defending Ring",
    back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},}
	
	sets.aftercast.idle= {ammo="Homiliary", head="Valorous Mask", body={ name="Souv. Cuirass +1", augments={'VIT+12','Attack+25','"Refresh"+3',}}, hands="Odyssean Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}}, feet={ name="Odyssean Greaves", augments={'Pet: STR+5','STR+4','"Refresh"+1',}}, neck="Coatl Gorget +1", waist="Nierenschutz",
    left_ear="Ethereal Earring", right_ear="Infused Earring", left_ring="Paguroidea Ring", right_ring="Sheltered Ring",
    back="Shadow Mantle",}
	
	sets.aftercast.refresh= {ammo="Homiliary", head={ name="Odyssean Helm", augments={'"Mag.Atk.Bns."+8','Potency of "Cure" effect received+3%','"Refresh"+1','Accuracy+5 Attack+5',}},
	body={ name="Souv. Cuirass +1", augments={'VIT+12','Attack+25','"Refresh"+3',}}, hands={ name="Odyssean Gauntlets", augments={'Pet: Crit.hit rate +3','Attack+4','"Refresh"+1',}},
	legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}}, feet={ name="Odyssean Greaves", augments={'Pet: STR+5','STR+4','"Refresh"+1',}},
	neck="Coatl Gorget +1", waist="Fucho-no-Obi", left_ear="Ethereal Earring", right_ear="Infused Earring", left_ring="Paguroidea Ring", right_ring="Sheltered Ring",
    back="Shadow Mantle",}
	
	sets.aftercast.pdtkite= set_combine(sets.aftercast.pdt, {back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},  legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},})
	
	sets.aftercast.mdtkite= set_combine(sets.aftercast.mdt, {back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},  legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},})
	
	sets.aftercast.dtkite= set_combine(sets.aftercast.dt, {back={ name="Weard Mantle", augments={'VIT+3','DEX+1','Enmity+4','Phalanx +5',}},  legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},})
-- aftercast sets
-- special case
	sets.cursname={ring1="Purity Ring", waist="Gishdubar Sash",}
	sets.wakeup={neck="Vim Torque"}
	sets.resist.death={ammo="Staunch Tathlum", head="Arke Zuchetto", body="Arke Corazza", hands="Arke Manopolas", legs="Arke Cosciales", feet="Arke Gambieras",
	neck="Loricate Torque +1", waist="Nierenschutz", left_ear="Ethereal Earring", right_ear="Hearty Earring", left_ring="Warden's Ring", right_ring="Eihwaz Ring",
	back="Solemnity Cape",}
	sets.resist.charm=set_combine(sets.resist.death,{neck="Unmoving Collar +1", back="Solemnity Cape",})
-- special case
end

do
windower.prim.create('TP_SET')
windower.prim.create('ACC_SET')
windower.prim.create('IDLE_SET')
windower.prim.create('WS_SET')
windower.prim.create('SHIELD_SET')

windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/absorbmode.png')
windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/highacc.png')
windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/standardidle.png')
windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/images/acc.png')
windower.prim.set_texture('SHIELD_SET',''..windower.windower_path..'addons/gearswap/data/images/Aegis.png')

windower.prim.set_size('TP_SET',200,30)
windower.prim.set_size('ACC_SET',200,30)
windower.prim.set_size('IDLE_SET',200,30)
windower.prim.set_size('WS_SET',200,30)
windower.prim.set_size('SHIELD_SET',200,55)

windower.prim.set_position('TP_SET',0.65*windower.get_windower_settings().ui_x_res,50)
windower.prim.set_position('ACC_SET',0.65*windower.get_windower_settings().ui_x_res,90)
windower.prim.set_position('IDLE_SET',0.65*windower.get_windower_settings().ui_x_res,130)
windower.prim.set_position('WS_SET',0.65*windower.get_windower_settings().ui_x_res,170)
windower.prim.set_position('SHIELD_SET',0.65*windower.get_windower_settings().ui_x_res,210)

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
windower.prim.set_texture('TCOhelp',''..windower.windower_path..'addons/gearswap/data/images/help.png')
windower.prim.set_position('TCOhelp',0.2*windower.get_windower_settings().ui_x_res,0.1*windower.get_windower_settings().y_res)
windower.prim.set_size('TCOhelp',640,480)
windower.prim.set_color('TCOhelp',150,255,255,255)
windower.prim.set_visibility('TCOhelp',false)
end

windower.register_event('hpmax change' , function(new_max_hp, old_max_hp) if player.target.name=="Onychophora" then if new_max_hp<=2244 then status_change(player.status) end end end)

windower.raw_register_event('incoming chunk', function(id,original,modified,injected,blocked)
    if id == 0x28 then
        local action = packets.parse('incoming', original)
        if action['Category'] == 4 then -- Category 4 is spell finish
			
            if player.id == action['Target 1 ID'] then
				--print(action['Param'])
                if action['Param'] == 57 then --haste
                    hastetype="Haste"
					add_to_chat(206,"hastetype:"..hastetype.."")
                elseif action['Param'] == 511 --[[haste II]] or action['Param'] == 710 --[[erratic flutter]]then
                    hastetype="Haste II"
					add_to_chat(206,"hastetype:"..hastetype.."")
				elseif action['Param'] == 845 --[[flurry]] then
					hastetype="Flurry"
					add_to_chat(206,"hastetype:"..hastetype.."")
				elseif action['Param'] == 846 --[[flurry II]] then
					hastetype="Flurry II"
					add_to_chat(206,"hastetype:"..hastetype.."")
                end				
            end
			
			for i,v in pairs(action) do
                if string.match(i, 'Target %d+ ID') then
                    if player.id == v then
                        if action['Param'] == 420 then
							march=march+1
							add_to_chat(206, "Victory March")							
						elseif action['Param'] == 419 then
							march=march+1
							add_to_chat(206, "Advancing March")
						elseif action['Param'] == 417 then
							march=march+1
							add_to_chat(206, "Honor March")
						end
					end
				end
			end
        elseif action['Category'] == 13 then -- Category 13 is Avatar TP finish
            for i,v in pairs(action) do
                if string.match(i, 'Target %d+ ID') then
                    if player.id == v then
                        if action['Param'] == 595 then -- Change 100 for whatever gets printed, then erase the print line when you get what you want
                            hastetype="Hastega"
							add_to_chat(206,"hastetype:"..hastetype.."")
						elseif action['Param'] == 602 then
							hastetype="Hastega II"
							add_to_chat(206,"hastetype:"..hastetype.."")
                        end
                    end
                end
            end
		end
    end	
end)

function effectiveHaste(equiphaste)
	local equiphaste=27
    local jahaste = 0
    local magichaste = 0

    if equiphaste > 25 then
        equiphaste = 25
    end

    --JA. Caps at 25
    if buffactive['Haste Samba'] then
        jahaste = jahaste + 5
    end
    if jahaste > 25 then
        jahaste = 25
    end

    -- Magical. Caps at 43.5
    if buffactive[33] then --Assume Haste2 since we have flutter
		if hastetype=="Haste" or hastetype=="Hastega" then
			magichaste = magichaste + 15
		elseif hastetype=="Haste II" or hastetype=="Hastega II" then
			magichaste = magichaste + 30		
		end
    end
    if buffactive.march then --12 per march as worst case, really scrub brd
        magichaste = magichaste + (15*buffactive.march)
    end
    if buffactive[580] then --Indihaste, assume Dunna/+5 at least
        magichaste = magichaste + 35
    end
    if buffactive['Mighty Guard'] then
        magichaste = magichaste + 15
    end
    if buffactive.embrava then
        magichaste = magichaste + 22
    end
    if magichaste > 43.5 then
        magichaste = 43.5
    end
    
    local totalHaste = equiphaste + jahaste + magichaste
    if totalHaste > 80 then
        totalHaste = 80
    end
	print(totalHaste)
    return totalHaste
	
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
	elseif spell.prefix== '/magic' or spell.prefix=='/ninjutsu' then
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
	--osd() -- uncomment this to use the equip osd
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
		elseif not spell.english== 'Enlight' and not spell.english=='Enlight II' then
			if buffactive["Divine Emblem"] then
				equip(sets.midcast.DEflash)
			else
				equip(sets.midcast.flash)
			end
		end
	elseif spell.skill== 'Enhancing Magic' then
		if spell.english:find('Pro') or spell.english:find('Shel') then
			equip(sets.midcast.proshell)
		elseif spell.english=="Phalanx" or spell.english=="Reprisal" then
			equip(sets.midcast[spell.english])
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
	--osd() --uncomment to use osd
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
			equip(sets.sbmode)
		elseif TPSet=="pdt" then
			equip(sets.aftercast.pdtengaged)
		elseif TPSet=="mdt" then
			if buffactive["Shell"] then
				equip(sets.aftercast.mdtshellvengaged)
			elseif not buffactive["Shell"] then
				equip(sets.aftercast.mdtengaged)
			end
		elseif TPSet=="dt" then
			equip(sets.aftercast.dtengaged)
		elseif TPSet=="maxacc" then
			equip(sets.maxacc)
		elseif TPSet=="resist" then
			equip(sets.resist[resistance])
		end		
	elseif new~="engaged" then
		if IdleMode=="mdt" then
			if buffactive["Shell"] then
				equip(sets.aftercast.mdtshellv)
			elseif not buffactive["Shell"] then
				equip(sets.aftercast.mdt)
			end
		else
			equip(sets.aftercast[IdleMode])
		end
	end	
	equip(sets[swordtype])
	equip(sets[shieldtype])
	send_command('pf')
	if new=="dead" or new=="dead engaged" then
		hastetype="none"
		march=0
	end
	--osd() --uncomment to use osd
end

function buff_change(buff,gain)
	buff = string.lower(buff)
	if buff == "sleep" and gain and player.hp > 200 and player.status == "Engaged" then -- Equip Vim Torque When You Are Asleep & Have 200+ HP --
        equip(sets.wakeup)
    else
        if not midaction() then
            status_change(player.status)
        end
    end
	if buff == "doomed" and gain then
		equip(sets.cursname)
		disable('ring1','waist')
	elseif not gain and not player.status == "Dead" and not player.status == "Engaged Dead" then
		enable('ring1','waist')
		if not midaction() then
			status_change(player.status)
		end
	end
	if (buff == "haste" or buff == "flurry") and not gain then
		hastetype="none"
		add_to_chat(206, "hastetype:"..hastetype.."")
	end
	if buff == "march" and not gain then
		march=march -1
		add_to_chat(206, "lost a march")
	end
	--osd() --uncomment to use osd
end

function self_command(command)
	
	-- weaponry variable commands rule start
	if command == 'ochain' then
		if shieldtype~="Ochain" then
			shieldtype="Ochain"
			equip(sets.Ochain)
			add_to_chat(206, 'OCHAIN SELECTED')
			--send_command('text pdtvariable text "OCHAIN"')
			windower.prim.set_texture('SHIELD_SET',''..windower.windower_path..'addons/gearswap/data/images/Ochain.png')
			windower.prim.set_size('SHIELD_SET',200,55)
			send_command('pf')
		elseif shieldtype=="Ochain" then
			status_change(player.status)
			add_to_chat(206, 'OCHAIN ALREADY SET, REFRESHING EQUIPMENT.')
			send_command('pf')
		end
	elseif command == 'aegis' then
		if shieldtype~="Aegis" then
			shieldtype="Aegis"
			equip(sets.Aegis)
			add_to_chat(206, 'AEGIS SELECTED')
			--send_command('text pdtvariable text "AEGIS"')
			windower.prim.set_texture('SHIELD_SET',''..windower.windower_path..'addons/gearswap/data/images/Aegis.png')
			windower.prim.set_size('SHIELD_SET',200,55)
		elseif shieldtype=="Aegis" then
			status_change(player.status)
			add_to_chat(206, 'AEGIS ALREADY SET, REFRESHING EQUIPMENT.')
			send_command('pf')
		end
	end
	-- weaponry variable commands rule end
	
	-- accuracy variable commands rule start
	if command == 'lowacc' then
		Acc="lowacc"
		add_to_chat(206, 'Low Accuracy Mode')
		--send_command('text idlevariable text "LOW-ACC"')
		send_command('alias tp gs equip sets.aftercast.sword.lowacc')
		windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/lowacc.png')
		windower.prim.set_size('ACC_SET',200,30)
		--[[if TPSet=="hybrid" then
			send_command('alias hybrid gs equip sets.aftercast.hybrid.lowacc')
		elseif TPSet=="absorb" then ]]--
			send_command('alias hybrid gs equip sets.aftercast.absorbmode.lowacc')
		--end
	elseif command == 'medacc' then
		Acc="medacc"
		add_to_chat(206, 'Medium Accuracy Mode')
		--send_command('text idlevariable text "MEDIUM-ACC"')
		send_command('alias tp gs equip sets.aftercast.sword.medacc')
		windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/medacc.png')
		windower.prim.set_size('ACC_SET',200,30)
		--[[if TPSet=="hybrid" then
			send_command('alias hybrid gs equip sets.aftercast.hybrid.medacc')
		elseif TPSet=="absorb" then]]--
			send_command('alias hybrid gs equip sets.aftercast.absorbmode.medacc')
		--end
	elseif command == 'highacc' then
		Acc="highacc"
		add_to_chat(206, 'High Accuracy Mode')
		--send_command('text idlevariable text "HIGH-ACC"')
		send_command('alias tp gs equip sets.aftercast.sword.highacc')
		windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/highacc.png')
		windower.prim.set_size('ACC_SET',200,30)
		--[[if TPSet=="hybrid" then
			send_command('alias hybrid gs equip sets.aftercast.hybrid.highacc')
		elseif TPSet=="absorb" then]]--
			send_command('alias hybrid gs equip sets.aftercast.absorbmode.highacc')
		--end
	end
	-- accuracy variable commands rule end
	
	-- engage variable commands rule start
	if command == 'dd' then
		if TPSet~= "dd" then
			TPSet="dd"
			add_to_chat(206, 'DD Mode')
			--send_command('text tpvariable text "DD MODE"')
			windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/ddmode.png')
			windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/ddmode.wav')
			windower.prim.set_size('TP_SET',200,30)
			if Acc=="lowacc" then
				send_command('alias tp gs equip sets.aftercast.tp.lowacc')
			elseif Acc=="medacc" then
				send_command('alias tp gs equip sets.aftercast.tp.medacc')
			elseif Acc=="highacc" then
				send_command('alias tp gs equip sets.aftercast.tp.medacc')
			end
		elseif TPSet=="dd" then
			TPSet="maxacc"
			add_to_chat(206, 'MAXIMUM ACCURACY Mode')
			windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/maxacc.png')
			windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/maxacc.wav')
			windower.prim.set_size('TP_SET',200,30)
			send_command('pf')
		end		
	end
	if command == 'hybrid' then
		if TPSet~= "hybrid" then
			TPSet="hybrid"
			--[[add_to_chat(206, 'HYBRID MODE')
			--send_command('text tpvariable text "Hybrid MODE"')
			if Acc=="lowacc" then
				send_command('alias hybrid gs equip sets.aftercast.hybrid.lowacc')
			elseif Acc=="medacc" then
				send_command('alias hybrid gs equip sets.aftercast.hybrid.medacc')
			elseif Acc=="highacc" then
				send_command('alias hybrid gs equip sets.aftercast.hybrid.highacc')
			end]]--
			windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/sbmode.png')
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
			windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/absorbmode.png')
			windower.prim.set_size('TP_SET',200,30)
		end
	end
	if command == 'pdt' then
		TPSet="pdt"
		add_to_chat(206, 'PDT MODE')
		--send_command('text tpvariable text "PDT MODE"')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/pdtmode.png')
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
		windower.prim.set_size('TP_SET',200,30)
	end
	if command == 'mdt' then
		TPSet="mdt"
		add_to_chat(206, 'MDT MODE')
		--send_command('text tpvariable text "MDT MODE"')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/mdtmode.png')
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
		windower.prim.set_size('TP_SET',200,30)
	end
	if command == 'dt' then
		TPSet="dt"
		add_to_chat(206, 'DT MODE')
		--send_command('text tpvariable text "DT MODE"')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/dtmode.png')
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
		windower.prim.set_size('TP_SET',200,30)
	end
	if command=='resisttoggle' then
		if resistance=="death" then
			resistance="charm"			
		else
			resistance="death"			
		end
		TPSet="resist"
		add_to_chat(206,"resist mode")
	end
	-- engage variable commands rule end
	
	-- ws variable rule
	if command=="wsacctoggle" then
		if WSMode=="dmg" then
			WSMode="acc"
			add_to_chat(206, 'WSMODE: ACCURACY')
			--send_command('text doavariable text "WSMODE: ACC"')
			windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/images/acc.png')
			windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/acc.wav')
			windower.prim.set_size('WS_SET',200,30)
		else
			WSMode="dmg"
			add_to_chat(206, 'WSMODE: DAMAGE')
			--send_command('text doavariable text "WSMODE: DMG"')
			windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/images/dmg.png')
			windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dmg.wav')
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
			windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/refreshidle.png')
			windower.prim.set_size('IDLE_SET',200,30)
			status_change(player.status)
		else
			IdleMode="idle"
			add_to_chat(206, 'STANDARD IDLE MODE')
			--send_command('text wsvariable text "STANDARD IDLE"')
			send_command('alias idle gs equip sets.aftercast.idle')
			windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/standardidle.png')
			windower.prim.set_size('IDLE_SET',200,30)
			status_change(player.status)
		end
	end
	if command == 'kitepdt' then
		IdleMode="pdtkite"
		add_to_chat(206, 'PDT KITING MODE')
		--send_command('text wsvariable text "PDT KITE"')
		send_command('alias idle gs equip sets.aftercast.pdtkite')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/pdtkite.png')
		windower.prim.set_size('IDLE_SET',200,30)
		status_change(player.status)
	end
	if command == 'kitemdt' then
		IdleMode="mdtkite"
		add_to_chat(206, 'MDT KITING MODE')
		--send_command('text wsvariable text "MDT KITE"')
		send_command('alias idle gs equip sets.aftercast.mdtkite')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/mdtkite.png')
		windower.prim.set_size('IDLE_SET',200,30)
		status_change(player.status)
	end
	if command == 'pdtidle' then
		IdleMode="pdt"
		add_to_chat(206, 'PDT IDLE MODE')
		--send_command('text wsvariable text "PDT IDLE"')
		send_command('alias idle gs equip sets.aftercast.pdt')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/pdtidle.png')
		windower.prim.set_size('IDLE_SET',200,30)
		status_change(player.status)
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
	end
	if command == 'mdtidle' then
		IdleMode="mdt"
		add_to_chat(206, 'MDT IDLE MODE')
		--send_command('text wsvariable text "MDT IDLE"')
		send_command('alias idle gs equip sets.aftercast.mdt')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/mdtidle.png')
		windower.prim.set_size('IDLE_SET',200,30)
		status_change(player.status)
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
		--osd() --uncomment to use osd
	end
	if command == 'dtidle' then
		IdleMode="dt"
		add_to_chat(206, 'DT IDLE MODE')
		--send_command('text wsvariable text "DT IDLE"')
		send_command('alias idle gs equip sets.aftercast.dt')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/dtidle.png')
		status_change(player.status)
		windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
	end
	if command == 'dtkite' then
		IdleMode="dtidle"
		add_to_chat(206, 'DT KITING MODE')
		--send_command('text wsvariable text "DT KITE"')
		send_command('alias idle gs equip sets.aftercast.dtkite')
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/dtkite.png')
		status_change(player.status)		
	end
	-- idle variable commands rule end
	
	-- gear set commands
	if command=='pdtset' then
		if player.status=="Engaged" then
			equip(sets.aftercast.pdtengaged)
			windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
		else
			equip(sets.aftercast.pdt)
			windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
		end		
	end
	if command=='mdtset' then
		if buffactive["Shell"] then
			if player.status=="Engaged" then
				equip(sets.aftercast.mdtshellvengaged)
				windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
			else
				equip(sets.aftercast.mdtshellv)
				windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
			end
		elseif not buffactive["Shell"] then
			if player.status=="Engaged" then
				equip(sets.aftercast.mdtengaged)
				windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
			else
				equip(sets.aftercast.mdt)
				windower.play_sound(''..windower.windower_path..'addons/gearswap/data/sounds/dtsets.wav')
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
	if command=="checkhaste" then
		effectiveHaste()
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
		send_command('alias cmd2 input /ma "Geist Wall" <t>')
		send_command('alias cmd3 input /ma "Sandspin" <t>')
		send_command('alias cmd4 input /ma "Sound Blast" <t>')
		send_command('alias cmd5 input /ma "Stinking Gas" <t>')
		send_command('alias cmd6 input /ma "Grand Slam" <t>')
		send_command('alias cmd7 input /ma "Battle Dance" <t>')
		send_command('alias cmd8 input /ma "Cursed Sphere" <t>')
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

--[[function osd()
	send_command('text main text "'..player.equipment.main..'"')
	send_command('text sub text "'..player.equipment.sub..'"')
	send_command('text range text "'..player.equipment.range..'"')
	send_command('text ammo text "'..player.equipment.ammo..'"')
	send_command('text head text "'..player.equipment.head..'"')
	send_command('text neck text "'..player.equipment.neck..'"')
	send_command('text left_ear text "'..player.equipment.left_ear..'"')
	send_command('text right_ear text "'..player.equipment.right_ear..'"')
	send_command('text body text "'..player.equipment.body..'"')
	send_command('text hands text "'..player.equipment.hands..'"')
	send_command('text left_ring text "'..player.equipment.left_ring..'"')
	send_command('text right_ring text "'..player.equipment.right_ring..'"')
	send_command('text back text "'..player.equipment.back..'"')
	send_command('text waist text "'..player.equipment.waist..'"')
	send_command('text legs text "'..player.equipment.legs..'"')
	send_command('text feet text "'..player.equipment.feet..'"')
end]]
-- uncomment this to use the equip osd