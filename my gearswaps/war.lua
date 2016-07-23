function get_sets()
-- includes
include('tco-include.lua')
include('organizer-lib.lua')
-- includes
--text box setup

--text box setup

--default aliases

--default aliases

--keybinds

--keybinds

--macro selection
	send_command('input /macro book 6;input /macro set 1')
--macro selection

--variables
	TPMode="tp"
	TPType="lowacc"	
	IdleType="regen"
	WSType="Damage"
	Weaponry="GA"
	WeaponryClass="2h"
	TriggerMode="off"
	
	sets.TPMode=T{}
	sets.TPType=T{}	
	sets.IdleType=T{}
	sets.WSType=T{}
	sets.Weaponry=T{}
	sets.WeaponryClass=T{}
	sets.TriggerMode=T{}
--variables

--base sets
	sets.weaponry={}
	sets.ja={}
	sets.ws={}
	sets.ws.damage={}
	sets.ws.accuracy={}
	sets.ma={}
	sets.ninjutsu={}
	sets.hybrid={}
	sets.idle={}
	sets.tp={}
	sets.otp={}
	sets.rtp={}
	sets.rotp={}
--base sets

--weaponry
	sets.weaponry.GA={main="Reikiono", sub="Bloodrain Strap",}
	
	sets.weaponry.GS={main="Macbain", sub="Bloodrain Strap",}
	
	sets.weaponry.axes={}
	
	sets.weaponry.swords={}
--weaponry

