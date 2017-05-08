function get_sets()
	include('organizer-lib.lua')
	--include('tco-include.lua')
--default macroset
	send_command('input /macro book 3;input /macro set 1')
--default macroset

--aliases
	send_command('alias VI input /ma "Blizzard VI" <t>')
	send_command('alias V input /ma "Blizzard V" <t>')
	send_command('alias IV input /ma "Blizzard IV" <t>')
	send_command('alias III input /ma "Blizzard III" <t>')
	send_command('alias II input /ma "Blizzard II" <t>')
	send_command('alias I input /ma "Blizzard" <t>')
	send_command('alias aja input /ma "Blizzaja" <t>')
	send_command('alias agaIII input /ma "Blizzaga III" <t>')
	send_command('alias agaII input /ma "Blizzaga II" <t>')
	send_command('alias aga input /ma "Blizzaga" <t>')
	send_command('alias AM input /ma "Freeze" <t>')
	send_command('alias AM2 input /ma "Freeze II" <t>')
	send_command('bind #1 myrkr')
--aliases

--boxes
	windower.prim.create('NUKE_ELEMENT')
	windower.prim.set_texture('NUKE_ELEMENT',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/icenukes.png')
	windower.prim.set_size('NUKE_ELEMENT',200,30)
	windower.prim.set_position('NUKE_ELEMENT',750,50)
	windower.prim.set_color('NUKE_ELEMENT', 150, 255, 255, 255)
	windower.prim.set_visibility('NUKE_ELEMENT',true)
	--send_command('text tpvariable text "ICE NUKES";text tpvariable color 0 255 255;')
	
	windower.prim.create('MP_EFFICIENCY')
	windower.prim.set_texture('MP_EFFICIENCY',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/mpeoff.png')
	windower.prim.set_size('MP_EFFICIENCY',200,30)	
	windower.prim.set_position('MP_EFFICIENCY',750,90)
	windower.prim.set_color('MP_EFFICIENCY', 150, 255, 255, 255)
	windower.prim.set_visibility('MP_EFFICIENCY',true)
	--send_command('text idlevariable text "MPE-OFF"')
	
	--send_command('text wsvariable text "MM-OFF"')
	windower.prim.create('MAGIC_MODE')
	windower.prim.set_texture('MAGIC_MODE',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/magicpotency.png')
	windower.prim.set_size('MAGIC_MODE',200,30)
	windower.prim.set_position('MAGIC_MODE',750,130)
	windower.prim.set_color('MAGIC_MODE', 150, 255, 255, 255)
	windower.prim.set_visibility('MAGIC_MODE',true)
	--send_command('text pdtvariable text "MAGIC-POTENCY"')
	
	windower.prim.create('BURST_MODE')
	windower.prim.set_texture('BURST_MODE',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/burstmodeoff.png')
	windower.prim.set_size('BURST_MODE',200,30)
	windower.prim.set_position('BURST_MODE',750,170)
	windower.prim.set_color('BURST_MODE', 150, 255, 255, 255)
	windower.prim.set_visibility('BURST_MODE',true)
--boxes

--keybinds
	send_command('bind #2 gs equip sets.aftercast.pdt')
	send_command('bind #4 gs equip sets.aftercast.idle')
	send_command('bind #f1 gs c ice')
	send_command('bind #f2 gs c water')
	send_command('bind #f3 gs c earth')
	send_command('bind #f4 gs c fire')
	send_command('bind #f5 gs c wind')
	send_command('bind #f6 gs c thunder')
	send_command('bind #a input /ma "Breakga" <t>')
	send_command('bind @p input /ma "Break" <t>')
	send_command('bind !- input /ma "Aspir II" <t>')
	send_command('bind != VI')
	send_command('bind @- input /ma "Aspir III" <t>')
	send_command('bind @= I')
	send_command('bind @f1 gs c MB_MODE')
	send_command('bind @f2 gs c death_mode')
	send_command('bind @f10 gs c magic_mode')
	send_command('bind @f11 gs c mm')
	send_command('bind @f12 gs c mpe')
--keybinds
--
	send_command('input /macro book 3;input /macro set 8')
--
--spell elements
	nuke_element="Ice"
	mpe="off"
	mm="off"
	magic_mode="dmg"
	MB="off"
	death_mode="off"
	
	sets.MB=T{}
	sets.mm=T{}
	sets.mpe=T{}
	sets.nuke_element= T{}
	sets.magic_mode= T{}
	sets.death_mode=T{}

--spell lists
	Nukes= S{"Fire", "Fire II", "Fire III", "Fire IV", "Fire V", "Fire VI", "Firaga", "Firaga II", "Firaga III", 
	"Firaja", "Flare", "Flare II", "Pyrohelix", "Fira", "Fira II", "Blizzard", "Blizzard II", "Blizzard III", 
	"Blizzard IV", "Blizzard V", "Blizzard VI", "Blizzaga", "Blizzaga II", "Blizzaga III", "Blizzaja", "Cryohelix", "Freeze", 
	"Freeze II", "Blizzara", "Blizzara II", "Water", "Water II", "Water III", "Water IV", "Water V", "Water VI", "Waterga", 
	"Waterga II", "Waterga III", "Waterja", "Flood", "Flood II", "Hydrohelix", "Watera", "Watera II", "Thunder", 
	"Thunder II", "Thunder III", "Thunder IV", "Thunder V", "Thunder VI", "Thundaga", "Thundaga II", "Thundaga III", "Thundaja", 
	"Burst", "Burst II", "Ionohelix", "Thundara", "Thundara II", "Stone", "Stone II", "Stone III", "Stone IV", 
	"Stone V", "Stone VI", "Stonega", "Stonega II", "Stonega III", "Stoneja", "Quake", "Quake II", "Geohelix", "Stonera", 
	"Stonera II", "Aero", "Aero II", "Aero III", "Aero IV", "Aero V", "Aero VI", "Aeroga", "Aeroga II", "Aeroga III", 
	"Aeroja", "Tornado", "Tornado II", "Anemohelix", "Aera", "Aera II", "Banish", "Banish II", 
	"Banishga", "Banishga II", "Banish III", "Holy", "Holy II", "Luminohelix","Death",}
	
	LowTierNukes= S{"Fire", "Fire II", "Firaga", "Firaga II", "Blizzard", "Flare", "Blizzard II", "Blizzaga", "Blizzaga II",
	"Freeze", "Water", "Water II", "Waterga", "Waterga II", "Flood", "Thunder", "Thunder II", "Thundaga", "Thundaga II",
	"Burst", "Stone", "Stone II", "Stonega", "Stonega II", "Quake", "Aero", "Aero II", "Aeroga", "Aeroga II", "Tornado",}
	
	MidTierNukes= S{"Fire III", "Fire IV", "Firaga III", "Blizzard III", "Blizzard IV", "Blizzaga III", "Water III", "Water IV",
	"Waterga III", "Thunder III", "Thunder IV", "Thundaga III", "Stone III", "Stone IV", "Stonega III", "Aero III", "Aero IV",
	"Aeroga III",}
	
	HighTierNukes= S{"Flare II", "Fire V", "Fire VI", "Pyrohelix", "Freeze II", "Blizzard V", "Blizzard VI", "Cryohelix", 
	"Flood II", "Water V", "Water VI", "Hydrohelix", "Burst II", "Thunder V", "Thunder VI", "Ionohelix", "Quake II", "Stone V", 
	"Stone VI", "Geohelix", "Tornado II", "Aero V", "Aero VI", "Amenohelix", "Luminohelix","Death",}
	
	JaNukes= S{"Firaja", "Blizzaja", "Waterja", "Thundaja", "Aeroja", "Stoneja",}
	
	Dark_Nukes= S{"Death","Comet", "Noctohelix",}
	
	Elemental_DoT= S{"Shock", "Choke", "Burn", "Rasp", "Frost", "Drown",}
	
	DarkMagic_DoT= S{"Bio", "Bio II", "Bio III",}
	
	DarkMagic_Drain_Aspir= S{"Drain", "Drain II", "Aspir", "Aspir II", "Aspir III"}
	
	EnfeeblingMagic_skillmod= S{"Sleep", "Sleep II", "Sleepga", "Sleepga II", "Poison", "Poison II", "Poisonga", 
	"Poisonga II", "Dispel", "Gravity", "Bind", "Break", "Breakga", "Blind", "Blind II", "Gravity", "Gravity II",}
	
	EnfeeblingMagic_mndmod= S{"Paralyze", "Paralyze II", "Dia", "Dia II", "Dia III", "Diaga", "Diaga II", 
	"Slow", "Slow II", "Addle",}
	
	Buffs= S{"Haste","Refresh","Blink", "Stoneskin", "Phalanx", "Aquaveil", "Firestorm", "Hailstorm", "Windstorm", "Sandstorm", "Thunderstorm", "Voidstorm", "Aurorastorm", "Rainstorm", "Regen", "Regen II"}
--spell lists

--augmented gear
	--nukestaff--={ name="Keraunos", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Magic burst dmg.+6%','Magic Damage +10',}}
--augmented gear

--basesetnames	
	sets.precast={}
	sets.deathprecast={}
	sets.midcast={}
	sets.midcast.nuke={}
	sets.deathmidcast={}
	sets.deathmidcast.nuke={}
	sets.aftercast={}
	sets.deathaftercast={}
--basesetnames

--deathprecast
	sets.deathprecast.nuke={main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}}, sub="Niobid Strap",
    ammo="Ghastly Tathlum +1", head={ name="Amalric Coif", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, right_ring="Mephitas's Ring +1",
	body="Shango Robe", hands={ name="Otomi Gloves", augments={'Haste+2','"Snapshot"+2','Magic Damage +4',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}}, right_ear="Etiolation Earring",
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+10','"Fast Cast"+6',}}, waist="Channeler's Stone", left_ear="Loquac. Earring",
    neck={ name="Jeweled Collar", augments={'"Fast Cast"+2','MND+2','MP recovered while healing +2',}}, left_ring="Mephitas's Ring",
	back={ name="Bane Cape", augments={'Elem. magic skill +6','Dark magic skill +10','"Mag.Atk.Bns."+2',}},}
	
	sets.deathprecast.impact={main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}}, sub="Niobid Strap",
    ammo="Ghastly Tathlum +1",  body="Twilight Cloak",hands={ name="Otomi Gloves", augments={'Haste+2','"Snapshot"+2','Magic Damage +4',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}}, right_ear="Etiolation Earring",
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+10','"Fast Cast"+6',}}, waist="Channeler's Stone", left_ear="Loquac. Earring",
    neck={ name="Jeweled Collar", augments={'"Fast Cast"+2','MND+2','MP recovered while healing +2',}}, left_ring="Mephitas's Ring",
	back={ name="Bane Cape", augments={'Elem. magic skill +6','Dark magic skill +10','"Mag.Atk.Bns."+2',}},}
	
	sets.deathprecast.notnuke={main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}}, sub="Niobid Strap",
    ammo="Ghastly Tathlum +1", head={ name="Amalric Coif", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, right_ring="Mephitas's Ring +1",
	body="Shango Robe", hands={ name="Otomi Gloves", augments={'Haste+2','"Snapshot"+2','Magic Damage +4',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}}, right_ear="Etiolation Earring",
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+10','"Fast Cast"+6',}}, waist="Channeler's Stone", left_ear="Loquac. Earring",
    neck={ name="Jeweled Collar", augments={'"Fast Cast"+2','MND+2','MP recovered while healing +2',}}, left_ring="Mephitas's Ring",
	back={ name="Bane Cape", augments={'Elem. magic skill +6','Dark magic skill +10','"Mag.Atk.Bns."+2',}},}
	
	sets.deathprecast["Myrkr"]={main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}}, sub="Niobid Strap", right_ring="Mephitas's Ring +1",
	ammo="Ghastly Tathlum +1", head={ name="Amalric Coif", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, left_ring="Mephitas's Ring",
	body={ name="Amalric Doublet", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, legs={ name="Amalric Slops", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, neck="Sanctity Necklace",
	hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, waist="Fucho-no-Obi", right_ear="Halasz Earring",
	feet={ name="Amalric Nails", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, left_ear="Etiolation Earring",
	back={ name="Bane Cape", augments={'Elem. magic skill +6','Dark magic skill +10','"Mag.Atk.Bns."+2',}},}
--deathprecast

--deathmidcast
	sets.deathmidcast.nuke={main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}}, sub="Niobid Strap", neck="Mizu. Kubikazari",
	head="Pixie Hairpin +1", body={ name="Amalric Doublet", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
	hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, waist="Eschan Stone", left_ear="Barkaro. Earring",
	legs={ name="Amalric Slops", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, ammo="Ghastly Tathlum +1",
	feet={ name="Amalric Nails", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, right_ear="Friomisi Earring", left_ring="Mephitas's Ring",
    right_ring="Mephitas's Ring +1", back="Taranus's Cape",}
		
	sets.deathmidcast.nuke.dark={main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}}, sub="Niobid Strap", neck="Mizu. Kubikazari",
	head="Pixie Hairpin +1", body={ name="Amalric Doublet", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
	hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, waist="Eschan Stone", left_ear="Barkaro. Earring",
	legs={ name="Amalric Slops", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, ammo="Ghastly Tathlum +1",
	feet={ name="Amalric Nails", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, right_ear="Halasz Earring", left_ring="Archon Ring",
    right_ring="Mephitas's Ring +1", back="Taranus's Cape",}
	
	sets.deathmidcast.skillenfeeb={main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}}, sub="Niobid Strap",
	ammo="Hydrocera", head={ name="Amalric Coif", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, left_ring="Vertigo Ring",
	body={ name="Vanya Robe", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}}, hands="Lurid Mitts",
	legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}}, waist="Eschan Stone", right_ear="Lifestorm Earring",
	feet={ name="Medium's Sabots", augments={'MP+15','MND+2','"Cure" potency +2%',}}, neck="Sanctity Necklace", left_ear="Psystorm Earring",
	right_ring="Sangoma Ring", back={ name="Bane Cape", augments={'Elem. magic skill +6','Dark magic skill +10','"Mag.Atk.Bns."+2',}},}
	
	sets.deathmidcast.mndenfeeb={main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}}, sub="Niobid Strap",
	ammo="Hydrocera", head={ name="Amalric Coif", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, left_ring="Vertigo Ring",
	body={ name="Vanya Robe", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}}, hands="Lurid Mitts",
	legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}}, waist="Eschan Stone", right_ear="Lifestorm Earring",
	feet={ name="Medium's Sabots", augments={'MP+15','MND+2','"Cure" potency +2%',}}, neck="Sanctity Necklace", left_ear="Psystorm Earring",
	right_ring="Sangoma Ring", back={ name="Bane Cape", augments={'Elem. magic skill +6','Dark magic skill +10','"Mag.Atk.Bns."+2',}},}
	
	sets.deathmidcast.eledot={}
	
	sets.deathmidcast.darkdot={main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}}, sub="Niobid Strap", ammo="Ghastly Tathlum +1",
	head="Pixie Hairpin +1", body={ name="Merlinic Jubbah", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Magic Damage +8','"Mag.Atk.Bns."+15',}},
	hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, neck="Sanctity Necklace", left_ear="Barkaro. Earring",
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}}, waist="Fucho-no-Obi", right_ear="Gwati Earring",
    feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+25','Magic burst dmg.+11%','Mag. Acc.+14',}}, left_ring="Vertigo Ring", right_ring="Sangoma Ring",
    back={ name="Bane Cape", augments={'Elem. magic skill +6','Dark magic skill +10','"Mag.Atk.Bns."+2',}},}
	
	sets.deathmidcast.doa={main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}}, sub="Niobid Strap", ammo="Ghastly Tathlum +1",
	head="Pixie Hairpin +1", body={ name="Amalric Doublet", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
	hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, neck="Erra Pendant", left_ear="Barkaro. Earring",
	legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}}, waist="Fucho-no-Obi", right_ear="Hirudinea Earring",
	feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+25','Magic burst dmg.+11%','Mag. Acc.+14',}}, left_ring="Vertigo Ring",
	right_ring="Sangoma Ring", back={ name="Bane Cape", augments={'Elem. magic skill +6','Dark magic skill +10','"Mag.Atk.Bns."+2',}},}
	
	sets.deathmidcast.enh={main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}}, legs="Wicce Chausses +1", left_ring="Mephitas's Ring",
    sub="Niobid Strap", ammo="Ghastly Tathlum +1", head="Befouled Crown", body="Anhur Robe", neck="Incanter's Torque", right_ring="Mephitas's Ring +1",
	hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, waist="Cascade Belt", right_ear="Etiolation Earring",
	feet={ name="Amalric Nails", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, left_ear="Andoaa Earring",
	back={ name="Bane Cape", augments={'Elem. magic skill +6','Dark magic skill +10','"Mag.Atk.Bns."+2',}},}
	
	sets.deathmidcast.impact=set_combine(sets.deathmidcast.nuke.dark, {head=null, body="Twilight Cloak",})	
