function get_sets()
	macro_setup()
-- include
	--include('boxes.lua')
	include('organizer-lib.lua')
	include('lelubrdgkeys.lua')
	include('itchygeogkeys.lua')
-- include
--aliases
	send_command('alias ddset gs equip sets.tp.lowacc')
	send_command('alias tankset gs equip sets.hybrid.lowacc')
	send_command('alias idle gs equip sets.idle.refresh')
	send_command('alias pf gs c primfix')
--aliases

--text boxes
	--[[send_command('text tpvariable text "DD MODE"')
	send_command('text idlevariable text "LOW-ACC"')
	send_command('text pdtvariable text "GS MODE"')
	send_command('text wsvariable text "REFRESH IDLE"')]]
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
	send_command('bind #F5 gs c Lionheart')
	send_command('bind #F6 gs c Epeolatry')
	send_command('bind #F7 gs c Aettir')
	send_command('bind #F8 gs c Lycurgos')
	send_command('bind @f8 gs c Naegling')
	send_command('bind @F9 gs c dwNaegling')
	send_command('bind @f10 gs c Dolichenus')
	send_command('bind @f11 gs c dwDolichenus')
	send_command('bind @f12 gs c togglews')
	send_command('bind @a gs c burstmode')
	send_command('bind #1 input /item "Echo Drops" <me>')
	send_command('bind @p input /item "Holy Water" <me>')
	send_command('bind #c crusade')
	send_command('bind ^- input /ja "Odyllic Subterfuge" <t>')
	send_command('bind ^= input /ja "Elemental Sforzo" <me>')

	send_command('bind @a gs c burstmode')
	send_command('bind @3 gs c Use_Rune')
	send_command('bind @4 gs c Cycle_Runes')
--keybinds

--macros setup
	send_command('input /macro book 1;input /macro set 3')
--macros setup

--augmented armor

--augmented armor

--lists
	include('physws.lua')
--lists

--variables
	WeaponType="greatsword"
	weaponry="Epeolatry"
	TPSet="meva"
	Acc="lowacc"
	IdleType="refresh"
	WSType="dmg"
	Burst_Mode="on"

	sets.WSType= T{}
	sets.IdleType= T{}
	sets.WeaponType= T{}
	sets.TPSet= T{}
	sets.Acc= T{}
	sets.Burst_Mode= T{}
	sets.weaponry= T{}
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

--runes index
	sets.runes={}
	sets.runes.index={'Tenebrae','Gelus','Ignis','Flabra','Tellus','lux','Unda','Sulpor'}
	runes=1
--runes index

--gui setup
windower.prim.create('TP_SET')
windower.prim.create('ACC_SET')
windower.prim.create('IDLE_SET')
windower.prim.create('WS_SET')
windower.prim.create('ACTIVE_RUNE')
windower.prim.create('WEAPON_TYPE')

windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/'..TPSet..'.png')
windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/lowacc.png')
windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/refreshidle.png')
windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/images/dmg.png')
windower.prim.set_texture('ACTIVE_RUNE',''..windower.windower_path..'addons/gearswap/data/images/'..sets.runes.index[runes]..'.png')
windower.prim.set_texture('WEAPON_TYPE',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')

windower.prim.set_size('TP_SET',200,30)
windower.prim.set_size('ACC_SET',200,30)
windower.prim.set_size('IDLE_SET',200,30)
windower.prim.set_size('WS_SET',200,30)
windower.prim.set_size('ACTIVE_RUNE',200,50)
windower.prim.set_size('WEAPON_TYPE',200,50)

windower.prim.set_position('TP_SET',0.65*windower.get_windower_settings().ui_x_res,50)
windower.prim.set_position('ACC_SET',0.65*windower.get_windower_settings().ui_x_res,90)
windower.prim.set_position('IDLE_SET',0.65*windower.get_windower_settings().ui_x_res,130)
windower.prim.set_position('WS_SET',0.65*windower.get_windower_settings().ui_x_res,170)
windower.prim.set_position('ACTIVE_RUNE',0.65*windower.get_windower_settings().ui_x_res,210)
windower.prim.set_position('WEAPON_TYPE',0.65*windower.get_windower_settings().ui_x_res,260)

windower.prim.set_color('TP_SET', 100, 255, 255, 255)
windower.prim.set_color('ACC_SET', 100, 255, 255, 255)
windower.prim.set_color('IDLE_SET', 100, 255, 255, 255)
windower.prim.set_color('WS_SET', 100, 255, 255, 255)
windower.prim.set_color('ACTIVE_RUNE', 100, 255, 255, 255)
windower.prim.set_color('WEAPON_TYPE',100,255,255,255)

windower.prim.set_visibility('TP_SET',true)
windower.prim.set_visibility('ACC_SET',true)
windower.prim.set_visibility('IDLE_SET',true)
windower.prim.set_visibility('WS_SET',true)
windower.prim.set_visibility('ACTIVE_RUNE',true)
windower.prim.set_visibility('WEAPON_TYPE',true)
--gui setup

--weaponry
	sets.weaponry.Epeolatry={main="Epeolatry", sub="Utu Grip"}
	sets.weaponry.Lionheart={main="Lionheart", sub="Utu Grip"}
	sets.weaponry.Aettir={main="Aettir", sub="Utu Grip"}
	sets.weaponry.Lycurgos={main="Lycurgos", sub="Utu Grip"}
	sets.weaponry.Naegling={main="Naegling"}
	sets.weaponry.Dolichenus={main="Dolichenus"}
	sets.weaponry.dwDolichenus=set_combine (sets.weaponry.Dolichenus,{sub="Reikiko"})
	sets.weaponry.dwNaegling=set_combine (sets.weaponry.Naegling,{sub="Reikiko"})

--precast sets
	--ja sets
	sets.enmity={ammo="Iron Gobbet", head="Rabid Visor", hands="Kurys Gloves", feet="Ahosi Leggings", legs="Eri. leg Guards +1",
	body="Emet Harness +1",	neck="Moonlight Necklace", waist="Goading Belt", left_ear="Cryptic Earring", right_ear="Trux Earring",
	left_ring="Supershear Ring", right_ring="Eihwaz Ring", back="Fravashi Mantle",}

	sets.ja["Vivacious Pulse"]=set_combine(sets.enmity, {
    head="Erilaz Galea +1",
    neck="Incanter's Torque",
    ear1="Saxnot Earring",
    ear2="Beatific Earring",
    ring1="Stikini Ring +1",
    ring2="Stikini Ring +1",
    back="Altruistic Cape",
    waist="Bishop's Sash",
    legs="Rune. Trousers +3"
	})

	sets.ja["Valiance"]=set_combine(sets.enmity, {body="Runeist's Coat +3", back="Ogma's Cape",})

	sets.ja["Vallation"]=set_combine(sets.enmity, {body="Runeist's Coat +3", back="Ogma's Cape",})

	sets.ja["Gambit"]=set_combine(sets.enmity, {hands="Runeist's Mitons +3",})

	sets.ja["Pflug"]=set_combine(sets.enmity, {feet="Runeist's Boots +3",})

	sets.ja["Battuta"]=set_combine(sets.enmity, {head="Fu. Bandeau +3"})

	sets.ja["Rayke"]=set_combine(sets.enmity, {feet="Futhark Boots +3",})

	sets.ja["Elemental Sforzo"]=set_combine(sets.enmity, {body="Futhark Coat +3",})

	sets.ja["Swordplay"]=set_combine(sets.enmity, {hands="Futhark Mitons +3",})

	sets.ja["One For All"]= {
    ammo="Staunch Tathlum +1",
    head="Rune. Bandeau +3",
    neck="Unmoving Collar +1",
    ear1="Odnowa Earring +1",
    ear2="Tuisto Earring",
    body="Runeist's Coat +3",
    hands="Regal Gauntlets",
    ring1="Gelatinous Ring +1",
    ring2="Moonlight Ring",
    back="Moonlight Cape",
    waist="Oneiros Belt",
    legs="Futhark Trousers +3",
    feet="Turms Leggings +1"
}

	sets.ja.Lunge={
		ammo="Pemphredo Tathlum",
    head="Nyame Helm",
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Crematio Earring",
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Evasionist's Cape", augments={'Enmity+5','"Embolden"+9','"Dbl.Atk."+1',}},
	}

	sets.ja.Lunge.burst=set_combine(sets.ja.Lunge, {left_ring="Mujin Band", right_ring="Locus Ring",})

	sets.ja.Swipe={
		ammo="Pemphredo Tathlum",
    head="Nyame Helm",
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Crematio Earring",
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Evasionist's Cape", augments={'Enmity+5','"Embolden"+9','"Dbl.Atk."+1',}},
	}

	sets.ja.Swipe.burst=set_combine(sets.ja.Lunge, {left_ring="Mujin Band", right_ring="Locus Ring",})

	sets.ja["Provoke"]=set_combine(sets.enmity,{})

	sets.ja["Berserk"]=set_combine(sets.enmity,{})

	sets.ja["Aggressor"]=set_combine(sets.enmity,{})

	sets.ja["Warcry"]=set_combine(sets.enmity,{})

	sets.ja["Ignis"]=set_combine(sets.enmity,{})

	sets.ja["Gelus"]=set_combine(sets.enmity,{})

	sets.ja["Flabra"]=set_combine(sets.enmity,{})

	sets.ja["Tellus"]=set_combine(sets.enmity,{})

	sets.ja["Sulpor"]=set_combine(sets.enmity,{})

	sets.ja["Unda"]=set_combine(sets.enmity,{})

	sets.ja["Lux"]=set_combine(sets.enmity,{})

	sets.ja["Tenebrae"]=set_combine(sets.enmity,{})
	--ja sets

	--ws sets
	sets.ws.dmg["Resolution"]={ammo="Knobkierrie", head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
	body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},  neck="Fotia Gorget", waist="Fotia Belt",
	hands="Meg. Gloves +2",  right_ear="Brutal Earring", legs="Meg. Chausses +2",
	feet={ name="Adhemar Gamashes", augments={'STR+10','DEX+10','Attack+15',}}, left_ear="Sherida Earring",
	left_ring="Niqmaddu Ring", right_ring="Regal Ring", back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}

	sets.ws.dmg["Dimidiation"]={ammo="Knobkierrie", head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}}, left_ear="Sherida Earring",
	body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}}, hands="Meg. Gloves +2", neck="Fotia Gorget", waist="Fotia Belt", right_ear="Mache Earring +1",
	legs={ name="Lustratio Subligar", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}}, feet={ name="Adhemar Gamashes", augments={'STR+10','DEX+10','Attack+15',}},
	left_ring="Ilabrat Ring", right_ring="Epona's Ring", back={ name="Ogma's cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},}

	sets.ws.dmg["Hard Slash"]=set_combine(sets.ws.dmg["Resolution"],{})

	sets.ws.dmg["Power Slash"]=set_combine(sets.ws.dmg["Resolution"],{})

	sets.ws.dmg["Frostbite"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})

	sets.ws.dmg["Freezebite"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})

	sets.ws.dmg["Shockwave"]=set_combine(sets.ws.dmg["Resolution"],{})

	sets.ws.dmg["Crescent Moon"]=set_combine(sets.ws.dmg["Resolution"],{})

	sets.ws.dmg["Sickle Moon"]=set_combine(sets.ws.dmg["Resolution"],{})

	sets.ws.dmg["Spinning Slash"]=set_combine(sets.ws.dmg["Resolution"],{})

	sets.ws.dmg["Ground Strike"]=set_combine(sets.ws.dmg["Resolution"],{})

	sets.ws.dmg["Herculean Slash"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})

	sets.ws.dmg["Requiescat"]={ammo="Hydrocera", head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
	body={ name="Carm. Scale Mail", augments={'Accuracy+10','DEX+10','MND+15',}},     hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
	legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}}, feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
	neck="Fotia Gorget", waist="Fotia Belt", left_ear="Sherida Earring", right_ear="Brutal Earring",
	left_ring="Levia. Ring", right_ring="Levia. Ring", back="Bleating Mantle",}

	sets.ws.dmg["Sanguine Blade"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})

	sets.ws.dmg["Burning Blade"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})

	sets.ws.dmg["Red Lotus Blade"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})

	sets.ws.dmg["Shining Blade"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})

	sets.ws.dmg["Seraph Blade"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})

	sets.ws.dmg["Savage Blade"]=set_combine(sets.ws.dmg["Resolution"],{})

	sets.ws.dmg["Vorpal Blade"]=set_combine(sets.ws.dmg["Resolution"],{})

	sets.ws.dmg["Circle Blade"]=set_combine(sets.ws.dmg["Resolution"],{})

	sets.ws.dmg["Swift Blade"]=set_combine(sets.ws.dmg["Resolution"],{})

	sets.ws.dmg["Fast Blade"]=set_combine(sets.ws.dmg["Resolution"],{})

	sets.ws.dmg["Flat Blade"]=set_combine(sets.ws.dmg["Resolution"],{})

	sets.ws.dmg["Fell Cleave"]={ammo="Seeth. Bomblet +1", neck="Fotia Gorget",
    head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}}, left_ear="Telos Earring",
    body={ name="Lustratio Harness", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}}, right_ring="Ifrit Ring",
    hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','Haste+2%',}}, left_ring="Ifrit Ring +1",
    legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
    feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, waist="Fotia Belt",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}

	sets.ws.dmg["Steel Cyclone"]=set_combine(sets.ws.dmg["Resolution"],{})

	sets.ws.dmg["Weapon Break"]=set_combine(sets.ws.dmg["Resolution"],{})

	sets.ws.dmg["Keen Edge"]=set_combine(sets.ws.dmg["Resolution"],{})

	sets.ws.dmg["Armor Break"]=set_combine(sets.ws.dmg["Resolution"],{})

	sets.ws.dmg["Sturmwind"]=set_combine(sets.ws.dmg["Resolution"],{})

	sets.ws.dmg["Iron Tempest"]=set_combine(sets.ws.dmg["Resolution"],{})

	sets.ws.dmg["Shield Break"]=set_combine(sets.ws.dmg["Resolution"],{})

	sets.ws.acc["Resolution"]={ammo="Seeth. Bomblet +1", head="Adhemar Bonnet +1", neck="Fotia Gorget", waist="Fotia Belt", body="Adhemar Jacket +1",
	hands="Meg. Gloves +2", right_ear="Telos Earring",
	legs="Samnuha Tights",
	feet={ name="Adhemar Gamashes", augments={'STR+10','DEX+10','Attack+15',}}, left_ear="Sherida Earring",
	left_ring="Ifrit Ring +1", right_ring="Epona's Ring", back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}

	sets.ws.acc["Dimidiation"]={ammo="Seeth. Bomblet +1", head="Adhemar Bonnet +1", body="Adhemar Jacket +1",
	hands="adhemar Wrist. +1", legs="Lustratio Subligar", feet={ name="Adhemar Gamashes", augments={'STR+10','DEX+10','Attack+15',}}, neck="Fotia Gorget",
	waist="Fotia Belt", left_ear="Sherida Earring", right_ear="Telos Earring",
	left_ring="Ramuh Ring +1", right_ring="Epona's Ring", back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}

	sets.ws.acc["Hard Slash"]=set_combine(sets.ws.acc["Resolution"],{})

	sets.ws.acc["Power Slash"]=set_combine(sets.ws.acc["Resolution"],{})

	sets.ws.acc["Frostbite"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})

	sets.ws.acc["Freezebite"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})

	sets.ws.acc["Shockwave"]=set_combine(sets.ws.acc["Resolution"],{})

	sets.ws.acc["Crescent Moon"]=set_combine(sets.ws.acc["Resolution"],{})

	sets.ws.acc["Sickle Moon"]=set_combine(sets.ws.acc["Resolution"],{})

	sets.ws.acc["Spinning Slash"]=set_combine(sets.ws.acc["Resolution"],{})

	sets.ws.acc["Ground Strike"]=set_combine(sets.ws.acc["Resolution"],{})

	sets.ws.acc["Herculean Slash"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})

	sets.ws.acc["Requiescat"]={ammo="Hydrocera", head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
	body={ name="Carm. Scale Mail", augments={'Accuracy+10','DEX+10','MND+15',}},     hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
	legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}}, feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
	neck="Fotia Gorget", waist="Fotia Belt", left_ear="Sherida Earring", right_ear="Telos Earring",
	left_ring="Levia. Ring", right_ring="Levia. Ring", back="Bleating Mantle",}

	sets.ws.acc["Sanguine Blade"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})

	sets.ws.acc["Burning Blade"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})

	sets.ws.acc["Red Lotus Blade"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})

	sets.ws.acc["Shining Blade"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})

	sets.ws.acc["Seraph Blade"]=set_combine(sets.ja["Lunge"], {neck="Fotia Gorget", waist="Fotia Belt"})

	sets.ws.acc["Savage Blade"]=set_combine(sets.ws.acc["Resolution"],{})

	sets.ws.acc["Vorpal Blade"]=set_combine(sets.ws.acc["Resolution"],{})

	sets.ws.acc["Circle Blade"]=set_combine(sets.ws.acc["Resolution"],{})

	sets.ws.acc["Swift Blade"]=set_combine(sets.ws.acc["Resolution"],{})

	sets.ws.acc["Fast Blade"]=set_combine(sets.ws.acc["Resolution"],{})

	sets.ws.acc["Flat Blade"]=set_combine(sets.ws.acc["Resolution"],{})

	sets.ws.acc["Fell Cleave"]=set_combine(sets.ws.acc["Resolution"],{})

	sets.ws.acc["Steel Cyclone"]=set_combine(sets.ws.acc["Resolution"],{})

	sets.ws.acc["Weapon Break"]=set_combine(sets.ws.acc["Resolution"],{})

	sets.ws.acc["Keen Edge"]=set_combine(sets.ws.acc["Resolution"],{})

	sets.ws.acc["Armor Break"]=set_combine(sets.ws.acc["Resolution"],{})

	sets.ws.acc["Sturmwind"]=set_combine(sets.ws.acc["Resolution"],{})

	sets.ws.acc["Iron Tempest"]=set_combine(sets.ws.acc["Resolution"],{})

	sets.ws.acc["Shield Break"]=set_combine(sets.ws.acc["Resolution"],{})

	sets.ws.dmg["Ruinator"]={ammo="Seeth. Bomblet +1", head="Lustratio Cap", neck="Fotia Gorget", waist="Fotia Belt",
	body="Adhemar Jacket +1",
	hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}},  right_ear="Bladeborn Earring",
	legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
	feet={ name="Adhemar Gamashes", augments={'STR+10','DEX+10','Attack+15',}}, left_ear="Steelflash Earring",
	left_ring="Ifrit Ring +1", right_ring="Epona's Ring", back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}

	sets.ws.acc["Ruinator"]={ammo="Seeth. Bomblet +1", head="Adhemar Bonnet +1", neck="Fotia Gorget", waist="Fotia Belt", body="Adhemar Jacket +1",
	hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','System: 2 ID: 119 Val: 1',}}, right_ear="Bladeborn Earring",
	legs="Samnuha Tights",
	feet={ name="Adhemar Gamashes", augments={'STR+10','DEX+10','Attack+15',}}, left_ear="Steelflash Earring",
	left_ring="Ifrit Ring +1", right_ring="Epona's Ring", back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},}

	sets.moonshadephysicaldamage={left_ear="Sherida Earring", right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},}

	sets.moonshadephysicalaccuracy={left_ear="Sherida Earring", right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},}

	sets.moonshademagic={left_ear="Friomisi Earring", right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},}
	--ws sets

	--magic sets
	sets.precast.fc={
		ammo="Sapience Orb",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body={ name="Samnuha Coat", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+5','"Dual Wield"+5',}},
		waist="Flume Belt +1",
		hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}},
		left_ear="Loquac. Earring",
		legs="Aya. Cosciales +2",
		right_ear="Enchntr. Earring +1", left_ring="Kishar Ring",
		feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
		back={ name="Ogma's cape", augments={'"Fast Cast"+10',}},
		neck="Voltsurge Torque",
		right_ring="Rahab Ring",
  }

	sets.precast.enhancing= set_combine(sets.precast.fc, {waist="Siegel Sash", legs="Futhark Trousers +3",})
	--magic sets