--precast sets
	--job ability sets
	
	--job ability sets
	
	--weaponskill sets
	sets.ws.damage["Shield Break"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Shield Break"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.damage["Iron Tempest"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Iron Tempest"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.damage["Sturmwind"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Sturmwind"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.damage["Armor Break"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Armor Break"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.damage["Keen Edge"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Keen Edge"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.damage["Weapon Break"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Weapon Break"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.damage["Raging Rush"]={ammo="Yetshila", head={ name="Argosy Celata", augments={'DEX+10','Accuracy+15','"Dbl.Atk."+2',}}, legs="Jokushu Haidate",
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands={ name="Argosy Mufflers", augments={'STR+15','"Dbl.Atk."+2','Haste+2%',}},
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring", left_ring="Apate Ring",
	left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, right_ring="Rajas Ring", back="Rancorous Mantle",}
	
	sets.ws.accuracy["Raging Rush"]={ammo="Yetshila", head={ name="Argosy Celata", augments={'DEX+10','Accuracy+15','"Dbl.Atk."+2',}}, legs="Jokushu Haidate",
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands={ name="Argosy Mufflers", augments={'STR+15','"Dbl.Atk."+2','Haste+2%',}},
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring", left_ring="Apate Ring",
	left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, right_ring="Rajas Ring", back="Rancorous Mantle",}
	
	sets.ws.damage["Full Break"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Full Break"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.damage["Steel Cyclone"]={ammo="Seething Bomblet", head="Sulevia's Mask +1", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs="Sulevi. Cuisses +1", feet="Sulev. Leggings +1", neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
	left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Terrasoul Ring", right_ring="Terrasoul Ring",
	back="Buquwik Cape",}
	
	sets.ws.accuracy["Steel Cyclone"]={ammo="Seething Bomblet", head="Sulevia's Mask +1", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs="Sulevi. Cuisses +1", feet="Sulev. Leggings +1", neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
	left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Terrasoul Ring", right_ring="Terrasoul Ring",
	back="Buquwik Cape",}
	
	sets.ws.damage["Metatron Torment"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Metatron Torment"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.damage["King's Justice"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["King's Justice"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.damage["Fell Cleave"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Fell Cleave"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.damage["Ukko's Fury"]={ammo="Yetshila", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}}, legs="Jokushu Haidate",
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands={ name="Argosy Mufflers", augments={'STR+15','"Dbl.Atk."+2','Haste+2%',}}, 
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
	left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Apate Ring", right_ring="Rajas Ring", back="Rancorous Mantle",}
	
	sets.ws.accuracy["Ukko's Fury"]={ammo="Yetshila", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}}, legs="Jokushu Haidate",
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands={ name="Argosy Mufflers", augments={'STR+15','"Dbl.Atk."+2','Haste+2%',}}, 
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
	left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Apate Ring", right_ring="Rajas Ring", back="Rancorous Mantle",}
	
	sets.ws.damage["Upheaval"]={ammo="Seething Bomblet", head="Sulevia's Mask +1", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs="Sulevi. Cuisses +1", feet="Sulev. Leggings +1", neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
	left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Terrasoul Ring", right_ring="Terrasoul Ring",
	back="Buquwik Cape",}
	
	sets.ws.accuracy["Upheaval"]={ammo="Seething Bomblet", head="Sulevia's Mask +1", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1",
	legs="Sulevi. Cuisses +1", feet="Sulev. Leggings +1", neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
	left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Terrasoul Ring", right_ring="Terrasoul Ring",
	back="Buquwik Cape",}
	--GA WS SETS END
	
	--GS WS SETS START
	sets.ws.damage["Hard Slash"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Hard Slash"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.damage["Power Slash"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Power Slash"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.damage["Frostbite"]={ammo="Pemphredo Tathlum", head={ name="Founder's Corona", augments={'DEX+7','Accuracy+11','Magic dmg. taken -3%',}},
	body={ name="Found. Breastplate", augments={'Accuracy+7','Mag. Acc.+5','Attack+7',}}, neck="Fotia Gorget", waist="Fotia Belt", left_ear="Crematio Earring",
    hands={ name="Founder's Gauntlets", augments={'STR+8','Attack+15','"Mag.Atk.Bns."+13','Phys. dmg. taken -3%',}}, right_ear="Friomisi Earring",
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}}, left_ring="Acumen Ring", right_ring="Sangoma Ring",
    feet={ name="Founder's Greaves", augments={'VIT+9','Accuracy+14','"Mag.Atk.Bns."+13','Mag. Evasion+15',}}, back="Toro Cape",}
	
	sets.ws.accuracy["Frostbite"]={ammo="Pemphredo Tathlum", head={ name="Founder's Corona", augments={'DEX+7','Accuracy+11','Magic dmg. taken -3%',}},
	body={ name="Found. Breastplate", augments={'Accuracy+7','Mag. Acc.+5','Attack+7',}}, neck="Fotia Gorget", waist="Fotia Belt", left_ear="Crematio Earring",
    hands={ name="Founder's Gauntlets", augments={'STR+8','Attack+15','"Mag.Atk.Bns."+13','Phys. dmg. taken -3%',}}, right_ear="Friomisi Earring",
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}}, left_ring="Acumen Ring", right_ring="Sangoma Ring",
    feet={ name="Founder's Greaves", augments={'VIT+9','Accuracy+14','"Mag.Atk.Bns."+13','Mag. Evasion+15',}}, back="Toro Cape",}
	
	sets.ws.damage["Freezebite"]={ammo="Pemphredo Tathlum", head={ name="Founder's Corona", augments={'DEX+7','Accuracy+11','Magic dmg. taken -3%',}},
	body={ name="Found. Breastplate", augments={'Accuracy+7','Mag. Acc.+5','Attack+7',}}, neck="Fotia Gorget", waist="Fotia Belt", left_ear="Crematio Earring",
    hands={ name="Founder's Gauntlets", augments={'STR+8','Attack+15','"Mag.Atk.Bns."+13','Phys. dmg. taken -3%',}}, right_ear="Friomisi Earring",
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}}, left_ring="Acumen Ring", right_ring="Sangoma Ring",
    feet={ name="Founder's Greaves", augments={'VIT+9','Accuracy+14','"Mag.Atk.Bns."+13','Mag. Evasion+15',}}, back="Toro Cape",}
	
	sets.ws.accuracy["Freezebite"]={ammo="Pemphredo Tathlum", head={ name="Founder's Corona", augments={'DEX+7','Accuracy+11','Magic dmg. taken -3%',}},
	body={ name="Found. Breastplate", augments={'Accuracy+7','Mag. Acc.+5','Attack+7',}}, neck="Fotia Gorget", waist="Fotia Belt", left_ear="Crematio Earring",
    hands={ name="Founder's Gauntlets", augments={'STR+8','Attack+15','"Mag.Atk.Bns."+13','Phys. dmg. taken -3%',}}, right_ear="Friomisi Earring",
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}}, left_ring="Acumen Ring", right_ring="Sangoma Ring",
    feet={ name="Founder's Greaves", augments={'VIT+9','Accuracy+14','"Mag.Atk.Bns."+13','Mag. Evasion+15',}}, back="Toro Cape",}
	
	sets.ws.damage["Crescent Moon"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Crescent Moon"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.damage["Ground Strike"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Ground Strike"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.damage["Herculean Slash"]={ammo="Pemphredo Tathlum", head={ name="Founder's Corona", augments={'DEX+7','Accuracy+11','Magic dmg. taken -3%',}},
	body={ name="Found. Breastplate", augments={'Accuracy+7','Mag. Acc.+5','Attack+7',}}, neck="Fotia Gorget", waist="Fotia Belt", left_ear="Crematio Earring",
    hands={ name="Founder's Gauntlets", augments={'STR+8','Attack+15','"Mag.Atk.Bns."+13','Phys. dmg. taken -3%',}}, right_ear="Friomisi Earring",
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}}, left_ring="Acumen Ring", right_ring="Sangoma Ring",
    feet={ name="Founder's Greaves", augments={'VIT+9','Accuracy+14','"Mag.Atk.Bns."+13','Mag. Evasion+15',}}, back="Toro Cape",}
	
	sets.ws.accuracy["Herculean Slash"]={ammo="Pemphredo Tathlum", head={ name="Founder's Corona", augments={'DEX+7','Accuracy+11','Magic dmg. taken -3%',}},
	body={ name="Found. Breastplate", augments={'Accuracy+7','Mag. Acc.+5','Attack+7',}}, neck="Fotia Gorget", waist="Fotia Belt", left_ear="Crematio Earring",
    hands={ name="Founder's Gauntlets", augments={'STR+8','Attack+15','"Mag.Atk.Bns."+13','Phys. dmg. taken -3%',}}, right_ear="Friomisi Earring",
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}}, left_ring="Acumen Ring", right_ring="Sangoma Ring",
    feet={ name="Founder's Greaves", augments={'VIT+9','Accuracy+14','"Mag.Atk.Bns."+13','Mag. Evasion+15',}}, back="Toro Cape",}
	
	sets.ws.damage["Resolution"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Resolution"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	--GS WS SETS END
	--AXE WS SETS
	sets.ws.damage["Raging Axe"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Raging Axe"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.damage["Smash Axe"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Smash Axe"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.damage["Gale Axe"]={ammo="Pemphredo Tathlum", head={ name="Founder's Corona", augments={'DEX+7','Accuracy+11','Magic dmg. taken -3%',}},
	body={ name="Found. Breastplate", augments={'Accuracy+7','Mag. Acc.+5','Attack+7',}}, neck="Fotia Gorget", waist="Fotia Belt", left_ear="Crematio Earring",
    hands={ name="Founder's Gauntlets", augments={'STR+8','Attack+15','"Mag.Atk.Bns."+13','Phys. dmg. taken -3%',}}, right_ear="Friomisi Earring",
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}}, left_ring="Acumen Ring", right_ring="Sangoma Ring",
    feet={ name="Founder's Greaves", augments={'VIT+9','Accuracy+14','"Mag.Atk.Bns."+13','Mag. Evasion+15',}}, back="Toro Cape",}
	
	sets.ws.accuracy["Gale Axe"]={ammo="Pemphredo Tathlum", head={ name="Founder's Corona", augments={'DEX+7','Accuracy+11','Magic dmg. taken -3%',}},
	body={ name="Found. Breastplate", augments={'Accuracy+7','Mag. Acc.+5','Attack+7',}}, neck="Fotia Gorget", waist="Fotia Belt", left_ear="Crematio Earring",
    hands={ name="Founder's Gauntlets", augments={'STR+8','Attack+15','"Mag.Atk.Bns."+13','Phys. dmg. taken -3%',}}, right_ear="Friomisi Earring",
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}}, left_ring="Acumen Ring", right_ring="Sangoma Ring",
    feet={ name="Founder's Greaves", augments={'VIT+9','Accuracy+14','"Mag.Atk.Bns."+13','Mag. Evasion+15',}}, back="Toro Cape",}
	
	sets.ws.damage["Avalanche Axe"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Avalanche Axe"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.damage["Spinning Axe"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Spinning Axe"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.damage["Rampage"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Rampage"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.damage["Calamity"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Calamity"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.damage["Mistral Axe"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Mistral Axe"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.damage["Decimation"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.accuracy["Decimation"]={ammo="Seething Bomblet", head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
	body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}}, hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1",
	feet={ name="Lustratio Leggings", augments={'HP+50','STR+10','DEX+10',}}, neck="Fotia Gorget", waist="Fotia Belt", right_ear="Zwazo Earring",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, left_ring="Ifrit Ring +1", right_ring="Ifrit Ring", back="Buquwik Cape",}
	
	sets.ws.damage["Bora Axe"]={ammo="Pemphredo Tathlum", head={ name="Founder's Corona", augments={'DEX+7','Accuracy+11','Magic dmg. taken -3%',}},
	body={ name="Found. Breastplate", augments={'Accuracy+7','Mag. Acc.+5','Attack+7',}}, neck="Fotia Gorget", waist="Fotia Belt", left_ear="Crematio Earring",
    hands={ name="Founder's Gauntlets", augments={'STR+8','Attack+15','"Mag.Atk.Bns."+13','Phys. dmg. taken -3%',}}, right_ear="Friomisi Earring",
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}}, left_ring="Acumen Ring", right_ring="Sangoma Ring",
    feet={ name="Founder's Greaves", augments={'VIT+9','Accuracy+14','"Mag.Atk.Bns."+13','Mag. Evasion+15',}}, back="Toro Cape",}
	
	sets.ws.accuracy["Bora Axe"]={ammo="Pemphredo Tathlum", head={ name="Founder's Corona", augments={'DEX+7','Accuracy+11','Magic dmg. taken -3%',}},
	body={ name="Found. Breastplate", augments={'Accuracy+7','Mag. Acc.+5','Attack+7',}}, neck="Fotia Gorget", waist="Fotia Belt", left_ear="Crematio Earring",
    hands={ name="Founder's Gauntlets", augments={'STR+8','Attack+15','"Mag.Atk.Bns."+13','Phys. dmg. taken -3%',}}, right_ear="Friomisi Earring",
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}}, left_ring="Acumen Ring", right_ring="Sangoma Ring",
    feet={ name="Founder's Greaves", augments={'VIT+9','Accuracy+14','"Mag.Atk.Bns."+13','Mag. Evasion+15',}}, back="Toro Cape",}
	
	sets.ws.damage["Cloudsplitter"]={ammo="Pemphredo Tathlum", head={ name="Founder's Corona", augments={'DEX+7','Accuracy+11','Magic dmg. taken -3%',}},
	body={ name="Found. Breastplate", augments={'Accuracy+7','Mag. Acc.+5','Attack+7',}}, neck="Fotia Gorget", waist="Fotia Belt", left_ear="Crematio Earring",
    hands={ name="Founder's Gauntlets", augments={'STR+8','Attack+15','"Mag.Atk.Bns."+13','Phys. dmg. taken -3%',}}, right_ear="Friomisi Earring",
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}}, left_ring="Acumen Ring", right_ring="Sangoma Ring",
    feet={ name="Founder's Greaves", augments={'VIT+9','Accuracy+14','"Mag.Atk.Bns."+13','Mag. Evasion+15',}}, back="Toro Cape",}
	
	sets.ws.accuracy["Cloudsplitter"]={ammo="Pemphredo Tathlum", head={ name="Founder's Corona", augments={'DEX+7','Accuracy+11','Magic dmg. taken -3%',}},
	body={ name="Found. Breastplate", augments={'Accuracy+7','Mag. Acc.+5','Attack+7',}}, neck="Fotia Gorget", waist="Fotia Belt", left_ear="Crematio Earring",
    hands={ name="Founder's Gauntlets", augments={'STR+8','Attack+15','"Mag.Atk.Bns."+13','Phys. dmg. taken -3%',}}, right_ear="Friomisi Earring",
    legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}}, left_ring="Acumen Ring", right_ring="Sangoma Ring",
    feet={ name="Founder's Greaves", augments={'VIT+9','Accuracy+14','"Mag.Atk.Bns."+13','Mag. Evasion+15',}}, back="Toro Cape",}
	--AXE WS SETS END
	--weaponskill sets
	
	--magic sets
		sets.ma.fc={}
		
		sets.ninjutsu.fc={}
	--magic sets