--deathmidcast

--deathaftercast
	sets.deathaftercast.idle={main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}}, sub="Niobid Strap", 
	ammo="Ghastly Tathlum +1", head={ name="Amalric Coif", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
	body={ name="Amalric Doublet", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, legs="Assid. Pants +1", neck="Loricate Torque +1",
	hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, waist="Fucho-no-Obi",
	left_ring="Defending Ring", feet={ name="Amalric Nails", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
	left_ear="Etiolation Earring", right_ear="Halasz Earring", right_ring="Mephitas's Ring +1",
    back={ name="Bane Cape", augments={'Elem. magic skill +6','Dark magic skill +10','"Mag.Atk.Bns."+2',}},}
--deathaftercast

--precast sets
	sets.precast.nuke={main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}}, sub="Niobid Strap", ammo="Sapience Orb",
	head={ name="Merlinic Hood", augments={'Mag. Acc.+7','"Fast Cast"+6','"Mag.Atk.Bns."+3',}}, body="Anhur Robe", neck="Stoicheion Medal",
	hands={ name="Helios Gloves", augments={'Mag. Acc.+14 "Mag.Atk.Bns."+14','"Fast Cast"+5','Magic burst dmg.+7%',}}, waist="Channeler's Stone",
	legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}}, left_ear="Barkaro. Earring", right_ear="Loquac. Earring",
	feet={ name="Merlinic Crackows", augments={'Mag. Acc.+10','"Fast Cast"+6',}}, left_ring="Kishar Ring", right_ring="Rahab Ring",
	back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
}
	--[[{head={ammo="Impatiens", name="Merlinic Hood", augments={'Mag. Acc.+7','"Fast Cast"+6','"Mag.Atk.Bns."+3',}},
	body="Anhur Robe", hands="Helios Gloves", feet={ name="Merlinic Crackows", augments={'Mag. Acc.+10','"Fast Cast"+6',}},
	legs="Psycloth Lappas", neck="Stoicheion Medal", waist="Channeler's Stone", right_ear="Loquac. Earring", right_ring="Rahab Ring",
	left_ear="Barkaro. Earring", left_ring="Veneficium Ring", back="Perimede Cape",}]]--
	
	sets.precast.impact={ammo="Impatiens", body="Twilight Cloak", hands="Helios Gloves", feet={ name="Merlinic Crackows", augments={'Mag. Acc.+10','"Fast Cast"+6',}},
	neck="Stoicheion Medal", waist="Eschan Stone", right_ear="Loquac. Earring", left_ear="Etiolation Earring", legs="Psycloth Lappas", right_ring="Rahab Ring",
	left_ring="Veneficium Ring", back="Perimede Cape",}
	
	sets.precast.notnuke={main="Lathi", ammo="Impatiens", feet={ name="Merlinic Crackows", augments={'Mag. Acc.+10','"Fast Cast"+6',}}, right_ring="Rahab Ring",
	body="Anhur Robe", hands="Helios Gloves", legs="Psycloth Lappas", waist="Channeler's Stone", left_ear="Etiolation Earring",
	feet={ name="Merlinic Crackows", augments={'Mag. Acc.+10','"Fast Cast"+6',}}, neck="Jeweled Collar",right_ear="Loquac. Earring", 
	left_ring="Veneficium Ring", back="Swith Cape",}
	
	sets.precast["Manawall"]={back="Taranus's Cape", feet="Wicce Sabots +1",}
