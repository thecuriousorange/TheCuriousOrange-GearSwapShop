function get_sets()
-- include
	include('boxes.lua')
	include('organizer-lib.lua')
-- include
--aliases
	send_command('alias ddset gs equip sets.tp.lowacc')
	send_command('alias tankset gs equip sets.hybrid.lowacc')
	send_command('alias idle gs equip sets.idle.refresh')
--aliases

--text boxes
	send_command('text tpvariable text "DD MODE"')
	send_command('text idlevariable text "LOW-ACC"')
	send_command('text pdtvariable text "GS MODE"')
	send_command('text wsvariable text "REFRESH IDLE"')
--text boxes

--keybinds
	send_command('bind #4 idle')
	send_command('bind #2 gs equip sets.pdt')
	send_command('bind #5 aquaveil')
	send_command('bind #6 phalanx')
	send_command('bind #8 gs equip sets.mdt')
	send_command('bind #h tankset')
	send_command('bind #t ddset')
	send_command('bind #x gs equip sets.aftercast.tanking')
	send_command('bind @F1 gs c DD')
	send_command('bind @F2 gs c Hybrid')
	send_command('bind @F3 gs c PDT')
	send_command('bind @F4 gs c MDT')
	send_command('bind @F5 gs c TANK')
	send_command('bind #F1 gs c toggleaccuracy')
	send_command('bind #F4 gs c toggleidle')
	send_command('bind #F5 gs c toggle_gs')
	send_command('bind #F6 gs c toggle_os')
	send_command('bind #F7 gs c toggle_ts')
	send_command('bind #F8 gs c toggle_ga')
	send_command('bind @F9 gs c greatsword')
	send_command('bind @f10 gs c onesword')
	send_command('bind @f11 gs c twoswords')
	send_command('bind @f8 gs c greataxe')
	send_command('bind #1 input /item "Echo Drops" <me>')
	send_command('bind @p input /item "Holy Water" <me>')
	send_command('bind #c crusade')
	send_command('bind !- input /ja "Gambit" <t>')
	send_command('bind != input /ja "Rayke" <t>')
	send_command('bind @- input /ja "Embolden" <me>')
	send_command('bind @= input /ja "Liement" <me>')
	send_command('bind ^- input /ja "Odyllic Subterfuge" <t>')
	send_command('bind ^= input /ja "Elemental Sforzo" <me>')
	send_command('bind @1 input /ja "Ignis" <me>')
	send_command('bind @2 input /ja "Tellus" <me>')
	send_command('bind @3 input /ja "Tenebrae" <me>')
	send_command('bind @4 input /ja "Lux" <me>')
	send_command('bind @5 input /ja "Unda" <me>')
	send_command('bind @6 input /ja "Flabra" <me>')
	send_command('bind @7 input /ja "Sulpor" <me>')
	send_command('bind @8 input /ja "Gelus" <me>')
--keybinds

--macros setup
	send_command('input /macro book 1;input /macro set 3')
--macros setup

--augmented armor
	taeonhands="Adhemar Wristbands"
--augmented armor

--variables
	WeaponType="greatsword"
	TPSet="dd"
	TPType="lowacc"
	IdleType="refresh"
	WSType="dmg"
	
	sets.WSType= T{}
	sets.IdleType= T{}
	sets.WeaponType= T{}
	sets.TPSet= T{}
	sets.TPType= T{}
--variables

--base sets
	sets.precast={}
	sets.ja={}
	sets.ws={}
	sets.ws.dmg={}
	sets.ws.acc={}
	sets.midcast={}
	sets.midcast.ma={}
	sets.aftercast={}
	sets.tp={}
	sets.dw={}
	sets.hybrid={}
	sets.weaponry={}
	sets.idle={}
--base sets

--weaponry
	sets.weaponry.greatsword={}
	sets.weaponry.greatsword.index={"Aettir","Macbain","Montante","Humility"}
	gs_ind=1
	
	sets.weaponry.greatsword.Aettir={main="Aettir", sub="Alber Strap",}
	
	sets.weaponry.greatsword.Macbain={main="Macbain", sub="Alber Strap",}
	
	sets.weaponry.greatsword.Montante={main="Montante", sub="Alber Strap",}
	
	sets.weaponry.greatsword.Humility={main="Humility", sub="Alber Strap",}
	
	sets.weaponry.onesword={}
	sets.weaponry.onesword.index={"DS","Reikiko"}
	os_ind=1
	
	sets.weaponry.onesword.DS={main="Deacon Sword",}
	
	sets.weaponry.onesword.Reikiko={main="Reikiko",}
	
	sets.weaponry.twoswords={}
	sets.weaponry.twoswords.index={"RD"}
	ts_ind=1
	
	sets.weaponry.twoswords.RD={main="Reikiko", sub="Deacon Sword",}
	
	sets.weaponry.greataxe={}
	sets.weaponry.greataxe.index={"Beheader"}
	gs_ind=1
	
	sets.weaponry.greataxe.Beheader={main="Beheader", sub="Alber Strap"}

