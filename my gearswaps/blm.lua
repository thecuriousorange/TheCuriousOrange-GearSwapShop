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
	
--aliases

--boxes
	windower.prim.create('NUKE_ELEMENT')
	windower.prim.set_texture('NUKE_ELEMENT','/windower 4/addons/gearswap/data/'..player.name..'/images/icenukes.png')
	windower.prim.set_size('NUKE_ELEMENT',200,30)
	windower.prim.set_position('NUKE_ELEMENT',750,50)
	windower.prim.set_color('NUKE_ELEMENT', 150, 255, 255, 255)
	windower.prim.set_visibility('NUKE_ELEMENT',true)
	--send_command('text tpvariable text "ICE NUKES";text tpvariable color 0 255 255;')
	
	windower.prim.create('MP_EFFICIENCY')
	windower.prim.set_texture('MP_EFFICIENCY','/windower 4/addons/gearswap/data/'..player.name..'/images/mpeoff.png')
	windower.prim.set_size('MP_EFFICIENCY',200,30)	
	windower.prim.set_position('MP_EFFICIENCY',750,90)
	windower.prim.set_color('MP_EFFICIENCY', 150, 255, 255, 255)
	windower.prim.set_visibility('MP_EFFICIENCY',true)
	--send_command('text idlevariable text "MPE-OFF"')
	
	--send_command('text wsvariable text "MM-OFF"')
	windower.prim.create('MAGIC_MODE')
	windower.prim.set_texture('MAGIC_MODE','/windower 4/addons/gearswap/data/'..player.name..'/images/magicpotency.png')
	windower.prim.set_size('MAGIC_MODE',200,30)
	windower.prim.set_position('MAGIC_MODE',750,130)
	windower.prim.set_color('MAGIC_MODE', 150, 255, 255, 255)
	windower.prim.set_visibility('MAGIC_MODE',true)
	--send_command('text pdtvariable text "MAGIC-POTENCY"')
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
	
	sets.mm=T{}
	sets.mpe=T{}
	sets.nuke_element= T{}
	sets.magic_mode= T{}

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
	
	Dark_Nukes= S{"Comet", "Noctohelix",}
	
	Elemental_DoT= S{"Shock", "Choke", "Burn", "Rasp", "Frost", "Drown",}
	
	DarkMagic_DoT= S{"Bio", "Bio II", "Bio III",}
	
	DarkMagic_Drain_Aspir= S{"Drain", "Drain II", "Aspir", "Aspir II", "Aspir III"}
	
	EnfeeblingMagic_skillmod= S{"Sleep", "Sleep II", "Sleepga", "Sleepga II", "Poison", "Poison II", "Poisonga", 
	"Poisonga II", "Dispel", "Gravity", "Bind", "Break", "Breakga", "Blind", "Blind II", "Gravity", "Gravity II",}
	
	EnfeeblingMagic_mndmod= S{"Paralyze", "Paralyze II", "Dia", "Dia II", "Dia III", "Diaga", "Diaga II", 
	"Slow", "Slow II", "Addle",}
	
	Buffs= S{"Blink", "Stoneskin", "Phalanx", "Aquaveil",}
--spell lists