--precast sets

--ws sets
	sets.precast["Myrkr"]={main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}}, sub="Niobid Strap", right_ring="Mephitas's Ring +1",
	ammo="Ghastly Tathlum +1", head={ name="Amalric Coif", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, left_ring="Mephitas's Ring",
	body={ name="Amalric Doublet", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, legs={ name="Amalric Slops", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, neck="Sanctity Necklace",
	hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, waist="Fucho-no-Obi", right_ear="Halasz Earring",
	feet={ name="Amalric Nails", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, left_ear="Etiolation Earring",
	back={ name="Bane Cape", augments={'Elem. magic skill +6','Dark magic skill +10','"Mag.Atk.Bns."+2',}},}
--ws sets

--midcast sets
	sets.mpeset={body="Spae. Coat +1",}
	
	sets.magicburst={ammo="Pemphredo Tathlum",
    head={ name="Merlinic Hood", augments={'Magic burst dmg.+11%','INT+10','Mag. Acc.+3','"Mag.Atk.Bns."+14',}},
    body={ name="Merlinic Jubbah", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Magic Damage +8','"Mag.Atk.Bns."+15',}},
    hands={ name="Amalric Gages", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+28','Magic burst dmg.+11%','"Mag.Atk.Bns."+7',}},
    feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+25','Magic burst dmg.+11%','Mag. Acc.+14',}},
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Barkaro. Earring",
    right_ear="Friomisi Earring",
    left_ring="Locus Ring",
    right_ring="Mujin Band",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},}
	
	sets.midcast.eledot={main="Lathi", sub="Niobid Strap", ammo="Pemphredo Tathlum", head="Wicce Petasos +1", 
	body="Shango Robe", hands="Hagondes Cuffs +1", legs="Psycloth Lappas", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}},
	neck="Sanctity Necklace", waist="Eschan Stone", left_ear="Strophadic Earring", right_ear="Gwati Earring",
	left_ring="Sangoma Ring", right_ring="Strendu Ring", back="Taranus's Cape",}
	
	sets.midcast.darkdot={main="Lathi", sub="Niobid Strap", ammo="Pemphredo Tathlum", head={ name="Merlinic Hood", augments={'Mag. Acc.+7','"Fast Cast"+6','"Mag.Atk.Bns."+3',}}, body="Shango Robe",
	hands="Hagondes Cuffs +1", legs="Psycloth Lappas", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}}, neck="Sanctity Necklace", waist="Eschan Stone",
	left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Sangoma Ring", right_ring="Archon Ring",
	back="Taranus's Cape",}
	
	sets.midcast.skillenfeeb={main="Lathi", sub="Niobid Grip", body="Vanya Robe",
	head="Befouled Crown", feet={ name="Medium's Sabots", augments={'MP+15','MND+2','"Cure" potency +2%',}},
	hands="Lurid Mitts", legs="Psycloth Lappas", neck="Incanter's Torque", waist="Rumination Sash", right_ring="Stikini Ring",
	left_ear="Psystorm Earring", right_ear="Lifestorm Earring", left_ring="Stikini Ring", back="Taranus's Cape",}
	
	sets.midcast.mndenfeeb={main="Lathi", sub="Mephitis Grip", ammo="Pemphredo Tathlum", body="Shango Robe",
	hands="Lurid Mitts", legs="Psycloth Lappas", head="Befouled Crown", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}}, neck="Sanctity Necklace",
	waist="Rumination Sash", left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Stikini Ring", right_ring="Stikini Ring",
	back="Taranus's Cape",}
	
	sets.midcast.doa={ammo="Pemphredo Tathlum", head="Pixie Hairpin +1", body={ name="Merlinic Jubbah", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Magic Damage +8','"Mag.Atk.Bns."+15',}},
	hands={ name="Merlinic Dastanas", augments={'Attack+14','"Drain" and "Aspir" potency +11','INT+9','Mag. Acc.+14','"Mag.Atk.Bns."+11',}}, left_ear="Barkaro. Earring", right_ear="Hirudinea Earring",
	legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+6 "Mag.Atk.Bns."+6','"Drain" and "Aspir" potency +11','MND+4','"Mag.Atk.Bns."+15',}}, waist="Fucho-no-Obi", left_ring="Evanescence Ring",
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Drain" and "Aspir" potency +10','"Mag.Atk.Bns."+7',}}, neck="Erra Pendant", right_ring="Archon Ring",
	back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},}
	
	sets.midcast.nuke.dmg={}
	
	sets.midcast.nuke.acc={}
	
	sets.midcast.nuke.dmg.lowtier={main="Lathi", sub="Niobid Strap", ammo="Ghastly Tathlum +1", body="Merlinic Jubbah",
	head={ name="Helios Band", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Magic crit. hit rate +5','Magic burst dmg.+6%',}},
	legs="Merlinic Shalwar",
	feet="Umbani Boots", neck="Sanctity Necklace", waist="Sekhmet Corset", left_ear="Crematio Earring", right_ear="Friomisi Earring",
	right_ring="Strendu Ring", back="Taranus's Cape",
	left_ring="Sangoma Ring", hands="Otomi Gloves",}
	
	sets.midcast.nuke.dmg.midtier={main="Lathi", sub="Niobid Strap", ammo="Pemphredo Tathlum", body="Merlinic Jubbah",
	head={ name="Helios Band", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Magic crit. hit rate +5','Magic burst dmg.+6%',}},
	legs="Merlinic Shalwar",
	feet="Umbani Boots", neck="Sanctity Necklace", waist="Sekhmet Corset", left_ear="Crematio Earring", right_ear="Friomisi Earring",
	right_ring="Strendu Ring", back="Taranus's Cape",
	left_ring="Sangoma Ring", hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},}
	
	sets.midcast.nuke.dmg.hightier={main="Lathi", sub="Niobid Strap", ammo="Pemphredo Tathlum", head="Jhakri Coronal +1", body="Merlinic Jubbah",
	hands={ name="Amalric Gages", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15',}}, legs="Merlinic Shalwar", feet="Amalric Nails", neck="Sanctity Necklace", waist="Eschan Stone", 
	left_ear="Barkaro. Earring", right_ear="Friomisi Earring", left_ring="Sangoma Ring", right_ring="Strendu Ring",
    back="Taranus's Cape",}
	
	sets.midcast.nuke.dmg.jaspell=set_combine(sets.midcast.nuke.dmg.hightier, {legs="Wicce Chausses +1"})
	
	sets.midcast.nuke.acc.lowtier= set_combine(sets.midcast.nuke.dmg.lowtier,{right_ear="Hermetic Earring", hands="Hagondes Cuffs +1", waist="Eschan Stone", right_ear="Hermetic Earring", back={ name="Bane Cape", augments={'Elem. magic skill +6','Dark magic skill +10','"Mag.Atk.Bns."+2',}}})
	
	sets.midcast.nuke.acc.midtier= set_combine(sets.midcast.nuke.dmg.midtier,{right_ear="Hermetic Earring", hands="Hagondes Cuffs +1", waist="Eschan Stone", back={ name="Bane Cape", augments={'Elem. magic skill +6','Dark magic skill +10','"Mag.Atk.Bns."+2',}}})
	
	sets.midcast.nuke.acc.hightier=set_combine(sets.midcast.nuke.dmg.hightier,{right_ear="Hermetic Earring", hands="Hagondes Cuffs +1", waist="Eschan Stone", back={ name="Bane Cape", augments={'Elem. magic skill +6','Dark magic skill +10','"Mag.Atk.Bns."+2',}}})
	
	sets.midcast.nuke.acc.jaspell=set_combine(sets.midcast.nuke.dmg.ja, {right_ear="Hermetic Earring", hands="Hagondes Cuffs +1", waist="Eschan Stone", back={ name="Bane Cape", augments={'Elem. magic skill +6','Dark magic skill +10','"Mag.Atk.Bns."+2',}}})
	
	sets.midcast.nuke.burst={}
	
	sets.midcast.nuke.dark= set_combine(sets.midcast.nuke.dmg.hightier, {left_ring="Archon Ring",})
	
	sets.midcast.nuke.Impact={main="Lathi", sub="Niobid Strap", ammo="Pemphredo Tathlum", head="none", body="Twilight Cloak",
	hands="Yaoyotl Gloves", legs="Hagondes Pants +1", feet="Umbani Boots", neck="Sanctity Necklace", waist="Eschan Stone", 
	left_ear="Crematio Earring", right_ear="Friomisi Earring", left_ring="Archon Ring", right_ring="Strendu Ring",
    back="Taranus's Cape",}
	
	sets.midcast.stun={main="Lathi", sub="Niobid Strap", ammo="Pemphredo Tathlum", head={ name="Merlinic Hood", augments={'Mag. Acc.+7','"Fast Cast"+6','"Mag.Atk.Bns."+3',}}, body="Shango Robe",
	hands="Hagondes Cuffs +1", legs="Psycloth Lappas",
	feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}}, neck="Sanctity Necklace", waist="Ninurta's Sash",
	left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Sangoma Ring", right_ring="Strendu Ring",
	back="Taranus's Cape",}
	
	sets.midcast.enh={ammo="Impatiens", neck="Incanter's Torque", waist="Cascade Belt", left_ear="Andoaa Earring",
	head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +9',}}, right_ear="Augment. Earring",
	body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +7',}}, left_ring="Kishar Ring",
	hands={ name="Telchine Gloves", augments={'"Cure" potency +4%','Enh. Mag. eff. dur. +10',}}, right_ring="Rahab Ring",
	legs={ name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}}, back="Perimede Cape",
	feet={ name="Telchine Pigaches", augments={'"Cure" potency +6%','Enh. Mag. eff. dur. +6',}},}
	
	sets.midcast.cure={ammo="Impatiens",
    head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +9',}}, right_ear="Beatific Earring",
    body="Heka's Kalasiris", neck="Incanter's Torque", waist="Gishdubar Sash", left_ear="Mendi. Earring",
    hands={ name="Telchine Gloves", augments={'"Cure" potency +4%','Enh. Mag. eff. dur. +10',}}, left_ring="Levia. Ring",
    legs={ name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}}, right_ring="Levia. Ring",
    feet={ name="Telchine Pigaches", augments={'"Cure" potency +6%','Enh. Mag. eff. dur. +6',}}, back="Swith Cape",}
	