--precast sets

--midcast sets
	--magic sets
		sets.ma.mc={}
		
		sets.ninjutsu.mc={}
	--magic sets
--midcast sets

--aftercast sets
	--tp sets
	sets.tp.lowacc={ammo="Paeapua",
    head="Skormoth Mask",
    body={ name="Xaddi Mail", augments={'Attack+15','Accuracy+10','"Store TP"+3',}},
	hands={ name="Xaddi Gauntlets", augments={'Accuracy+15','"Store TP"+3','"Dbl.Atk."+2',}},
	legs="Ares' Flanchard +1", neck="Asperity Necklace", waist="Windbuffet Belt +1",
	feet={ name="Ejekamal Boots", augments={'Haste+2','"Snapshot"+2','STR+8',}},
	left_ear="Tripudio Earring", right_ear="Brutal Earring", left_ring="Petrov Ring", right_ring="Rajas Ring",
    back={ name="Mauler's Mantle", augments={'DEX+3','STR+1','Accuracy+6','Crit. hit damage +1%',}},}
	
	sets.tp.medacc=set_combine(sets.tp.lowacc, {head="Yaoyotl Helm", waist="Grunfeld Rope", left_ear="Steelflash Earring", right_ear="Bladeborn Earring",})
	
	sets.tp.highacc=set_combine(sets.tp.medacc, {head="Gavialis Helm", neck="Combatant's Torque", left_ear="Tripudio Earring", right_ear="Zennaroi Earring", waist="Olseni Belt", legs={ name="Xaddi Cuisses", augments={'Attack +15','Accuracy +10','"Store TP"+3',}}, left_ring="Patricius Ring", right_ring="Mars's Ring", feet={name="Xaddi Boots", augments={'Attack +15','Accuracy +10','"Store TP"+3',}},})
	
	sets.otp.lowacc= set_combine(sets.tp.lowacc, {left_ring="Oneiros Ring",})
	
	sets.otp.medacc= set_combine(sets.tp.medacc, {left_ring="Oneiros Ring",})
	
	sets.otp.highacc= set_combine(sets.tp.highacc, {left_ring="Oneiros Ring",})
	
	sets.rtp.lowacc={}
	
	sets.rtp.medacc={}
	
	sets.rtp.highacc={}
	
	sets.rotp.lowacc= set_combine(sets.tp.lowacc, {left_ring="Oneiros Ring",})
	
	sets.rotp.medacc= set_combine(sets.tp.medacc, {left_ring="Oneiros Ring",})
	
	sets.rotp.highacc= set_combine(sets.tp.highacc, {left_ring="Oneiros Ring",})
	--tp sets
	
	--dt sets
	sets.pdt={ammo="Hasty Pinion +1", head="Sulevia's Mask +1", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1", 
	legs="Sulevi. Cuisses +1", feet="Sulev. Leggings +1", neck="Loricate Torque +1", waist="Tempus Fugit", left_ear="Cessance Earring",
	right_ear="Telos Earring", left_ring="Vocane Ring", right_ring="Defending Ring", back="Agema Cape",}
	
	sets.mdt={ammo="Hasty Pinion +1", head="Sulevia's Mask +1", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1", 
	legs="Sulevi. Cuisses +1", feet="Sulev. Leggings +1", neck="Loricate Torque +1", waist="Tempus Fugit", left_ear="Cessance Earring",
	right_ear="Telos Earring", left_ring="Vocane Ring", right_ring="Defending Ring", back="Agema Cape",}
	--dt sets
	
	--idle sets
	sets.idle.regen={ammo="Vanir Battery", head="Baghere Salade", body={ name="Souveran Cuirass", augments={'VIT+10','Attack+20','"Refresh"+2',}},
	hands="Sulev. Gauntlets +1", legs="Sulevi. Cuisses +1", feet="Hermes' Sandals", neck="Sanctity Necklace", waist="Nierenschutz",
	left_ear="Genmei Earring", right_ear="Infused Earring", left_ring="Paguroidea Ring", right_ring="Sheltered Ring", back="Philidor Mantle",}
	
	sets.idle.dt={ammo="Vanir Battery", head="Sulevia's Mask +1", body="Sulevia's Plate. +1", hands="Sulev. Gauntlets +1", 
	legs="Sulevi. Cuisses +1", feet="Hermes' Sandals", neck="Loricate Torque +1", waist="Nierenschutz", left_ear="Cessance Earring",
	right_ear="Telos Earring", left_ring="Vocane Ring", right_ring="Defending Ring", back="Philidor Mantle",}
	--idle sets