--precast sets
	--ja sets
	sets.enmity={ammo="Iron Gobbet", head="Rabid Visor", hands="Kurys Gloves", feet="Erilaz Greaves +1", legs="Eri. Leg Guards +1",
	body="Emet Harness +1",	neck="Warder's Charm +1", waist="Goading Belt", left_ear="Cryptic Earring", right_ear="Trux Earring",
	left_ring="Supershear Ring", right_ring="Eihwaz Ring", back="Fravashi Mantle",}
	
	sets.ja["Vivacious Pulse"]=set_combine(sets.enmity, {head="Erilaz Galea +1",})
	
	sets.ja["Valiance"]=set_combine(sets.enmity, {body="Rune. Bandeau +1", back="Ogma's Cape",})
	
	sets.ja["Vallation"]=set_combine(sets.enmity, {body="Rune. Bandeau +1", back="Ogma's Cape",})
	
	sets.ja["Gambit"]=set_combine(sets.enmity, {hands="Runeist Mitons +1",})
	
	sets.ja["Pflug"]=set_combine(sets.enmity, {feet="Runeist Bottes +1",})
	
	sets.ja["Battuta"]=set_combine(sets.enmity, {head="Fu. Bandeau +1"})
	
	sets.ja["Rayke"]=set_combine(sets.enmity, {feet="Futhark Boots +1",})
	
	sets.ja["Elemental Sforzo"]=set_combine(sets.enmity, {body="Futhark Coat +1",})
	
	sets.ja["Swordplay"]=set_combine(sets.enmity, {hands="Futhark Mitons +1",})
	
	sets.ja["Lunge"]={ammo="Pemphredo Tathlum", head={ name="Herculean Helm", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Crit. hit damage +1%','STR+5','Mag. Acc.+9','"Mag.Atk.Bns."+10',}}, 
	body="Samnuha Coat", hands="Leyline Gloves", legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Crit.hit rate+3','STR+9','Mag. Acc.+9',}}, 
	feet={ name="Herculean Boots", augments={'Mag. Acc.+7 "Mag.Atk.Bns."+7','INT+2','Mag. Acc.+15','"Mag.Atk.Bns."+14',}}, neck="Sanctity Necklace", waist="Eschan Stone", 
	left_ear="Crematio Earring", right_ear="Friomisi Earring", left_ring="Moepapa Annulet", right_ring="Acumen Ring", back="Evasionist's Cape",}
	
	sets.ja["Swipe"]={ammo="Pemphredo Tathlum", head={ name="Herculean Helm", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Crit. hit damage +1%','STR+5','Mag. Acc.+9','"Mag.Atk.Bns."+10',}}, 
	body="Samnuha Coat", hands="Leyline Gloves", legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Crit.hit rate+3','STR+9','Mag. Acc.+9',}}, 
	feet={ name="Herculean Boots", augments={'Mag. Acc.+7 "Mag.Atk.Bns."+7','INT+2','Mag. Acc.+15','"Mag.Atk.Bns."+14',}}, neck="Sanctity Necklace", waist="Eschan Stone", 
	left_ear="Crematio Earring", right_ear="Friomisi Earring", left_ring="Moepapa Annulet", right_ring="Acumen Ring", back="Evasionist's Cape",}
	
	sets.ja["Provoke"]=sets.enmity
	
	sets.ja["Berserk"]=sets.enmity
	
	sets.ja["Aggressor"]=sets.enmity
	
	sets.ja["Warcry"]=sets.enmity
	
	sets.ja["Ignis"]=sets.enmity
	
	sets.ja["Gelus"]=sets.enmity
	
	sets.ja["Flabra"]=sets.enmity
	
	sets.ja["Tellus"]=sets.enmity
	
	sets.ja["Sulpor"]=sets.enmity
	
	sets.ja["Unda"]=sets.enmity
	
	sets.ja["Lux"]=sets.enmity
	
	sets.ja["Tenebrae"]=sets.enmity
	--ja sets
	
	--ws sets
	sets.ws.dmg["Resolution"]={ammo="Seething Bomblet", head="Lustratio Cap", neck="Fotia Gorget", waist="Fotia Belt",
	body="Adhemar Jacket",
	hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}},  right_ear="Bladeborn Earring",
	legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
	feet={ name="Adhemar Gamashes", augments={'Attack+15','"Mag.Atk.Bns."+15','STR+12',}}, left_ear="Steelflash Earring",
	left_ring="Ifrit Ring +1", right_ring="Epona's Ring", back="Buquwik Cape",}
	
	sets.ws.dmg["Dimidiation"]={ammo="Seething Bomblet", head="Lustratio Cap", body="Abnoba Kaftan",
	hands="Adhemar Wristbands", legs="Lustratio Subligar", feet={ name="Adhemar Gamashes", augments={'STR+10','DEX+10','Attack+15',}}, neck="Fotia Gorget",
	waist="Fotia Belt", left_ear="Steelflash Earring", right_ear="Bladeborn Earring", 
	left_ring="Ramuh Ring +1", right_ring="Epona's Ring", back="Buquwik Cape",}
	
	sets.ws.dmg["Hard Slash"]=sets.ws.dmg["Resolution"]
	
	sets.ws.dmg["Power Slash"]=sets.ws.dmg["Resolution"]
	
	sets.ws.dmg["Frostbite"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})
	
	sets.ws.dmg["Freezebite"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})
	
	sets.ws.dmg["Shockwave"]=sets.ws.dmg["Resolution"]
	
	sets.ws.dmg["Crescent Moon"]=sets.ws.dmg["Resolution"]
	
	sets.ws.dmg["Sickle Moon"]=sets.ws.dmg["Resolution"]
	
	sets.ws.dmg["Spinning Slash"]=sets.ws.dmg["Resolution"]
	
	sets.ws.dmg["Ground Strike"]=sets.ws.dmg["Resolution"]
	
	sets.ws.dmg["Herculean Slash"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})
	
	sets.ws.dmg["Requiescat"]={ammo="Hydrocera", head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
	body={ name="Carm. Scale Mail", augments={'Accuracy+10','DEX+10','MND+15',}}, hands={ name="Adhemar Wristbands", augments={'STR+10','DEX+10','Attack+15',}},
	legs={ name="Carmine Cuisses", augments={'Accuracy+10','DEX+10','MND+15',}}, feet={ name="Carmine Greaves", augments={'Accuracy+10','DEX+10','MND+15',}},
	neck="Fotia Gorget", waist="Fotia Belt", left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, right_ear="Brutal Earring",
	left_ring="Levia. Ring", right_ring="Levia. Ring", back="Bleating Mantle",}
	
	sets.ws.dmg["Sanguine Blade"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})
	
	sets.ws.dmg["Burning Blade"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})
	
	sets.ws.dmg["Red Lotus Blade"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})
	
	sets.ws.dmg["Shining Blade"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})
	
	sets.ws.dmg["Seraph Blade"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})
	
	sets.ws.dmg["Savage Blade"]=sets.ws.dmg["Resolution"]
	
	sets.ws.dmg["Vorpal Blade"]=sets.ws.dmg["Resolution"]
	
	sets.ws.dmg["Circle Blade"]=sets.ws.dmg["Resolution"]
	
	sets.ws.dmg["Swift Blade"]=sets.ws.dmg["Resolution"]
	
	sets.ws.dmg["Fast Blade"]=sets.ws.dmg["Resolution"]
	
	sets.ws.dmg["Flat Blade"]=sets.ws.dmg["Resolution"]
	
	sets.ws.dmg["Fell Cleave"]={ammo="Seething Bomblet", neck="Fotia Gorget",
    head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}}, left_ear="Telos Earring",
    body={ name="Lustratio Harness", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}}, right_ring="Ifrit Ring",
    hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','Haste+2%',}}, left_ring="Ifrit Ring +1",
    legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
    feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, waist="Fotia Belt",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, back="Buquwik Cape",}
	
	sets.ws.dmg["Steel Cyclone"]=sets.ws.dmg["Resolution"]
	
	sets.ws.dmg["Weapon Break"]=sets.ws.dmg["Resolution"]
	
	sets.ws.dmg["Keen Edge"]=sets.ws.dmg["Resolution"]
	
	sets.ws.dmg["Armor Break"]=sets.ws.dmg["Resolution"]
	
	sets.ws.dmg["Sturmwind"]=sets.ws.dmg["Resolution"]
	
	sets.ws.dmg["Iron Tempest"]=sets.ws.dmg["Resolution"]
	
	sets.ws.dmg["Shield Break"]=sets.ws.dmg["Resolution"]
	
	sets.ws.acc["Resolution"]={ammo="Seething Bomblet", head="Adhemar Bonnet", neck="Fotia Gorget", waist="Fotia Belt", body="Adhemar Jacket",
	hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}}, right_ear="Bladeborn Earring",
	legs={ name="Taeon Tights", augments={'Accuracy+17 Attack+17','"Triple Atk."+2','Crit. hit damage +2%',}},
	feet={ name="Adhemar Gamashes", augments={'Attack+15','"Mag.Atk.Bns."+15','STR+12',}}, left_ear="Steelflash Earring",
	left_ring="Ifrit Ring +1", right_ring="Epona's Ring", back="Buquwik Cape",}
	
	sets.ws.acc["Dimidiation"]={ammo="Seething Bomblet", head="Adhemar Bonnet", body="Adhemar Jacket",
	hands="Adhemar Wristbands", legs="Lustratio Subligar", feet={ name="Adhemar Gamashes", augments={'STR+10','DEX+10','Attack+15',}}, neck="Fotia Gorget",
	waist="Fotia Belt", left_ear="Steelflash Earring", right_ear="Bladeborn Earring", 
	left_ring="Ramuh Ring +1", right_ring="Epona's Ring", back="Buquwik Cape",}
	
	sets.ws.acc["Hard Slash"]=sets.ws.acc["Resolution"]
	
	sets.ws.acc["Power Slash"]=sets.ws.acc["Resolution"]
	
	sets.ws.acc["Frostbite"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})
	
	sets.ws.acc["Freezebite"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})
	
	sets.ws.acc["Shockwave"]=sets.ws.acc["Resolution"]
	
	sets.ws.acc["Crescent Moon"]=sets.ws.acc["Resolution"]
	
	sets.ws.acc["Sickle Moon"]=sets.ws.acc["Resolution"]
	
	sets.ws.acc["Spinning Slash"]=sets.ws.acc["Resolution"]
	
	sets.ws.acc["Ground Strike"]=sets.ws.acc["Resolution"]
	
	sets.ws.acc["Herculean Slash"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})
	
	sets.ws.acc["Requiescat"]={ammo="Hydrocera", head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
	body={ name="Carm. Scale Mail", augments={'Accuracy+10','DEX+10','MND+15',}}, hands={ name="Adhemar Wristbands", augments={'STR+10','DEX+10','Attack+15',}},
	legs={ name="Carmine Cuisses", augments={'Accuracy+10','DEX+10','MND+15',}}, feet={ name="Carmine Greaves", augments={'Accuracy+10','DEX+10','MND+15',}},
	neck="Fotia Gorget", waist="Fotia Belt", left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, right_ear="Brutal Earring",
	left_ring="Levia. Ring", right_ring="Levia. Ring", back="Bleating Mantle",}
	
	sets.ws.acc["Sanguine Blade"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})
	
	sets.ws.acc["Burning Blade"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})
	
	sets.ws.acc["Red Lotus Blade"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})
	
	sets.ws.acc["Shining Blade"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})
	
	sets.ws.acc["Seraph Blade"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})
	
	sets.ws.acc["Savage Blade"]=sets.ws.acc["Resolution"]
	
	sets.ws.acc["Vorpal Blade"]=sets.ws.acc["Resolution"]
	
	sets.ws.acc["Circle Blade"]=sets.ws.acc["Resolution"]
	
	sets.ws.acc["Swift Blade"]=sets.ws.acc["Resolution"]
	
	sets.ws.acc["Fast Blade"]=sets.ws.acc["Resolution"]
	
	sets.ws.acc["Flat Blade"]=sets.ws.acc["Resolution"]
	
	sets.ws.acc["Fell Cleave"]=sets.ws.acc["Resolution"]
	
	sets.ws.acc["Steel Cyclone"]=sets.ws.acc["Resolution"]
	
	sets.ws.acc["Weapon Break"]=sets.ws.acc["Resolution"]
	
	sets.ws.acc["Keen Edge"]=sets.ws.acc["Resolution"]
	
	sets.ws.acc["Armor Break"]=sets.ws.acc["Resolution"]
	
	sets.ws.acc["Sturmwind"]=sets.ws.acc["Resolution"]
	
	sets.ws.acc["Iron Tempest"]=sets.ws.acc["Resolution"]
	
	sets.ws.acc["Shield Break"]=sets.ws.acc["Resolution"]
	--ws sets
	
	--magic sets
	sets.precast.fc={head="Carmine Mask", neck="Jeweled Collar", left_ear="Loquac. Earring", body="Samnuha Coat",
	left_ring="Prolix Ring", hands="Leyline Gloves", legs="Rawhide Trousers", feet="Carmine Greaves",}
	
	sets.precast.enhancing= set_combine(sets.precast.fc, {waist="Siegel Sash", legs="Futhark Trousers +1",})
	--magic sets