--midcast sets

--aftercast sets
	sets.aftercast.idle={main="Lathi", sub="Niobid Strap", head="Befouled Crown", body="Jhakri Robe +1", hands={ name="Merlinic Dastanas", augments={'Accuracy+4','Pet: "Store TP"+2','"Refresh"+2','Accuracy+5 Attack+5','Mag. Acc.+6 "Mag.Atk.Bns."+6',}},
	legs="Assid. Pants +1", feet={ name="Merlinic Crackows", augments={'Enmity-5','Attack+1','"Refresh"+1','Accuracy+14 Attack+14',}}, neck="Loricate Torque +1", waist="Fucho-no-Obi", left_ear="Sanare Earring", right_ear="Ethereal Earring",
	left_ring="Defending Ring", right_ring="Shadow Ring", back="Shadow Mantle",}
	
	sets.aftercast.pdt= set_combine(sets.aftercast.idle, {hands="Hagondes Cuffs +1", legs="Hagondes Pants +1", feet="Hag. Sabots +1",})
--aftercast sets
end

function precast(spell)
	if death_mode=="on" then
		if spell.prefix=="/magic" or spell.prefix=="Ninjutsu" then
			if Nukes:contains(spell.english) then
				equip(sets.deathprecast.nuke)
			elseif Dark_Nukes:contains(spell.english) then
				equip(sets.deathprecast.nuke)
			elseif Elemental_DoT:contains(spell.english) then
				equip(sets.deathprecast.nuke)
			elseif spell.english=="Impact" then
				equip(sets.deathprecast.impact)
			else
				equip(sets.deathprecast.notnuke)
			end
		end
		if spell.prefix=="/jobability" then
			equip(sets.precast[spell.english])
		end
		if spell.prefix=="/weaponskill" then
			equip(sets.precast[spell.english])
		end
	elseif death_mode=="off" then
		if spell.prefix=="/magic" or spell.prefix=="Ninjutsu" then
			if Nukes:contains(spell.english) then
				equip(sets.precast.nuke)
			elseif Dark_Nukes:contains(spell.english) then
				equip(sets.precast.nuke)
			elseif Elemental_DoT:contains(spell.english) then
				equip(sets.precast.nuke)
			elseif spell.english=="Impact" then
				equip(sets.precast.impact)
			else
				equip(sets.precast.notnuke)
			end
		end
		if spell.prefix=="/jobability" then
			equip(sets.precast[spell.english])
		end
		if spell.prefix=="/weaponskill" then
			equip(sets.precast[spell.english])
		end
	end