--aftercast
end

function precast(spell)
	if spell.prefix=="/weaponskill" then
		if WSType=="Damage" then
			equip(sets.ws.damage[spell.english])
		else
			equip(sets.ws.accuracy[spell.english])
		end
	end
	if spell.prefix=="/jobability" then
		equip(sets.ja[spell.english])
	end
	if spell.prefix=="/magic" then
		equip(sets.ma.fc)
	end
	if spell.prefix=="/ninjutsu" then
		equip(sets.ninjutsu.pc)
	end
end

function midcast(spell)
	if spell.prefix=="/ninjutsu" then
		equip(sets.ninjutsu.mc)
	end
	if spell.prefix=="/magic" then
		equip(sets.ma.mc)
	end
end

function aftercast(spell)
	if player.status=="Engaged" then
		if TPMode=="tp" then
			if buffactive["Restraint"] then
				if player.mp<99 then
					equip(sets.rtp[TPType])
				else
					equip(sets.rotp[TPType])
				end
			else
				if player.mp<99 then
					equip(sets.tp[TPType])
				else
					equip(sets.otp[TPType])
				end
			end
		elseif TPMode=="Hybrid" then
			equip(sets.hybrid[TPType])
		elseif TPMode=="PDT" then
			equip(sets.PDT)
		elseif TPMode=="MDT" then
			equip(sets.MDT)
		end
	else
		equip(sets.idle[IdleType])
	end