--precast sets

--midcast sets
	sets.enhancing={
		ammo="Staunch Tathlum +1",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands="Runeist's Mitons +3",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    feet="Turms Leggings +1",
    neck="Incanter's Torque",
    waist="Olympus Sash",
    left_ear="Andoaa Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Merciful Cape",
	}

	sets.midcast.regens= {
		ammo="Staunch Tathlum +1",
    head="Rune. Bandeau +3",
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands="Regal Gauntlets",
    legs={ name="Futhark Trousers +3", augments={'Enhances "Inspire" effect',}},
    feet="Turms Leggings +1",
    neck="Incanter's Torque",
    waist="Siegel Sash",
    left_ear="Andoaa Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Merciful Cape",
	}

	sets.midcast.barspells= {
		ammo="Staunch Tathlum +1",
    head="Erilaz Galea +1",
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands="Runeist's Mitons +3",
    legs={ name="Futhark Trousers +3", augments={'Enhances "Inspire" effect',}},
    feet="Turms Leggings +1",
    neck="Incanter's Torque",
    waist="Olympus Sash",
    left_ear="Andoaa Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Merciful Cape",
	}

	sets.midcast.ma["Phalanx"]={
		ammo="Staunch Tathlum +1",
    head={ name="Fu. Bandeau +3", augments={'Enhances "Battuta" effect',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -9%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -8%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -9%','Phalanx +3',}},
    neck="Incanter's Torque",
    waist="Olympus Sash",
    left_ear="Andoaa Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Merciful Cape",
	}

	sets.midcast.ma["Temper"]={
		ammo="Staunch Tathlum +1",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands="Runeist's Mitons +3",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    feet="Turms Leggings +1",
    neck="Incanter's Torque",
    waist="Olympus Sash",
    left_ear="Andoaa Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Merciful Cape",
	}

	sets.midcast.ma["Stoneskin"]= set_combine(sets.enhancing, {
		head="Erilaz Galea +1",
		hands="Regal Gauntlets",
		legs={ name="Futhark Trousers +3", augments={'Enhances "Inspire" effect',}},
		waist="Siegel Sash",
})

	sets.midcast.ma["Refresh"]= set_combine(sets.enhancing, {
		head="Erilaz Galea +1",
		hands="Regal Gauntlets",
		waist="Gishdubar Sash",
		legs={ name="Futhark Trousers +3", augments={'Enhances "Inspire" effect',}},
})

	sets.midcast.ma["Foil"]= set_combine(sets.enmity, {})

	sets.midcast.ma["Aquaveil"]= set_combine(sets.enhancing, {
		head="Erilaz Galea +1",
		hands="Regal Gauntlets",
		legs={ name="Futhark Trousers +3", augments={'Enhances "Inspire" effect',}},
	})

	sets.midcast.ma["Cure"]={ammo="Impatiens", head="Erilaz Galea +1", body="Emet Harness +1", feet="Skaoi Boots",
	hands={ name="Buremte Gloves", augments={'Haste+2','"Snapshot"+2','"Fast Cast"+3',}}, legs="Eri. Leg Guards +1",
	neck="Phalaina Locket", waist="Gishdubar Sash", left_ear="Roundel Earring", right_ear="Mendi. Earring",
	left_ring="Vocane Ring +1", right_ring="Eihwaz Ring", back="Solemnity Cape",}

	sets.midcast.ma["Cure II"]={ammo="Impatiens", head="Erilaz Galea +1", body="Emet Harness +1", feet="Skaoi Boots",
	hands={ name="Buremte Gloves", augments={'Haste+2','"Snapshot"+2','"Fast Cast"+3',}}, legs="Eri. Leg Guards +1",
	neck="Phalaina Locket", waist="Gishdubar Sash", left_ear="Roundel Earring", right_ear="Mendi. Earring",
	left_ring="Vocane Ring +1", right_ring="Eihwaz Ring", back="Solemnity Cape",}

	sets.midcast.ma["Cure III"]={ammo="Impatiens", head="Erilaz Galea +1", body="Emet Harness +1", feet="Skaoi Boots",
	hands={ name="Buremte Gloves", augments={'Haste+2','"Snapshot"+2','"Fast Cast"+3',}}, legs="Eri. Leg Guards +1",
	neck="Phalaina Locket", waist="Gishdubar Sash", left_ear="Roundel Earring", right_ear="Mendi. Earring",
	left_ring="Vocane Ring +1", right_ring="Eihwaz Ring", back="Solemnity Cape",}

	sets.midcast.ma["Cure IV"]={ammo="Impatiens", head="Erilaz Galea +1", body="Emet Harness +1", feet="Skaoi Boots",
	hands={ name="Buremte Gloves", augments={'Haste+2','"Snapshot"+2','"Fast Cast"+3',}}, legs="Eri. Leg Guards +1",
	neck="Phalaina Locket", waist="Gishdubar Sash", left_ear="Roundel Earring", right_ear="Mendi. Earring",
	left_ring="Vocane Ring +1", right_ring="Eihwaz Ring", back="Solemnity Cape",}

	sets.midcast.ma["Curaga"]={ammo="Impatiens", head="Erilaz Galea +1", body="Emet Harness +1", feet="Skaoi Boots",
	hands={ name="Buremte Gloves", augments={'Haste+2','"Snapshot"+2','"Fast Cast"+3',}}, legs="Eri. Leg Guards +1",
	neck="Phalaina Locket", waist="Gishdubar Sash", left_ear="Roundel Earring", right_ear="Mendi. Earring",
	left_ring="Vocane Ring +1", right_ring="Eihwaz Ring", back="Solemnity Cape",}

	sets.midcast.ma["Curaga II"]={ammo="Impatiens", head="Erilaz Galea +1", body="Emet Harness +1", feet="Skaoi Boots",
	hands={ name="Buremte Gloves", augments={'Haste+2','"Snapshot"+2','"Fast Cast"+3',}}, legs="Eri. Leg Guards +1",
	neck="Phalaina Locket", waist="Gishdubar Sash", left_ear="Roundel Earring", right_ear="Mendi. Earring",
	left_ring="Vocane Ring +1", right_ring="Eihwaz Ring", back="Solemnity Cape",}

	sets.midcast.ma["Cura"]={ammo="Impatiens", head="Erilaz Galea +1", body="Emet Harness +1", feet="Skaoi Boots",
	hands={ name="Buremte Gloves", augments={'Haste+2','"Snapshot"+2','"Fast Cast"+3',}}, legs="Eri. Leg Guards +1",
	neck="Phalaina Locket", waist="Gishdubar Sash", left_ear="Roundel Earring", right_ear="Mendi. Earring",
	left_ring="Vocane Ring +1", right_ring="Eihwaz Ring", back="Solemnity Cape",}

	sets.midcast.ma["Cura II"]={ammo="Impatiens", head="Erilaz Galea +1", body="Emet Harness +1", feet="Skaoi Boots",
	hands={ name="Buremte Gloves", augments={'Haste+2','"Snapshot"+2','"Fast Cast"+3',}}, legs="Eri. Leg Guards +1",
	neck="Phalaina Locket", waist="Gishdubar Sash", left_ear="Roundel Earring", right_ear="Mendi. Earring",
	left_ring="Vocane Ring +1", right_ring="Eihwaz Ring", back="Solemnity Cape",}

	sets.midcast.ma["Flash"]= set_combine(sets.precast.fc, {neck="Warder's Charm +1", hands="Futhark Mitons +3", left_ring="Eihwaz Ring",})
--midcast sets

--aftercast sets
	--tp sets
	sets.tp.Lionheart={}
	sets.tp.Epeolatry={}
	sets.tp.Naegling={}
	sets.tp.Lycurgos={}
	sets.tp.Dolichenus={}

	sets.tp.lowacc={
		ammo="Aurgelmir Orb +1",
    head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
    feet={ name="Herculean Boots", augments={'Accuracy+16','"Triple Atk."+4','AGI+2','Attack+9',}},
    neck="Anu Torque",
    waist="Windbuffet Belt +1",
    left_ear="Sherida Earring",
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epona's Ring",
    back={ name="Ogma's cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10',}},
	}

	sets.tp.medacc={
		ammo="Aurgelmir Orb +1",
		neck="Defiant Collar",
		waist="Chiner's Belt +1",
		left_ear="Sherida Earring",
		right_ear="Telos Earring",
		head={ name="Herculean Helm", augments={'Accuracy+30','"Triple Atk."+4','Attack+8',}},
		right_ring="Epona's Ring",
		body={ name="Herculean Vest", augments={'Accuracy+13 Attack+13','"Triple Atk."+4','MND+3','Attack+13',}},
		left_ring="Hetairoi Ring",
		hands={ name="Herculean Gloves", augments={'"Triple Atk."+4','Accuracy+13','Attack+5',}},
		legs="Meg. Chausses +2",
		feet={ name="Herculean Boots", augments={'Accuracy+16','"Triple Atk."+4','AGI+2','Attack+9',}}, back={ name="Ogma's cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
	}

	sets.tp.highacc= set_combine(sets.tp.medacc, {neck="Combatant's Torque", right_ring="Ramuh Ring +1",})

	sets.tp.vhighacc= set_combine(sets.tp.highacc, {hands="adhemar Wrist. +1", waist="Olseni Belt", left_ring="Ilabrat Ring",})

	sets.dw.lowacc={ammo="Vanir Battery",
    head="Adhemar Bonnet +1",
    body="Adhemar Jacket +1",
    hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
    feet={ name="Taeon Boots", augments={'Accuracy+19 Attack+19','"Triple Atk."+2','Crit. hit damage +2%',}},
    neck="Defiant Collar",
    waist="Windbuffet Belt +1",
    right_ear="Suppanomimi",
    left_ear="Telos Earring",
    left_ring="Hetairoi Ring",
    right_ring="Epona's Ring",
    back="Bleating Mantle",}

	sets.dw.medacc=set_combine(sets.dw.lowacc, {ammo="Falcon Eye", back={ name="Ogma's cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},})

	sets.dw.highacc=set_combine(sets.tp.medacc, {neck="Combatant's Torque", left_ring="Patricius Ring",})

	sets.dw.vhighacc={ammo="Falcon Eye", waist="Olseni Belt", left_ear="Telos Earring", right_ear="Mache Earring +1",
	head={ name="Herculean Helm", augments={'Accuracy+30','"Triple Atk."+4','Attack+8',}},
	body="Adhemar Jacket +1", right_ring="Ramuh Ring +1",
	hands={ name="Herculean Gloves", augments={'Attack+27','"Triple Atk."+3','STR+8','Accuracy+11',}}, left_ring="Regal Ring",
	legs="Samnuha Tights",
	feet={ name="Herculean Boots", augments={'Accuracy+16','"Triple Atk."+4','AGI+2','Attack+9',}}, neck="Combatant's Torque", back="Ground. Mantle +1",}
	--tp sets

	--hybrid sets
	sets.hybrid.lowacc={ammo="Vanir Battery", head="Fu. Bandeau +3", body="Futhark Coat +3",
	hands="Nyame Gauntlets",
	legs="Rune. Trousers +3", feet="Futhark Boots +3", neck="Futhark Torque +2",
	waist="Flume Belt +1", left_ear="Ethereal Earring", right_ear="Brutal Earring", left_ring="Vocane Ring +1",
	right_ring="Defending Ring", back="Moonlight Cape",}

	sets.hybrid.medacc= set_combine(sets.hybrid.lowacc, {ammo="Falcon Eye", back={ name="Ogma's cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},})

	sets.hybrid.highacc= set_combine(sets.hybrid.medacc, {head={ name="Herculean Helm", augments={'Accuracy+30','"Triple Atk."+4','Attack+8',}}, neck="Combatant's Torque",})

	sets.hybrid.vhighacc= set_combine(sets.hybrid.highacc, {waist="Olseni Belt", legs="Samnuha Tights",})
	--hybrid sets

	--dt sets
	sets.pdt={ammo="Vanir Battery", head="Fu. Bandeau +3", body="Futhark Coat +3",
	hands="Nyame Gauntlets", legs="Eri. Leg Guards +1", feet="Erilaz Greaves +1", neck="Futhark Torque +2", waist="Flume Belt +1",
	left_ear="Ethereal Earring", right_ear="Sanare Earring", right_ring="Defending Ring", left_ring="Vocane Ring +1",
	back="Moonlight Cape",}

	sets.mdt= set_combine(sets.pdt, {left_ring="Shadow Ring",})

	sets.dt={ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body={ name="Futhark Coat +3", augments={'Enhances "Elemental Sforzo" effect',}},
    hands="Nyame Gauntlets",
    legs="Aya. Cosciales +2",
    feet="Nyame Sollerets",
    neck="Futhark Torque +2",
    waist="Flume Belt +1",
    left_ear="Ethereal Earring",
    right_ear="Sanare Earring",
    left_ring="Vocane Ring +1",
    right_ring="Defending Ring",
    back="Moonlight Cape",}
	--dt sets

	--tank set
	sets.aftercast.tanking={
		ammo="Staunch Tathlum +1",
		head={ name="Fu. Bandeau +3", augments={'Enhances "Battuta" effect',}},
		body={ name="Futhark Coat +3", augments={'Enhances "Elemental Sforzo" effect',}},
		hands="Turms Mittens +1",
		legs="Eri. Leg Guards +1",
		feet="Turms Leggings +1",
		neck="Futhark Torque +2",
		waist="Flume Belt +1",
		left_ear="Genmei Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Vocane Ring +1",
		right_ring="Defending Ring",
		back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}},
	}
	sets.aftercast.parry={
		ammo="Staunch Tathlum +1",
    head={ name="Fu. Bandeau +3", augments={'Enhances "Battuta" effect',}},
    body={ name="Futhark Coat +3", augments={'Enhances "Elemental Sforzo" effect',}},
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +1",
    feet="Turms Leggings +1",
    neck={ name="Futhark Torque +2", augments={'Path: A',}},
    waist="Flume Belt +1",
    left_ear="Tuisto Earring",
    right_ear="Etiolation Earring",
    left_ring="Moonlight Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}},
	}

	sets.aftercast.resist={
		ammo="Yamarang",
		head="Turms Cap +1",
		body="Runeist's Coat +3",
		hands="Turms Mittens +1",
		legs="Eri. Leg Guards +1",
		feet="Turms Leggings +1",
		neck={ name="Futhark Torque +2", augments={'Path: A',}},
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear="Eabani Earring",
		left_ring="Moonlight Ring",
		right_ring="Defending Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}},
	}

	sets.aftercast.meva={
		ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Turms Mittens +1",
    legs="Nyame Flanchard",
    feet="Turms Leggings +1",
    neck={ name="Futhark Torque +2", augments={'Path: A',}},
    waist="Carrier's Sash",
    left_ear="Eabani Earring",
    right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    right_ring="Moonlight Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Phys. dmg. taken-10%',}},
	}

	sets.aftercast.maxhp={
		ammo="Staunch Tathlum +1",
    head={ name="Fu. Bandeau +3", augments={'Enhances "Battuta" effect',}},
    body="Erilaz Surcoat +1",
    hands="Nyame Gauntlets",
    legs="Eri. Leg Guards +1",
    feet="Erilaz Greaves +1",
    neck={ name="Futhark Torque +2", augments={'Path: A',}},
    waist="Oneiros Belt",
    left_ear="Tuisto Earring",
    right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    left_ring="Moonlight Ring",
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    back="Moonlight Cape",
	}
	--tank set

	--idle sets
	sets.idle.refresh={
		ammo="Homiliary",
		head="Rawhide Mask",
		body="Runeist's Coat +3",
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
		feet="Erilaz Greaves +1",
		neck="Futhark Torque +2",
		waist="Flume Belt +1",
		left_ear="Ethereal Earring",
		right_ear="Sanare Earring",
		hands="Nyame Gauntlets",
		right_ring="Shadow Ring", left_ring="Sheltered Ring", back="Shadow Mantle",
	}

	sets.idle.pdt=set_combine(sets.pdt,{})

	sets.idle.mdt=set_combine(sets.mdt,{})

	sets.idle.maxhp=set_combine(sets.aftercast.maxhp,{})

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
		if spell.english=="Lunge" or spell.english=="Swipe" then
			if Burst_Mode=="on" then
				equip(sets.ja.Lunge.burst)
			end
		end
	elseif spell.prefix=="/weaponskill" then
		if WSType=="dmg" then
			equip(sets.ws.dmg[spell.english])
		elseif WSType=="acc" then
			equip(sets.ws.acc[spell.english])
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
	equip(sets.weaponry[weaponry])
	send_command('pf')
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
	equip(sets.weaponry[weaponry])
	send_command('pf')
end

function aftercast(spell)
	if spell.english == "Gambit" and not spell.interrupted then -- Gambit Countdown --
        send_command ('input /p [Gambit ON] ;wait 42;input /p Gambit [WEARING OFF IN 30 SEC];wait 20;input /p Gambit [WEARING OFF IN 10 SEC];wait 10;input /p Gambit [OFF]')
	end
    if spell.english == "Rayke" and not spell.interrupted then -- Rayke Countdown --
            send_command ('input /p [Rayke ON] ;wait 25;input /p Rayke [WEARING OFF IN 25 SEC];wait 15;input /p Rayke [WEARING OFF IN 10 SEC];wait 10;input /p Rayke [OFF]')
    end
	status_change(player.status)
	send_command('pf')
end

function status_change(new,old)
	if new=="Engaged" then
		if TPSet=="dd" then
			equip(sets.tp[Acc])
		elseif TPSet=="hybrid" then
			equip(sets.hybrid[Acc])
		elseif TPSet=="pdt" then
			equip(sets.pdt)
		elseif TPSet=="mdt" then
			equip(sets.mdt)
		elseif TPSet=="tanking" then
			equip(sets.aftercast.tanking)
		elseif TPSet=="meva" then
			equip(sets.aftercast.meva)
		end
	else
		equip(sets.idle[IdleType])
	end
	equip(sets.weaponry[weaponry])
	send_command('pf')
	macro_setup()
end

function self_command(command)
	--tpset commands
	if command=="DD" then
		TPSet="dd"
		add_to_chat(206, 'DD MODE')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/ddmode.png')
		status_change(player.status)
		send_command('pf')
	elseif command=="Hybrid" then
		TPSet="hybrid"
		add_to_chat(206, 'HYBRID MODE')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/hybridmode.png')
		status_change(player.status)
		send_command('pf')
	elseif command=="PDT" then
		TPSet="pdt"
		add_to_chat(206, 'PDT MODE')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/pdtmode.png')
		status_change(player.status)
		send_command('pf')
	elseif command=="MDT" then
		TPSet="mdt"
		add_to_chat(206, 'MDT MODE')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/mdtmode.png')
		status_change(player.status)
		send_command('pf')
	elseif command=="TANK" then
		TPSet="tanking"
		add_to_chat(206, 'TANK MODE')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/absorbmode.png')
		status_change(player.status)
		send_command('pf')
	elseif command=="meva" then
		TPSet="meva"
		add_to_chat(206, 'MEVA MODE')
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/meva.png')
		status_change(player.status)
		send_command('pf')
	end
	--tpset commands

	--accuracy commands
	if command== 'toggleaccuracy' then
		if Acc=="lowacc" then
			Acc="medacc"
			add_to_chat(206, 'Medium Accuracy Mode')
			windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/medacc.png')
			send_command('alias ddset gs equip sets.tp.medacc')
			send_command('alias tankset gs equip sets.hybrid.medacc')
			status_change(player.status)
		elseif Acc=="medacc" then
			Acc="highacc"
			add_to_chat(206, 'High Accuracy Mode')
			windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/highacc.png')
			send_command('alias ddset gs equip sets.tp.highacc')
			send_command('alias tankset gs equip sets.hybrid.highacc')
			status_change(player.status)
		elseif Acc=="highacc" then
			Acc="vhighacc"
			add_to_chat(206, 'Very High Accuracy Mode')
			windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/maxacc.png')
			send_command('alias ddset gs equip sets.tp.vhighacc')
			send_command('alias tankset gs equip sets.hybrid.vhighacc')
			status_change(player.status)
		elseif Acc=="vhighacc" then
			Acc="lowacc"
			add_to_chat(206, 'Low Accuracy Mode')
			windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/lowacc.png')
			send_command('alias ddset gs equip sets.tp.lowacc')
			send_command('alias tankset gs equip sets.hybrid.lowacc')
			status_change(player.status)
		end
		send_command('pf')
	end
	--wsacctoggle
	if command=="togglews" then
		if WSType=="dmg" then
			WSType="acc"
			windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/images/acc.png')
		else
			WSType="dmg"
			windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/images/dmg.png')
		end
		send_command('pf')
	end
	--wsacctoggle

	--weapon set commands
	if command=='Lionheart' then
		weaponry='Lionheart'
		add_to_chat(206, ''..weaponry)
		windower.prim.set_texture('WEAPON_TYPE',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		status_change(player.status)
	end
	if command=='Epeolatry' then
		weaponry='Epeolatry'
		add_to_chat(206, ''..weaponry)
		windower.prim.set_texture('WEAPON_TYPE',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		status_change(player.status)
	end
	if command=='Aettir' then
		weaponry='Aettir'
		add_to_chat(206, ''..weaponry)
		windower.prim.set_texture('WEAPON_TYPE',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		status_change(player.status)
	end
	if command=='Lycurgos' then
		weaponry='Lycurgos'
		add_to_chat(206, ''..weaponry)
		windower.prim.set_texture('WEAPON_TYPE',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		status_change(player.status)
	end
	if command=='Naegling' then
		weaponry='Naegling'
		add_to_chat(206, ''..weaponry)
		windower.prim.set_texture('WEAPON_TYPE',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		status_change(player.status)
	end
	if command=='Dolichenus' then
		weaponry='Dolichenus'
		add_to_chat(206, ''..weaponry)
		windower.prim.set_texture('WEAPON_TYPE',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		status_change(player.status)
	end
	if command=='dwNaegling' then
		weaponry='dwNaegling'
		add_to_chat(206, ''..weaponry)
		windower.prim.set_texture('WEAPON_TYPE',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		status_change(player.status)
	end
	if command=='dwDolichenus' then
		weaponry='dwDolichenus'
		add_to_chat(206, ''..weaponry)
		windower.prim.set_texture('WEAPON_TYPE',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		status_change(player.status)
	end
	--weapon set commands

	--idle set commands
	if command=='toggleidle' then
		if IdleType=="maxhp" then
			IdleType='pdt'
			add_to_chat(206,'PDT IDLE')
			windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/pdtidle.png')
			send_command('alias idle gs equip sets.idle.pdt')
			status_change(player.status)
		elseif IdleType=="pdt" then
			IdleType='mdt'
			add_to_chat(206,'MDT IDLE')
			windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/mdtidle.png')
			send_command('alias idle gs equip sets.idle.mdt')
			status_change(player.status)
		elseif IdleType=="mdt" then
			IdleType='refresh'
			add_to_chat(206,'REFRESH IDLE')
			windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/refreshidle.png')
			send_command('alias idle gs equip sets.idle.refresh')
			status_change(player.status)
		elseif IdleType=="refresh" then
			IdleType='maxhp'
			add_to_chat(206,'REFRESH IDLE')
			windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/maxhpidle.png')
			send_command('alias idle gs equip sets.idle.maxhp')
			status_change(player.status)
		end
		send_command('pf')
	end
	--idle set commands
	--rune commands
	if command=="Cycle_Runes" then
		runes=runes+1
		if runes > #sets.runes.index then
			runes=1
		end
		add_to_chat(206,'RUNE>>>>'..sets.runes.index[runes])
		windower.prim.set_texture('ACTIVE_RUNE',''..windower.windower_path..'addons/gearswap/data/images/'..sets.runes.index[runes]..'.png')
		send_command('pf')
	end
	if command=="Use_Rune" then
		send_command(''..sets.runes.index[runes])
	end
	--rune commands
	if command=="burstmode" then
		if Burst_Mode=="on" then
			Burst_Mode="off"
			add_to_chat(206,'BURST MODE: OFF')
		else
			Burst_Mode="on"
			add_to_chat(206,'BURST MODE: ON')
		end
	end
	if command=='primfix' then
		windower.prim.set_size('TP_SET',200,30)
		windower.prim.set_size('ACC_SET',200,30)
		windower.prim.set_size('IDLE_SET',200,30)
		windower.prim.set_size('WS_SET',200,30)
		windower.prim.set_size('ACTIVE_RUNE',200,50)
		windower.prim.set_size('WEAPON_TYPE',200,50)
	end
end

function macro_setup()
	if player.sub_job=="BLU" then
	send_command('input /macro book 1;input /macro set 3')
	send_command('bind !- input /ma "Jettatura" <t>')
	send_command('bind != input /ma "Geist Wall" <t>')
	send_command('bind @- input /ma "Soporific" <t>')
	send_command('bind @= input /ma "Sheep Song" <t>')
	send_command('bind !backspace input /ma "Blank Gaze" <t>')
	send_command('bind @/ Cursed Sphere')

	elseif player.sub_job=="WHM" then
	send_command('input /macro book 1;input /macro set 3')
	send_command('bind !- stna')
	send_command('bind != erase me')
	send_command('bind @- c4 me')
	send_command('bind @= curaga2')
	send_command('bind !backspace cure <st>')
	send_command('bind @backspace curaga <st>')

	elseif player.sub_job=="PLD" then
	send_command('input /macro book 1;input /macro set 3')
	send_command('bind !- sentinel')
	send_command('bind != cover <stpt>')
	send_command('bind @- c3 me')
	send_command('bind @= Banishga')
	send_command('bind !backspace cure <st>')
	send_command('bind @backspace input /echo blankmacro')

	elseif player.sub_job=="RDM" then
	send_command('input /macro book 1;input /macro set 3')

	elseif player.sub_job=="WAR" then
	send_command('input /macro book 1;input /macro set 4')

	elseif player.sub_job=="SAM" then
	send_command('input /macro book 1;input /macro set 5')

	elseif player.sub_job=="NIN" then
	send_command('input /macro book 1;input /macro set 6')

	elseif player.sub_job=="DNC" then
	send_command('input /macro book 1;input /macro set 6')

	elseif player.sub_job=="BLM" then
	send_command('input /macro book 1;input /macro set 3')

	end
end