end

function midcast(spell)
	if death_mode=="on" then
		if Nukes:contains(spell.english) then
			equip(sets.deathmidcast.nuke)
			if mpe=="on" then
				equip(sets.mpeset)
			end
			if MB=="on" then
				equip(sets.magicburst)
			end
		end
		if Dark_Nukes:contains(spell.english) then
			equip(sets.deathmidcast.nuke.dark)
			if mpe=="on" then
				equip(sets.mpeset)
			end
		end
		if Elemental_DoT:contains(spell.english) then
			equip(sets.deathmidcast.eledot)
		elseif DarkMagic_DoT:contains(spell.english) then
			equip(sets.deathmidcast.darkdot)
		elseif EnfeeblingMagic_skillmod:contains(spell.english) then
			equip(sets.deathmidcast.skillenfeeb)
		elseif EnfeeblingMagic_mndmod:contains(spell.english) then
			equip(sets.deathmidcast.mndenfeeb)
		elseif DarkMagic_Drain_Aspir:contains(spell.english) then
			equip(sets.deathmidcast.doa)
		elseif Buffs:contains(spell.english) then
			equip(sets.deathmidcast.enh)
		elseif spell.english=="Meteor" then
			equip(sets.deathmidcast.nuke)
		elseif spell.english=="Impact" then
			equip(sets.deathmidcast.impact)
		end
	elseif death_mode=="off" then
		if magic_mode=="dmg" then
			if Dark_Nukes:contains(spell.english) then
				equip(sets.midcast.nuke.dark)
				if mpe=="on" then
					equip(sets.mpeset)
				end
			elseif Nukes:contains(spell.english) then
				if LowTierNukes:contains(spell.english) then
					equip(sets.midcast.nuke.dmg.lowtier)
				elseif MidTierNukes:contains(spell.english) then
					equip(sets.midcast.nuke.dmg.midtier)
				elseif HighTierNukes:contains(spell.english) then
					equip(sets.midcast.nuke.dmg.hightier)
				elseif JaNukes:contains(spell.english) then
					equip(sets.midcast.nuke.dmg.jaspell)
				end
				if MB=="on" then
					equip(sets.magicburst)
				end
				if mpe=="on" then
					equip(sets.mpeset)
				end
			elseif Elemental_DoT:contains(spell.english) then
				equip(sets.midcast.eledot)
			elseif DarkMagic_DoT:contains(spell.english) then
				equip(sets.midcast.darkdot)
			elseif EnfeeblingMagic_skillmod:contains(spell.english) then
				equip(sets.midcast.skillenfeeb)
			elseif EnfeeblingMagic_mndmod:contains(spell.english) then
				equip(sets.midcast.mndenfeeb)
			elseif DarkMagic_Drain_Aspir:contains(spell.english) then
				equip(sets.midcast.doa)
			elseif Buffs:contains(spell.english) then
				equip(sets.midcast.enh)
			elseif spell.english=="Meteor" then
				equip(sets.midcast.nuke.dmg.hightier)
			elseif spell.english=="Impact" then
				equip(sets.midcast.nuke.impact)
			end
		elseif magic_mode=="acc" then
			if Dark_Nukes:contains(spell.english) then
				equip(sets.midcast.nuke.dark)
				if mpe=="on" then
					equip(sets.mpeset)
				end
			elseif Nukes:contains(spell.english) then
				if LowTierNukes:contains(spell.english) then
					equip(sets.midcast.nuke.acc.lowtier)
				elseif MidTierNukes:contains(spell.english) then
					equip(sets.midcast.nuke.acc.midtier)
				elseif HighTierNukes:contains(spell.english) then
					equip(sets.midcast.nuke.acc.hightier)
				elseif JaNukes:contains(spell.english) then
					equip(sets.midcast.nuke.acc.jaspell)
				end
				if mpe=="on" then
					equip(sets.mpeset)
				end
			elseif Elemental_DoT:contains(spell.english) then
				equip(sets.midcast.eledot)
			elseif DarkMagic_DoT:contains(spell.english) then
				equip(sets.midcast.darkdot)
			elseif EnfeeblingMagic_skillmod:contains(spell.english) then
				equip(sets.midcast.skillenfeeb)
			elseif EnfeeblingMagic_mndmod:contains(spell.english) then
				equip(sets.midcast.mndenfeeb)
			elseif DarkMagic_Drain_Aspir:contains(spell.english) then
				equip(sets.midcast.doa)
			elseif Buffs:contains(spell.english) then
				equip(sets.midcast.enh)
			elseif spell.english=="Meteor" then
				equip(sets.midcast.nuke.dmg.hightier)
			elseif spell.english=="Impact" then
				equip(sets.midcast.nuke.impact)
			end
		end
	end
	--[[if spell.skill== 'Elemental Magic' and buffactive["Poison"] then
		equip(sets.mindmelter)
	end]]--
	--[[if spell.english=="Death" then
		equip(sets.midcast.nuke.dmg.hightier)
	end]]--