end

function status_change(new,old)
	if new=="Engaged" then
		if TPMode=="tp" then
			if buffactive["Restraint"] then
				if player.mp<99 then
					equip(sets.rtp[TPType])
				else
					equip(sets.ortp[TPType])
				end
			else
				if player.mp<99 then
					equip(sets.tp[TPType])
				else
					equip(sets.otp[TPType])
				end
			end
		elseif TPMode=="hybrid" then
			equip(sets.hybrid[TPType])
		elseif TPMode=="PDT" then
			equip(sets.PDT)
		elseif TPMode=="MDT" then
			equip(sets.MDT)
		end
	else
		equip(sets.idle[IdleType])
	end
end


function self_command(command)
	
	-- weaponry variable commands rule start
	
	-- weaponry variable commands rule end
	
	-- accuracy variable commands rule start
	if command == 'lowacc' then
		TPType="lowacc"
		add_to_chat(206, 'Low Accuracy Mode')
		send_command('text idlevariable text "LOW-ACC"')
	elseif command == 'medacc' then
		TPType="medacc"
		add_to_chat(206, 'Medium Accuracy Mode')
		send_command('text idlevariable text "MEDIUM-ACC"')
	elseif command == 'highacc' then
		TPType="highacc"
		add_to_chat(206, 'High Accuracy Mode')
		send_command('text idlevariable text "HIGH-ACC"')
	end
	-- accuracy variable commands rule end
	
	-- engage variable commands rule start
	if command == 'dd' then
		TPMode="tp"
		add_to_chat(206, 'DD Mode')
		send_command('text tpvariable text "DD MODE"')
	elseif command == 'hybrid' then
		TPMode="hybrid"
		add_to_chat(206, 'HYBRID MODE')
		send_command('text tpvariable text "Hybrid MODE"')
	elseif command == 'pdt' then
		TPMode="pdt"
		add_to_chat(206, 'PDT MODE')
		send_command('text tpvariable text "PDT MODE"')
	elseif command == 'mdt' then
		TPMode="mdt"
		add_to_chat(206, 'MDT MODE')
		send_command('text tpvariable text "MDT MODE"')	
	end
	-- engage variable commands rule end
	
	-- idle variable commands rule start
	if command == 'idleregen' then
		IdleType="regen"
		add_to_chat(206, 'IDLE MODE: REGEN')
		send_command('text wsvariable text "IDLE-REGEN')
		if player.status=="Idle" then
			status_change(player.status)
		end
	elseif command== 'idledt' then
		IdleType="dt"
		add_to_chat(206, 'IDLE MODE: DT')
		send_command('text wsvariable text "IDLE-DT')
		if player.status=="Idle" then
			status_change(player.status)
		end
	end
	-- idle variable commands rule end
	
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
end