--precast sets

--midcast sets
	sets.enhancing={head="Fu. Bandeau +1", body="Samnuha Coat", hands="Runeist Mitons +1", 
	legs="Futhark Trousers +1", feet="Carmine Greaves", neck="Incanter's Torque", waist="Siegel Sash", 
	left_ear="Loquac. Earring", right_ear="Sanare Earring", left_ring="Levia. Ring", 
	right_ring="Shadow Ring", back="Merciful Cape",}
	
	sets.regen= set_combine(sets.precast.fc, {left_ring="Eihwaz Ring",})
	
	sets.midcast.regens= set_combine(sets.regen, {})
	
	sets.midcast.barspells= set_combine(sets.enhancing, {})
	
	sets.midcast.ma["Phalanx"]= set_combine(sets.enhancing, {})
	
	sets.midcast.ma["Stoneskin"]= set_combine(sets.enhancing, {})
	
	sets.midcast.ma["Refresh"]= set_combine(sets.enhancing, {head="Erilaz Galea +1",})
	
	sets.midcast.ma["Foil"]= set_combine(sets.enhancing, {})
	
	sets.midcast.ma["Aquaveil"]= set_combine(sets.enhancing, {})
	
	sets.midcast.ma["Cure"]={ammo="Impatiens", head="Erilaz Galea +1", body="Emet Harness +1", feet="Erilaz Greaves +1",
	hands={ name="Buremte Gloves", augments={'Haste+2','"Snapshot"+2','"Fast Cast"+3',}}, legs="Eri. Leg Guards +1",
	neck="Phalaina Locket", waist="Gishdubar Sash", left_ear="Roundel Earring", right_ear="Mendi. Earring", 
	left_ring="Vocane Ring", right_ring="Eihwaz Ring", back="Solemnity Cape",}
	
	sets.midcast.ma["Cure II"]={ammo="Impatiens", head="Erilaz Galea +1", body="Emet Harness +1", feet="Erilaz Greaves +1",
	hands={ name="Buremte Gloves", augments={'Haste+2','"Snapshot"+2','"Fast Cast"+3',}}, legs="Eri. Leg Guards +1",
	neck="Phalaina Locket", waist="Gishdubar Sash", left_ear="Roundel Earring", right_ear="Mendi. Earring", 
	left_ring="Vocane Ring", right_ring="Eihwaz Ring", back="Solemnity Cape",}
	
	sets.midcast.ma["Cure III"]={ammo="Impatiens", head="Erilaz Galea +1", body="Emet Harness +1", feet="Erilaz Greaves +1",
	hands={ name="Buremte Gloves", augments={'Haste+2','"Snapshot"+2','"Fast Cast"+3',}}, legs="Eri. Leg Guards +1",
	neck="Phalaina Locket", waist="Gishdubar Sash", left_ear="Roundel Earring", right_ear="Mendi. Earring", 
	left_ring="Vocane Ring", right_ring="Eihwaz Ring", back="Solemnity Cape",}
	
	sets.midcast.ma["Cure IV"]={ammo="Impatiens", head="Erilaz Galea +1", body="Emet Harness +1", feet="Erilaz Greaves +1",
	hands={ name="Buremte Gloves", augments={'Haste+2','"Snapshot"+2','"Fast Cast"+3',}}, legs="Eri. Leg Guards +1",
	neck="Phalaina Locket", waist="Gishdubar Sash", left_ear="Roundel Earring", right_ear="Mendi. Earring", 
	left_ring="Vocane Ring", right_ring="Eihwaz Ring", back="Solemnity Cape",}
	
	sets.midcast.ma["Curaga"]={ammo="Impatiens", head="Erilaz Galea +1", body="Emet Harness +1", feet="Erilaz Greaves +1",
	hands={ name="Buremte Gloves", augments={'Haste+2','"Snapshot"+2','"Fast Cast"+3',}}, legs="Eri. Leg Guards +1",
	neck="Phalaina Locket", waist="Gishdubar Sash", left_ear="Roundel Earring", right_ear="Mendi. Earring", 
	left_ring="Vocane Ring", right_ring="Eihwaz Ring", back="Solemnity Cape",}
	
	sets.midcast.ma["Curaga II"]={ammo="Impatiens", head="Erilaz Galea +1", body="Emet Harness +1", feet="Erilaz Greaves +1",
	hands={ name="Buremte Gloves", augments={'Haste+2','"Snapshot"+2','"Fast Cast"+3',}}, legs="Eri. Leg Guards +1",
	neck="Phalaina Locket", waist="Gishdubar Sash", left_ear="Roundel Earring", right_ear="Mendi. Earring", 
	left_ring="Vocane Ring", right_ring="Eihwaz Ring", back="Solemnity Cape",}
	
	sets.midcast.ma["Cura"]={ammo="Impatiens", head="Erilaz Galea +1", body="Emet Harness +1", feet="Erilaz Greaves +1",
	hands={ name="Buremte Gloves", augments={'Haste+2','"Snapshot"+2','"Fast Cast"+3',}}, legs="Eri. Leg Guards +1",
	neck="Phalaina Locket", waist="Gishdubar Sash", left_ear="Roundel Earring", right_ear="Mendi. Earring", 
	left_ring="Vocane Ring", right_ring="Eihwaz Ring", back="Solemnity Cape",}
	
	sets.midcast.ma["Cura II"]={ammo="Impatiens", head="Erilaz Galea +1", body="Emet Harness +1", feet="Erilaz Greaves +1",
	hands={ name="Buremte Gloves", augments={'Haste+2','"Snapshot"+2','"Fast Cast"+3',}}, legs="Eri. Leg Guards +1",
	neck="Phalaina Locket", waist="Gishdubar Sash", left_ear="Roundel Earring", right_ear="Mendi. Earring", 
	left_ring="Vocane Ring", right_ring="Eihwaz Ring", back="Solemnity Cape",}
	
	sets.midcast.ma["Flash"]= set_combine(sets.precast.fc, {neck="Warder's Charm +1", hands="Futhark Mitons +1", left_ring="Eihwaz Ring",})