end

function aftercast(spell)
	if not spell.interrupted then
        if spell.english == 'Sleep' or spell.english == 'Sleepga' then
            send_command('@wait 55;input /echo ------- '..spell.english..' is wearing off in 5 seconds -------')
        elseif spell.english == 'Sleep II' or spell.english == 'Sleepga II' then
            send_command('@wait 85;input /echo ------- '..spell.english..' is wearing off in 5 seconds -------')
        elseif spell.english == 'Break' or spell.english == 'Breakga' then
            send_command('@wait 25;input /echo ------- '..spell.english..' is wearing off in 5 seconds -------')
        end
    end
	--[[if mm=="on" then
		if not buffactive["Poison"] then
			send_command('wait 0.5;input /item "El. Pachira Fruit" <me>')
		end
	end]]--
	status_change(player.status)
end

function status_change(new,old)
	if death_mode=="on" then
		if new=="idle" then
			equip(sets.deathaftercast.idle)
		else
			equip(sets.deathaftercast.idle)
		end
	elseif death_mode=="off" then
		if new=="Idle" then
			equip(sets.aftercast.idle)
		else
			equip(sets.aftercast.idle)
		end
	end
	send_command('pf')
end

function self_command(command)
	if command=="ice" then
		nuke_element="Ice"
		send_command('alias VI input /ma "Blizzard VI" <t>')
		send_command('alias V input /ma "Blizzard V" <t>')
		send_command('alias IV input /ma "Blizzard IV" <t>')
		send_command('alias III input /ma "Blizzard III" <t>')
		send_command('alias II input /ma "Blizzard II" <t>')
		send_command('alias I input /ma "Blizzard" <t>')
		send_command('alias aja input /ma "Blizzaja" <t>')
		send_command('alias agaIII input /ma "Blizzaga III" <t>')
		send_command('alias agaII input /ma "Blizzaga II" <t>')
		send_command('alias aga input /ma "Blizzaga" <t>')
		send_command('alias AM input /ma "Freeze" <t>')
		send_command('alias AM2 input /ma "Freeze II" <t>')
		windower.prim.set_texture('NUKE_ELEMENT',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/icenukes.png')
		--send_command('text tpvariable text "ICE NUKES";text tpvariable color 0 255 255')
		add_to_chat(206, 'ICE NUKES')
		send_command('pf')
	end
	if command=="fire" then
		nuke_element="Fire"
		send_command('alias VI input /ma "Fire VI" <t>')
		send_command('alias V input /ma "Fire V" <t>')
		send_command('alias IV input /ma "Fire IV" <t>')
		send_command('alias III input /ma "Fire III" <t>')
		send_command('alias II input /ma "Fire II" <t>')
		send_command('alias I input /ma "Fire" <t>')
		send_command('alias aja input /ma "Firaja" <t>')
		send_command('alias agaIII input /ma "Firaga III" <t>')
		send_command('alias agaII input /ma "Firaga II" <t>')
		send_command('alias aga input /ma "Firaga" <t>')
		send_command('alias AM input /ma "Flare" <t>')
		send_command('alias AM2 input /ma "Flare II" <t>')
		windower.prim.set_texture('NUKE_ELEMENT',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/firenukes.png')
		--send_command('text tpvariable text "FIRE NUKES";text tpvariable color 255 0 0')
		add_to_chat(206, 'FIRE NUKES')
		send_command('pf')
	end
	if command=="earth" then
		nuke_element="Earth"
		send_command('alias VI input /ma "Stone VI" <t>')
		send_command('alias V input /ma "Stone V" <t>')
		send_command('alias IV input /ma "Stone IV" <t>')
		send_command('alias III input /ma "Stone III" <t>')
		send_command('alias II input /ma "Stone II" <t>')
		send_command('alias I input /ma "Stone" <t>')
		send_command('alias aja input /ma "Stoneja" <t>')
		send_command('alias agaIII input /ma "Stonega III" <t>')
		send_command('alias agaII input /ma "Stonega II" <t>')
		send_command('alias aga input /ma "Stonega" <t>')
		send_command('alias AM input /ma "Quake" <t>')
		send_command('alias AM2 input /ma "Quake II" <t>')
		windower.prim.set_texture('NUKE_ELEMENT',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/earthnukes.png')
		--send_command('text tpvariable text "EARTH NUKES";text tpvariable color 140 100 0')
		add_to_chat(206, 'EARTH NUKES')
		send_command('pf')
	end
	if command=="wind" then
		nuke_element="Wind"
		send_command('alias VI input /ma "Aero VI" <t>')
		send_command('alias V input /ma "Aero V" <t>')
		send_command('alias IV input /ma "Aero IV" <t>')
		send_command('alias III input /ma "Aero III" <t>')
		send_command('alias II input /ma "Aero II" <t>')
		send_command('alias I input /ma "Aero" <t>')
		send_command('alias aja input /ma "Aeroja" <t>')
		send_command('alias agaIII input /ma "Aeroga III" <t>')
		send_command('alias agaII input /ma "Aeroga II" <t>')
		send_command('alias aga input /ma "Aeroga" <t>')
		send_command('alias AM input /ma "Tornado" <t>')
		send_command('alias AM2 input /ma "Tornado II" <t>')
		windower.prim.set_texture('NUKE_ELEMENT',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/windnukes.png')
		--send_command('text tpvariable text "WIND NUKES";text tpvariable color 0 255 0')
		add_to_chat(206, 'WIND NUKES')
		send_command('pf')
	end
	if command=="water" then
		nuke_element="Water"
		send_command('alias VI input /ma "Water VI" <t>')
		send_command('alias V input /ma "Water V" <t>')
		send_command('alias IV input /ma "Water IV" <t>')
		send_command('alias III input /ma "Water III" <t>')
		send_command('alias II input /ma "Water II" <t>')
		send_command('alias I input /ma "Water" <t>')
		send_command('alias aja input /ma "Waterja" <t>')
		send_command('alias agaIII input /ma "Waterga III" <t>')
		send_command('alias agaII input /ma "Waterga II" <t>')
		send_command('alias aga input /ma "Waterga" <t>')
		send_command('alias AM input /ma "Flood" <t>')
		send_command('alias AM2 input /ma "Flood II" <t>')
		windower.prim.set_texture('NUKE_ELEMENT',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/waternukes.png')
		--send_command('text tpvariable text "WATER NUKES";text tpvariable color 0 0 200')
		add_to_chat(206, 'WATER NUKES')
		send_command('pf')
	end
	if command=="thunder" then
		nuke_element="Thunder"
		send_command('alias VI input /ma "Thunder VI" <t>')
		send_command('alias V input /ma "Thunder V" <t>')
		send_command('alias IV input /ma "Thunder IV" <t>')
		send_command('alias III input /ma "Thunder III" <t>')
		send_command('alias II input /ma "Thunder II" <t>')
		send_command('alias I input /ma "Thunder" <t>')
		send_command('alias aja input /ma "Thundaja" <t>')
		send_command('alias agaIII input /ma "Thundaga III" <t>')
		send_command('alias agaII input /ma "Thundaga II" <t>')
		send_command('alias aga input /ma "Thundaga" <t>')
		send_command('alias AM input /ma "Burst" <t>')
		send_command('alias AM2 input /ma "Burst II" <t>')
		--send_command('text tpvariable text "THUNDER NUKES";text tpvariable color 255 255 0')
		windower.prim.set_texture('NUKE_ELEMENT',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/thundernukes.png')
		add_to_chat(206, 'THUNDER NUKES')
		send_command('pf')
	end	
	if command=="MB_MODE" then
		if MB=="on" then
			MB="off"
			add_to_chat(206,'MAGIC BURST MODE OFF')
			windower.prim.set_texture('BURST_MODE',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/burstmodeoff.png')
			send_command('pf')
		else
			MB="on"
			add_to_chat(206,'MAGIC BURST MODE ON')
			windower.prim.set_texture('BURST_MODE',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/burstmodeon.png')
			send_command('pf')
		end
		send_command('pf')
	end
	if command=="mpe" then
		if mpe=="off" then
			mpe="on"
			add_to_chat(206, 'MP ECONOMY ON')
			--send_command('text idlevariable text "MPE-ON"')
			windower.prim.set_texture('MP_EFFICIENCY',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/mpeon.png')
			send_command('pf')
		else
			mpe="off"
			add_to_chat(206, 'MP ECONOMY OFF')
			--send_command('text idlevariable text "MPE-OFF"')
			windower.prim.set_texture('MP_EFFICIENCY',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/mpeoff.png')
			send_command('pf')
		end
		send_command('pf')
	end
	if command=='primfix' then
		windower.prim.set_size('NUKE_ELEMENT',200,30)
		windower.prim.set_size('MP_EFFICIENCY',200,30)
		windower.prim.set_size('MAGIC_MODE',200,30)
		windower.prim.set_size('BURST_MODE',200,30)
	end
	if command=="death_mode" then
		if death_mode=="on" then
			death_mode="off"
			add_to_chat(206,"DEATH MODE: OFF")
			windower.prim.set_texture('MP_EFFICIENCY',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/mpe'..mpe..'.png')
			send_command('pf')
		else
			death_mode="on"
			add_to_chat(206,"DEATH MODE: ON")
			windower.prim.set_texture('MP_EFFICIENCY',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/deathmode.png')
			send_command('pf')
		end
		send_command('pf')
	end
	--[[if command=="mm" then
		if mm=="off" then
			mm="on"
			add_to_chat(206, 'MINDMELTER MODE ON')
			send_command('text wsvariable text "MM-ON"')
		else
			mm="off"
			add_to_chat(206, 'MINDMELTER MODE OFF')
			send_command('text wsvariable text "MM-OFF"')
		end
	end]]--
	if command=="magic_mode" then
		if magic_mode=="dmg" then
			magic_mode="acc"
			add_to_chat(206, 'MAGIC MODE: ACC')
			send_command('text pdtvariable text "MAGIC-ACC"')
			windower.prim.set_texture('MAGIC_MODE',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/magicaccuracy.png')
		else
			magic_mode="dmg"
			add_to_chat(206, 'MAGIC MODE: POTENCY')
			windower.prim.set_texture('MAGIC_MODE',''..windower.windower_path..'addons/gearswap/data/'..player.name..'/images/magicpotency.png')
			--send_command('text pdtvariable text "MAGIC-POTENCY"')
		end
		send_command('pf')
	end
end 