--augmented gear
	nukestaff={ name="Keraunos", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Magic burst mdg.+6%','Magic Damage +10',}}
--augmented gear

--basesetnames	
	sets.precast={}
	sets.midcast={}
	sets.midcast.nuke={}
	sets.aftercast={}	
--basesetnames

--precast sets
	sets.precast.nuke={head="Wicce Petasos +1", body="Anhur Robe", hands="Helios Gloves", feet="Chelona Boots",
	legs={ name="Artsieq Hose", augments={'MP+30','Mag. Acc.+20','MND+7',}},
	neck="Stoicheion Medal", waist="Othila Sash", left_ear="Loquac. Earring", right_ear="Barkaro. Earring",
	left_ring="Prolix Ring", back="Swith Cape",}
	
	sets.precast.impact={body="Twilight Cloak", hands="Helios Gloves", feet="Chelona Boots",
	neck="Stoicheion Medal", waist="Othila Sash", left_ear="Loquac. Earring", right_ear="Ethereal Earring",
	legs={ name="Artsieq Hose", augments={'MP+30','Mag. Acc.+20','MND+7',}},
	left_ring="Prolix Ring", back="Swith Cape",}
	
	sets.precast.notnuke={main="Marin Staff", head="Nahtirah Hat", body="Anhur Robe", hands="Helios Gloves", legs={ name="Artsieq Hose", augments={'MP+30','Mag. Acc.+20','MND+7',}},
	feet="Chelona Boots", neck="Jeweled Collar", waist="Othila Sash", left_ear="Loquac. Earring", right_ear="Ethereal Earring",
	left_ring="Prolix Ring", back="Swith Cape",}
	
--precast sets

--ws sets
	sets.precast["Myrkr"]={main="Marin Staff", sub="Elementa Grip", ammo="Ghastly Tathlum +1", head="Helios Band", body="Wretched Coat",
	hands="Wicce Gloves +1", legs="Wicce Chausses +1", feet="Helios Boots", neck="Eddy Necklace", waist="Sekhmet Corset", 
	left_ear="Crematio Earring", right_ear="Friomisi Earring", left_ring="Sangoma Ring", right_ring="Strendu Ring",
    back="Toro Cape",}
--ws sets

--midcast sets
	sets.mpeset={body="Spae. Coat +1",}
	
	sets.mindmelter={main="Mindmelter",}
	
	sets.midcast.eledot={main="Marin Staff", sub="Elementa Grip", ammo="Witchstone", head="Wicce Petasos +1", 
	body="Vanir Cotehardie", hands="Hagondes Cuffs +1", legs="Bokwus Slops", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}},
	neck="Eddy Necklace", waist="Aswang Sash", left_ear="Strophadic Earring", right_ear="Gwati Earring",
	left_ring="Sangoma Ring", right_ring="Strendu Ring", back="Bane Cape",}
	
	sets.midcast.darkdot={main="Marin Staff", sub="Caecus Grip", ammo="Witchstone", head="Nahtirah Hat", body="Vanir Cotehardie",
	hands="Hagondes Cuffs +1", legs="Bokwus Slops", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}}, neck="Eddy Necklace", waist="Aswang Sash",
	left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Sangoma Ring", right_ring="Archon Ring",
	back="Bane Cape",}
	
	sets.midcast.skillenfeeb={main={name="Twebuliij", augments={'MP+60','"Mag. Acc.+15"','MND+12',}}, sub="Mephitis Grip", body="Vanya Robe",
	head="Befouled Crown", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}},
	hands="Lurid Mitts", legs="Portent Pants", neck="Enfeebling Torque", waist="Rumination Sash", right_ring="Sangoma Ring",
	left_ear="Psystorm Earring", right_ear="Lifestorm Earring", left_ring="Globidonta Ring", back="Bane Cape",}
	
	sets.midcast.mndenfeeb={main={name="Twebuliij", augments={'MP+60','"Mag. Acc.+15"','MND+12',}}, sub="Mephitis Grip", ammo="Witchstone", body="Vanir Cotehardie",
	hands="Lurid Mitts", legs="Bokwus Slops", head="Befouled Crown", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}}, neck="Eddy Necklace",
	waist="Rumination Sash", left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Sangoma Ring", right_ring="Levia. Ring",
	back="Bane Cape",}
	
	sets.midcast.doa={main="Marin Staff", sub="Caecus Grip", ammo="Witchstone", head="Appetence Crown", body="Vanir Cotehardie",
	hands="Hagondes Cuffs +1", legs="Bokwus Slops", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}}, neck="Eddy Necklace", 
	left_ear="Gwati Earring", right_ear="Hirudinea Earring", left_ring="Sangoma Ring", right_ring="Archon Ring", waist="Fucho-no-Obi",
	back="Bane Cape",}
	
	sets.midcast.nuke.dmg={}
	
	sets.midcast.nuke.acc={}
	
	sets.midcast.nuke.dmg.lowtier={main=nukestaff, sub="Elementa Grip", ammo="Ghastly Tathlum +1", body="Count's Garb",
	head={ name="Helios Band", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Magic crit. hit rate +5','Magic burst mdg.+1%',}},
	legs={ name="Hagondes Pants +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','"Mag.Atk.Bns."+20',}},
	feet="Umbani Boots", neck="Eddy Necklace", waist="Sekhmet Corset", left_ear="Crematio Earring", right_ear="Friomisi Earring",
	right_ring="Strendu Ring", back={ name="Bane Cape", augments={'Elem. magic skill +6','Dark magic skill +10','"Mag.Atk.Bns."+2',}},
	left_ring="Sangoma Ring", hands="Otomi Gloves",}
	
	sets.midcast.nuke.dmg.midtier={main=nukestaff, sub="Elementa Grip", ammo="Ghastly Tathlum +1", body="Count's Garb",
	head={ name="Helios Band", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Magic crit. hit rate +5','Magic burst mdg.+1%',}},
	legs={ name="Hagondes Pants +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','"Mag.Atk.Bns."+20',}},
	feet="Umbani Boots", neck="Eddy Necklace", waist="Sekhmet Corset", left_ear="Crematio Earring", right_ear="Friomisi Earring",
	right_ring="Strendu Ring", back={ name="Bane Cape", augments={'Elem. magic skill +6','Dark magic skill +10','"Mag.Atk.Bns."+2',}},
	left_ring="Sangoma Ring", hands="Otomi Gloves",}
	
	sets.midcast.nuke.dmg.hightier={main=nukestaff, sub="Elementa Grip", ammo="Ghastly Tathlum +1", head="Helios Band", body="Count's Garb",
	hands="Wicce Gloves +1", legs="Hagondes Pants +1", feet="Helios Boots", neck="Eddy Necklace", waist="Othila Sash", 
	left_ear="Barkaro. Earring", right_ear="Friomisi Earring", left_ring="Sangoma Ring", right_ring="Strendu Ring",
    back="Toro Cape",}
	
	sets.midcast.nuke.dmg.jaspell=set_combine(sets.midcast.nuke.dmg.hightier, {legs="Wicce Chausses +1"})
	
	sets.midcast.nuke.acc.lowtier= set_combine(sets.midcast.nuke.dmg.lowtier,{body="Wretched Coat", hands="Hagondes Cuffs +1", waist="Aswang Sash", back={ name="Bane Cape", augments={'Elem. magic skill +6','Dark magic skill +10','"Mag.Atk.Bns."+2',}}})
	
	sets.midcast.nuke.acc.midtier= set_combine(sets.midcast.nuke.dmg.midtier,{body="Wretched Coat", hands="Hagondes Cuffs +1", waist="Aswang Sash", back={ name="Bane Cape", augments={'Elem. magic skill +6','Dark magic skill +10','"Mag.Atk.Bns."+2',}}})
	
	sets.midcast.nuke.acc.hightier=set_combine(sets.midcast.nuke.dmg.hightier,{body="Wretched Coat", hands="Hagondes Cuffs +1", waist="Aswang Sash", back={ name="Bane Cape", augments={'Elem. magic skill +6','Dark magic skill +10','"Mag.Atk.Bns."+2',}}})
	
	sets.midcast.nuke.acc.jaspell=set_combine(sets.midcast.nuke.dmg.ja, {body="Wretched Coat", hands="Hagondes Cuffs +1", waist="Aswang Sash", back={ name="Bane Cape", augments={'Elem. magic skill +6','Dark magic skill +10','"Mag.Atk.Bns."+2',}}})
	
	sets.midcast.nuke.dark= set_combine(sets.midcast.nuke.dmg, {left_ring="Archon Ring",})
	
	sets.midcast.nuke.Impact={main=nukestaff, sub="Elementa Grip", ammo="Witchstone", body="Twilight Cloak",
	hands="Yaoyotl Gloves", legs="Hagondes Pants +1", feet="Umbani Boots", neck="Eddy Necklace", waist="Othila Sash", 
	left_ear="Crematio Earring", right_ear="Friomisi Earring", left_ring="Archon Ring", right_ring="Strendu Ring",
    back="Toro Cape",}
	
	sets.midcast.stun={main="Marin Staff", sub="Caecus Grip", ammo="Witchstone", head="Nahtirah Hat", body="Vanir Cotehardie",
	hands="Hagondes Cuffs +1", legs={ name="Artsieq Hose", augments={'MP+30','Mag. Acc.+20','MND+7',}},
	feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}}, neck="Eddy Necklace", waist="Ninurta's Sash",
	left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Sangoma Ring", right_ring="Strendu Ring",
	back="Bane Cape",}
	
	sets.midcast.enh={main="Marin Staff", sub="Fulcio Grip", ammo="Witchstone", head="Nahtirah Hat", body="Anhur Robe",
	hands="Lurid Mitts", legs="Portent Pants", feet="Chelona Boots", neck="Colossus's Torque", waist="Cascade Belt",
	left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Levia. Ring", right_ring="Levia. Ring",
	back="Swith Cape",}	
	
	sets.midcast.cure={main="Tamaxchi", sub="Sors Shield", head="Nahtirah Hat", body="Heka's Kalasiris", hands="Serpentes Cuffs",
	legs="Nares Trews", feet="Serpentes Sabots", neck="Twilight Torque", waist="Cascade Belt", left_ear="Sanare Earring",
	right_ear="Ethereal Earring", left_ring="Vocane Ring", right_ring="Shadow Ring", back="Swith Cape",}
--midcast sets

--aftercast sets
	sets.aftercast.idle={main="Bolelabunga", sub="Genbu's Shield", head="Befouled Crown", body="Hagondes Coat +1", hands="Serpentes Cuffs",
	legs="Assid. Pants +1", feet="Serpentes Sabots", neck="Twilight Torque", waist="Fucho-no-Obi", left_ear="Sanare Earring", right_ear="Ethereal Earring",
	left_ring="Defending Ring", right_ring="Shadow Ring", back="Shadow Mantle",}
	
	sets.aftercast.pdt= set_combine(sets.aftercast.idle, {hands="Hagondes Cuffs +1", legs="Hagondes Pants +1", feet="Hag. Sabots +1",})
--aftercast sets
end

function precast(spell)
	if spell.prefix=="/magic" or "Ninjutsu" then
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

function midcast(spell)
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
	--[[if spell.skill== 'Elemental Magic' and buffactive["Poison"] then
		equip(sets.mindmelter)
	end]]--
	if spell.english=="Death" then
		equip(sets.midcast.nuke.dmg.hightier)
	end
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
	if new=="Idle" then
		equip(sets.aftercast.idle)
	else
		equip(sets.aftercast.idle)
	end
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
		windower.prim.set_texture('NUKE_ELEMENT','/windower 4/addons/gearswap/data/'..player.name..'/images/icenukes.png')
		--send_command('text tpvariable text "ICE NUKES";text tpvariable color 0 255 255')
		add_to_chat(206, 'ICE NUKES')
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
		windower.prim.set_texture('NUKE_ELEMENT','/windower 4/addons/gearswap/data/'..player.name..'/images/firenukes.png')
		--send_command('text tpvariable text "FIRE NUKES";text tpvariable color 255 0 0')
		add_to_chat(206, 'FIRE NUKES')
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
		windower.prim.set_texture('NUKE_ELEMENT','/windower 4/addons/gearswap/data/'..player.name..'/images/earthnukes.png')
		--send_command('text tpvariable text "EARTH NUKES";text tpvariable color 140 100 0')
		add_to_chat(206, 'EARTH NUKES')
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
		windower.prim.set_texture('NUKE_ELEMENT','/windower 4/addons/gearswap/data/'..player.name..'/images/windnukes.png')
		--send_command('text tpvariable text "WIND NUKES";text tpvariable color 0 255 0')
		add_to_chat(206, 'WIND NUKES')
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
		windower.prim.set_texture('NUKE_ELEMENT','/windower 4/addons/gearswap/data/'..player.name..'/images/waternukes.png')
		--send_command('text tpvariable text "WATER NUKES";text tpvariable color 0 0 200')
		add_to_chat(206, 'WATER NUKES')
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
		windower.prim.set_texture('NUKE_ELEMENT','/windower 4/addons/gearswap/data/'..player.name..'/images/thundernukes.png')
		add_to_chat(206, 'THUNDER NUKES')
	end
	if command=="mpe" then
		if mpe=="off" then
			mpe="on"
			add_to_chat(206, 'MP ECONOMY ON')
			--send_command('text idlevariable text "MPE-ON"')
			windower.prim.set_texture('MP_EFFICIENCY','/windower 4/addons/gearswap/data/'..player.name..'/images/mpeon.png')
		else
			mpe="off"
			add_to_chat(206, 'MP ECONOMY OFF')
			--send_command('text idlevariable text "MPE-OFF"')
			windower.prim.set_texture('MP_EFFICIENCY','/windower 4/addons/gearswap/data/'..player.name..'/images/mpeoff.png')
		end
	end
	if command=='primfix' then
		windower.prim.set_size('NUKE_ELEMENT',200,30)
		windower.prim.set_size('MP_EFFICIENCY',200,30)
		windower.prim.set_size('MAGIC_MODE',200,30)
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
			windower.prim.set_texture('MAGIC_MODE','/windower 4/addons/gearswap/data/'..player.name..'/images/magicaccuracy.png')
		else
			magic_mode="dmg"
			add_to_chat(206, 'MAGIC MODE: POTENCY')
			windower.prim.set_texture('MAGIC_MODE','/windower 4/addons/gearswap/data/'..player.name..'/images/magicpotency.png')
			--send_command('text pdtvariable text "MAGIC-POTENCY"')
		end
	end
end 