--midcast sets

--aftercast sets
	--tp sets
	sets.tp.lowacc={ammo="Focal Orb", head="Skormoth Mask", neck="Defiant Collar", waist="Chiner's Belt +1",
	body={ name="Herculean Vest", augments={'Accuracy+13 Attack+13','"Triple Atk."+4','MND+3','Attack+13',}},
	hands={ name="Herculean Gloves", augments={'Attack+27','"Triple Atk."+3','STR+8','Accuracy+11',}}, left_ear="Cessance Earring",
	legs={ name="Taeon Tights", augments={'Accuracy+17 Attack+17','"Triple Atk."+2','Crit. hit damage +2%',}},
	feet={ name="Herculean Boots", augments={'Accuracy+24','"Triple Atk."+3',}}, right_ear="Brutal Earring",
	left_ring="Hetairoi Ring", right_ring="Epona's Ring", back="Bleating Mantle",}
	
	sets.tp.medacc= set_combine(sets.tp.lowacc, {ammo="Falcon Eye", back="Letalis Mantle",})
	
	sets.tp.highacc= set_combine(sets.tp.medacc, {neck="Combatant's Torque", right_ring="Ramuh Ring +1",})
	
	sets.tp.vhighacc= set_combine(sets.tp.highacc, {head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','DEX+7','Accuracy+12','Attack+13',}}, 
	right_ear="Zennaroi Earring", hands="Adhemar Wristbands", back="Ground. Mantle +1", waist="Olseni Belt", left_ring="Mars's Ring",})
	
	sets.dw.lowacc={ammo="Vanir Battery",
    head="Skormoth Mask",
    body="Adhemar Jacket",
    hands={ name="Adhemar Wristbands", augments={'STR+10','DEX+10','Attack+15',}},
    legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
    feet={ name="Taeon Boots", augments={'Accuracy+19 Attack+19','"Triple Atk."+2','Crit. hit damage +2%',}},
    neck="Defiant Collar",
    waist="Windbuffet Belt +1",
    right_ear="Suppanomimi",
    left_ear="Telos Earring",
    left_ring="Hetairoi Ring",
    right_ring="Epona's Ring",
    back="Bleating Mantle",}
	
	sets.dw.medacc=set_combine(sets.dw.lowacc, {ammo="Falcon Eye", back="Letalis Mantle",})
	
	sets.dw.highacc=set_combine(sets.tp.medacc, {neck="Combatant's Torque", left_ring="Patricius Ring",})
	
	sets.dw.vhighacc={ammo="Falcon Eye", waist="Olseni Belt", left_ear="Telos Earring", right_ear="Zennaroi Earring",
	head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','DEX+7','Accuracy+12','Attack+13',}},
	body="Adhemar Jacket", right_ring="Ramuh Ring +1",
	hands={ name="Herculean Gloves", augments={'Attack+27','"Triple Atk."+3','STR+8','Accuracy+11',}}, left_ring="Mars's Ring",
	legs={ name="Taeon Tights", augments={'Accuracy+17 Attack+17','"Triple Atk."+2','Crit. hit damage +2%',}},
	feet={ name="Herculean Boots", augments={'Accuracy+24','"Triple Atk."+3',}}, neck="Combatant's Torque", back="Ground. Mantle +1",}
	--tp sets
	
	--hybrid sets
	sets.hybrid.lowacc={ammo="Vanir Battery", head="Fu. Bandeau +1", body="Futhark Coat +1",
	hands="Umuthi Gloves", legs="Rune. Trousers +1", feet="Futhark Boots +1", neck="Loricate Torque +1",
	waist="Flume Belt", left_ear="Ethereal Earring", right_ear="Brutal Earring", left_ring="Vocane Ring",
	right_ring="Defending Ring", back="Mollusca Mantle",}
	
	sets.hybrid.medacc= set_combine(sets.hybrid.lowacc, {ammo="Falcon Eye", back="Letalis Mantle",})
	
	sets.hybrid.highacc= set_combine(sets.hybrid.medacc, {head={ name="Herculean Helm", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','DEX+7','Accuracy+12','Attack+13',}}, neck="Combatant's Torque",})
	
	sets.hybrid.vhighacc= set_combine(sets.hybrid.highacc, {waist="Olseni Belt", legs="Samnuha Tights",})
	--hybrid sets
	
	--dt sets
	sets.pdt={ammo="Vanir Battery", head="Fu. Bandeau +1", body="Futhark Coat +1", 
	hands="Umuthi Gloves", legs="Eri. Leg Guards +1", feet="Erilaz Greaves +1", neck="Loricate Torque +1", waist="Flume Belt",
	left_ear="Ethereal Earring", right_ear="Sanare Earring", right_ring="Defending Ring", left_ring="Vocane Ring",
	back="Mollusca Mantle",}
	
	sets.mdt= set_combine(sets.pdt, {left_ring="Shadow Ring",})
	--dt sets
	
	--tank set
	sets.aftercast.tanking={ammo="Vanir Battery", head="Fu. Bandeau +1", body="Erilaz Surcoat +1", hands="Erilaz Gauntlets +1",
	legs="Eri. Leg Guards +1", feet="Erilaz Greaves +1", neck="Loricate Torque +1", waist="Flume Belt", left_ear="Steelflash Earring",
	right_ear="Bladeborn Earring", left_ring="Epona's Ring", right_ring="Defending Ring", back="Evasionist's Cape",}
	--tank set
	
	--idle sets
	sets.idle.refresh={ammo="Homiliary", head="Rawhide Mask", body="Runeist Coat +1", hands="Umuthi Gloves",
	legs={ name="Carmine Cuisses", augments={'Accuracy+10','DEX+10','MND+15',}}, feet="Erilaz Greaves +1", 
	neck="Loricate Torque +1", waist="Flume Belt", left_ear="Ethereal Earring", right_ear="Sanare Earring", 
	right_ring="Shadow Ring", left_ring="Sheltered Ring", back="Shadow Mantle",}
	
	sets.idle.pdt=sets.pdt
	
	sets.idle.mdt=sets.mdt
	
	--idle sets
--aftercast sets
end

function precast(spell)
	if spell.prefix=="/magic" then
		if spell.type=="Enhancing Magic" then
			equip(sets.precast.enhancing)
		else
			equip(sets.precast.fc)
		end
	elseif spell.prefix=="/ninjutsu" then
		equip(sets.precast.fc)
	elseif spell.prefix=="/jobability" then
		equip(sets.ja[spell.english])
	elseif spell.prefix=="/weaponskill" then
		if WSType=="dmg" then
			equip(sets.ws.dmg[spell.english])
		elseif WSType=="acc" then
			equip(sets.ws.acc[spell.english])
		end
	end
	if WeaponType=="greatsword" then
		equip(sets.weaponry.greatsword[sets.weaponry.greatsword.index[gs_ind]])
	elseif WeaponType=="onesword" then
		equip(sets.weaponry.onesword[sets.weaponry.greatsword.index[os_ind]])
	elseif WeaponType=="twosword" then
		equip(sets.weaponry.twoswords[sets.weaponry.twoswords.index[ts_ind]])
	elseif WeaponType=="greataxe" then
		equip(sets.weaponry.greataxe[sets.weaponry.greataxe.index[ga_ind]])
	end
end

function midcast(spell)
	if spell.prefix=="/magic" then
		if string.find(spell.english, 'Regen') then
			equip(sets.midcast.regens)
		elseif string.find(spell.english, 'Bar') then
			equip(sets.midcast.barspells)
		else
			equip(sets.midcast.ma[spell.english])
		end
	end
	if WeaponType=="greatsword" then
		equip(sets.weaponry.greatsword[sets.weaponry.greatsword.index[gs_ind]])
	elseif WeaponType=="onesword" then
		equip(sets.weaponry.onesword[sets.weaponry.greatsword.index[os_ind]])
	elseif WeaponType=="twosword" then
		equip(sets.weaponry.twoswords[sets.weaponry.twoswords.index[ts_ind]])
	elseif WeaponType=="greataxe" then
		equip(sets.weaponry.greataxe[sets.weaponry.greataxe.index[ga_ind]])
	end
end

function aftercast(spell)
	if spell.english == "Gambit" then -- Gambit Countdown --
            send_command ('input /p [Gambit ON] ;wait 42;input /p Gambit [WEARING OFF IN 30 SEC];wait 20;input /p Gambit [WEARING OFF IN 10 SEC];wait 10;input /p Gambit [OFF]')
    elseif spell.english == "Rayke" then -- Rayke Countdown --
            send_command ('input /p [Rayke ON] ;wait 25;input /p Rayke [WEARING OFF IN 25 SEC];wait 15;input /p Rayke [WEARING OFF IN 10 SEC];wait 10;input /p Rayke [OFF]')       
    end
	status_change(player.status)
end

function status_change(new,old)
	if new=="Engaged" then
		if TPSet=="dd" then
			if WeaponType=="greatsword" or WeaponType=="greataxe" or WeaponType=="onesword" then
				equip(sets.tp[TPType])
			else
				equip(sets.dw[TPType])
			end
		elseif TPSet=="hybrid" then
			equip(sets.hybrid[TPType])
		elseif TPSet=="pdt" then
			equip(sets.pdt)
		elseif TPSet=="mdt" then
			equip(sets.mdt)
		elseif TPSet=="tanking" then
			equip(sets.aftercast.tanking)
		end
	else
		equip(sets.idle[IdleType])
	end
	if WeaponType=="greatsword" then
		equip(sets.weaponry.greatsword[sets.weaponry.greatsword.index[gs_ind]])
	elseif WeaponType=="onesword" then
		equip(sets.weaponry.onesword[sets.weaponry.onesword.index[os_ind]])
	elseif WeaponType=="twosword" then
		equip(sets.weaponry.twoswords[sets.weaponry.twoswords.index[ts_ind]])
	elseif WeaponType=="greataxe" then
		equip(sets.weaponry.greataxe[sets.weaponry.greataxe.index[ga_ind]])
	end
end

function self_command(command)
	--tpset commands
	if command=="DD" then
		TPSet="dd"
		add_to_chat(206, 'DD MODE')
		send_command('text tpvariable text "DD MODE"')
		status_change(player.status)
	elseif command=="Hybrid" then
		TPSet="hybrid"
		add_to_chat(206, 'HYBRID MODE')
		send_command('text tpvariable text "HYBRID MODE"')
		status_change(player.status)
	elseif command=="PDT" then
		TPSet="pdt"
		add_to_chat(206, 'PDT MODE')
		send_command('text tpvariable text "PDT MODE"')
		status_change(player.status)
	elseif command=="MDT" then
		TPSet="mdt"
		add_to_chat(206, 'MDT MODE')
		send_command('text tpvariable text "MDT MODE"')
		status_change(player.status)
	elseif command=="TANK" then
		TPSet="tanking"
		add_to_chat(206, 'TANK MODE')
		send_command('text tpvariable text "TANK MODE"')
		status_change(player.status)
	end
	--tpset commands
	
	--accuracy commands
	if command== 'toggleaccuracy' then
		if TPType=="lowacc" then
			TPType="medacc"
			add_to_chat(206, 'Medium Accuracy Mode')
			send_command('text idlevariable text "MEDIUM-ACC"')
			send_command('alias ddset gs equip sets.tp.medacc')
			send_command('alias tankset gs equip sets.hybrid.medacc')
			status_change(player.status)
		elseif TPType=="medacc" then
			TPType="highacc"
			add_to_chat(206, 'High Accuracy Mode')
			send_command('text idlevariable text "HIGH-ACC"')
			send_command('alias ddset gs equip sets.tp.highacc')
			send_command('alias tankset gs equip sets.hybrid.highacc')
			status_change(player.status)
		elseif TPType=="highacc" then
			TPType="vhighacc"
			add_to_chat(206, 'Very High Accuracy Mode')
			send_command('text idlevariable text "V.HIGH-ACC"')
			send_command('alias ddset gs equip sets.tp.vhighacc')
			send_command('alias tankset gs equip sets.hybrid.vhighacc')
			status_change(player.status)
		elseif TPType=="vhighacc" then
			TPType="lowacc"
			add_to_chat(206, 'Low Accuracy Mode')
			send_command('text idlevariable text "LOW-ACC"')
			send_command('alias ddset gs equip sets.tp.lowacc')
			send_command('alias tankset gs equip sets.hybrid.lowacc')
			status_change(player.status)
		end
	end
	--wsacctoggle
	if command=="wsacctoggle" then
		if WSMode=="dmg" then
			WSMode="acc"
			add_to_chat(206, 'WSMODE: ACCURACY')
		else
			WSMode="dmg"
			add_to_chat(206, 'WSMODE: DAMAGE')
		end
	end
	--wsacctoggle
	if command == 'lowacc' then
		TPType="lowacc"
		add_to_chat(206, 'Low Accuracy Mode')
		send_command('text idlevariable text "LOW-ACC"')
		send_command('alias ddset gs equip sets.tp.lowacc')
		send_command('alias tankset gs equip sets.hybrid.lowacc')
		status_change(player.status)
	elseif command == 'medacc' then
		TPType="medacc"
		add_to_chat(206, 'Medium Accuracy Mode')
		send_command('text idlevariable text "MEDIUM-ACC"')
		send_command('alias ddset gs equip sets.tp.medacc')
		send_command('alias tankset gs equip sets.hybrid.medacc')
		status_change(player.status)
	elseif command == 'highacc' then
		TPType="highacc"
		add_to_chat(206, 'High Accuracy Mode')
		send_command('text idlevariable text "HIGH-ACC"')
		send_command('alias ddset gs equip sets.tp.highacc')
		send_command('alias tankset gs equip sets.hybrid.highacc')
		status_change(player.status)
	elseif command == 'vhighacc' then
		TPType="vhighacc"
		add_to_chat(206, 'Very High Accuracy Mode')
		send_command('text idlevariable text "V.HIGH-ACC"')
		send_command('alias ddset gs equip sets.tp.vhighacc')
		send_command('alias tankset gs equip sets.hybrid.vhighacc')
		status_change(player.status)
	end
	--accuracy commands
	
	--weapon set commands
	if command=='greatsword' then
		WeaponType="greatsword"
		add_to_chat(206, 'GREATSWORD SELECTED')
		send_command('text pdtvariable text "GS MODE"')
		status_change(player.status)
	elseif command=="onesword" then
		WeaponType="onesword"
		send_command('text pdtvariable text "1-SWORD MODE"')
		status_change(player.status)
	elseif command=="twoswords" then
		WeaponType="twoswords"
		send_command('text pdtvariable text "2-SWORDS MODE"')
		status_change(player.status)
	elseif command=="greataxe" then
		WeaponType="greataxe"
		send_command('text pdtvariable text "GA MODE"')
		status_change(player.status)
	end	
	if command=="toggle_gs" then
		gs_ind = gs_ind +1
		if gs_ind > #sets.weaponry.greatsword.index then
			gs_ind = 1
		end
		status_change(player.status)
		add_to_chat(206, 'WEAPONRY: '..sets.weaponry.greatsword.index[gs_ind])
	end
	if command=="toggle_os" then
		os_ind = os_ind +1
		if os_ind > #sets.weaponry.onesword.index then
			os_ind = 1
		end
		status_change(player.status)
		add_to_chat(206, 'WEAPONRY: '..sets.weaponry.onesword.index[os_ind])
	end
	if command=="toggle_ts" then
		ts_ind = ts_ind +1
		if ts_ind > #sets.weaponry.twoswords.index then
			ts_ind = 1
		end
		status_change(player.status)
		add_to_chat(206, 'WEAPONRY: '..sets.weaponry.twoswords.index[ts_ind])
	end
	if command=="toggle_ga" then
		ga_ind = ga_ind +1
		if ga_ind > #sets.weaponry.greataxe.index then
			ga_ind = 1
		end
		status_change(player.status)
		add_to_chat(206, 'WEAPONRY: '..sets.weaponry.greataxe.index[ga_ind])
	end
	--weapon set commands
	
	--idle set commands
	if command=='toggleidle' then
		if IdleType=="refresh" then
			IdleType='pdt'
			add_to_chat(206,'PDT IDLE')
			send_command('text wsvariable text "PDT IDLE"')
			send_command('alias idle gs equip sets.idle.pdt')
			status_change(player.status)
		elseif IdleType=="pdt" then
			IdleType='mdt'
			add_to_chat(206,'MDT IDLE')
			send_command('text wsvariable text "MDT IDLE"')
			send_command('alias idle gs equip sets.idle.mdt')
			status_change(player.status)
		elseif IdleType=="mdt" then
			IdleType='refresh'
			add_to_chat(206,'REFRESH IDLE')
			send_command('text wsvariable text "REFRESH IDLE"')
			send_command('alias idle gs equip sets.idle.refresh')
			status_change(player.status)		
		end
	end	
	--idle set commands
end

function file_unload(new_job)
	windower.send_command('boxesoff')
end