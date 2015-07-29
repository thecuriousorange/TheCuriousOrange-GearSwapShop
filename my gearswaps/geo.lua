function get_sets()
	include('organizer-lib.lua')
	include('tco-include.lua')
--default macroset
	send_command('input /macro book 3;input /macro set 2')
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
	send_command('alias ra1 input /ma "Blizzara" <t>')
	send_command('alias ra2 input /ma "Blizzara II" <t>')
	send_command('alias idle gs equip sets.aftercast.idle.refresh')
--aliases

--boxes
	send_command('text tpvariable text "ICE NUKES";text tpvariable color 0 255 255;')
	send_command('text idlevariable text "REFRESH-KITE"')
	send_command('text wsvariable text "MM-OFF"')
	send_command('text pdtvariable text "MAGIC-POTENCY"')
--boxes

--keybinds
	send_command('bind #2 gs equip sets.aftercast.idle.pdt')
	send_command('bind #4 idle')
	send_command('bind #f1 gs c ice')
	send_command('bind #f2 gs c water')
	send_command('bind #f3 gs c earth')
	send_command('bind #f4 gs c fire')
	send_command('bind #f5 gs c wind')
	send_command('bind #f6 gs c thunder')
	send_command('bind !- input /ma "Aspir II" <t>')
	send_command('bind != VI')
	send_command('bind @- input /ma "Aspir III" <t>')
	send_command('bind @= I')
	send_command('bind @f10 gs c magic_mode')
	send_command('bind @f11 gs c mm')
	send_command('bind @f12 gs c IdleToggle')
--keybinds
--
	send_command('input /macro book 10;input /macro set 2')
--
--spell elements
	nuke_element="Ice"
	mpe="off"
	mm="off"
	magic_mode="dmg"
	IdleType="refreshkite"
	
	
	sets.mm=T{}
	sets.mpe=T{}
	sets.nuke_element= T{}
	sets.magic_mode= T{}
	sets.IdleType=T{}

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
	"Aeroja", "Tornado", "Tornado II", "Anemohelix", "Aerora", "Aerora II", "Banish", "Banish II", 
	"Banishga", "Banishga II", "Banish III", "Holy", "Holy II", "Luminohelix",}
	
	LowTierNukes= S{"Fire", "Fire II", "Firaga", "Firaga II", "Blizzard", "Flare", "Blizzard II", "Blizzaga", "Blizzaga II",
	"Freeze", "Water", "Water II", "Waterga", "Waterga II", "Flood", "Thunder", "Thunder II", "Thundaga", "Thundaga II",
	"Burst", "Stone", "Stone II", "Stonega", "Stonega II", "Quake", "Aero", "Aero II", "Aeroga", "Aeroga II", "Tornado",}
	
	MidTierNukes= S{"Fire III", "Fire IV", "Firaga III", "Blizzard III", "Blizzard IV", "Blizzaga III", "Water III", "Water IV",
	"Waterga III", "Thunder III", "Thunder IV", "Thundaga III", "Stone III", "Stone IV", "Stonega III", "Aero III", "Aero IV",
	"Aeroga III",}
	
	HighTierNukes= S{"Flare II", "Fire V", "Fire VI", "Fira", "Fira II", "Pyrohelix", "Freeze II", "Blizzard V", "Blizzard VI", "Blizzara", "Blizzara II",
	"Cryohelix", "Watera", "Watera II", "Flood II", "Water V", "Water VI", "Hydrohelix", "Burst II", "Thunder V", "Thunder VI", "Ionohelix", "Thundara", "Thundara II",
	"Quake II", "Stone V", "Stonera", "Stonera II", "Stone VI", "Geohelix", "Tornado II", "Aero V", "Aero VI", "Aerora", "Aerora II", "Amenohelix", "Luminohelix", }
	
	JaNukes= S{"Firaja", "Blizzaja", "Waterja", "Thundaja", "Aeroja", "Stoneja",}
	
	Dark_Nukes= S{"Comet", "Noctohelix",}
	
	Elemental_DoT= S{"Shock", "Choke", "Burn", "Rasp", "Frost", "Drown",}
	
	DarkMagic_DoT= S{"Bio", "Bio II", "Bio III",}
	
	DarkMagic_Drain_Aspir= S{"Drain", "Drain II", "Aspir", "Aspir II", "Aspir III"}
	
	EnfeeblingMagic_skillmod= S{"Sleep", "Sleep II", "Sleepga", "Sleepga II", "Poison", "Poison II", "Poisonga", "Distract", "Frazzle",
	"Poisonga II", "Dispel", "Gravity", "Bind", "Break", "Breakga", "Blind", "Blind II", "Gravity", "Gravity II",}
	
	EnfeeblingMagic_mndmod= S{"Paralyze", "Paralyze II", "Dia", "Dia II", "Dia III", "Diaga", "Diaga II", 
	"Slow", "Slow II", "Addle",}
	
	Buffs= S{"Blink", "Stoneskin", "Phalanx", "Aquaveil",}
--spell lists

--augmented gear
	
--augmented gear

--basesetnames	
	sets.precast={}
	sets.precast.ja={}
	sets.midcast={}
	sets.midcast.nuke={}
	sets.aftercast={}	
--basesetnames

--precast sets
	sets.precast.nuke={head="Nahtirah Hat", body="Anhur Robe", hands="Bagua Mitaines", feet="Chelona Boots",
	legs="Geo. Pants +1", neck="Stoicheion Medal", waist="Othila Sash", left_ear="Loquac. Earring",
	right_ear="Etiolation Earring", left_ring="Prolix Ring", back="Lifestream Cape",}
	
	sets.precast.impact={body="Twilight Cloak", hands="Helios Gloves", feet="Chelona Boots",
	neck="Stoicheion Medal", waist="Othila Sash", left_ear="Loquac. Earring", right_ear="Etiolation Earring",
	legs="Geo. Pants +1", left_ring="Prolix Ring", back="Lifestream Cape",}
	
	sets.precast.notnuke={main="Marin Staff", head="Nahtirah Hat", body="Anhur Robe", hands="Helios Gloves", legs="Geo. Pants +1",
	feet="Chelona Boots", neck="Jeweled Collar", waist="Othila Sash", left_ear="Loquac. Earring", right_ear="Etiolation Earring",
	left_ring="Prolix Ring", back="Lifestream Cape",}
	
	sets.precast.geo=set_combine(sets.precast.notnuke,{range="Dunna"})
	
	sets.precast.ja["Life Cycle"]={body="Geo. Tunic +1",}
	
	sets.precast.ja["Bolster"]={body="Bagua Tunic",}
	
	sets.precast.ja["Radial Arcana"]={feet="Bagua Sandals",}
	
	sets.precast.ja[""]={}
--precast sets

--midcast sets
	sets.mpeset={}
	
	sets.mindmelter={main="Mindmelter",}
	
	sets.midcast.indi=set_combine(sets.precast.geo, {main="Venabulum", head="Helios Band", body="Bagua Tunic", hands="Geo. Mitaines +1", legs="Bagua Pants", feet="Umbani Boots",
	left_ear="Gifted Earring", right_ear="Gwati Earring", waist="Austerity Belt",})
	
	sets.midcast.geo=set_combine(sets.precast.geo, {main="Venabulum", head="Helios Band", body="Bagua Tunic", hands="Geo. Mitaines +1", legs="Bagua Pants", feet="Umbani Boots",
	left_ear="Gifted Earring", right_ear="Gwati Earring", waist="Austerity Belt",})
	
	sets.midcast.eledot={main="Marin Staff", sub="Elementa Grip", ammo="Witchstone", head="Geo. Galero +1", 
	body="Vanir Cotehardie", hands="Hagondes Cuffs +1", legs="Bokwus Slops", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}},
	neck="Eddy Necklace", waist="Aswang Sash", left_ear="Strophadic Earring", right_ear="Gwati Earring",
	left_ring="Sangoma Ring", right_ring="Strendu Ring", back="Toro Cape",}
	
	sets.midcast.darkdot={main="Marin Staff", sub="Caecus Grip", ammo="Witchstone", head="Nahtirah Hat", body="Vanir Cotehardie",
	hands="Hagondes Cuffs +1", legs="Bokwus Slops", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}}, neck="Eddy Necklace", waist="Aswang Sash",
	left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Sangoma Ring", right_ring="Archon Ring",
	back="Toro Cape",}
	
	sets.midcast.skillenfeeb={main={name="Twebuliij", augments={'MP+60','"Mag. Acc.+15"','MND+12',}}, sub="Mephitis Grip", body="Vanir Cotehardie",
	head="Befouled Crown", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}},
	hands="Lurid Mitts", legs="Portent Pants", neck="Enfeebling Torque", waist="Rumination Sash", right_ring="Sangoma Ring",
	left_ear="Psystorm Earring", right_ear="Lifestorm Earring", left_ring="Globidonta Ring", back="Toro Cape",}
	
	sets.midcast.mndenfeeb={main={name="Twebuliij", augments={'MP+60','"Mag. Acc.+15"','MND+12',}}, sub="Mephitis Grip", ammo="Witchstone", body="Vanir Cotehardie",
	hands="Lurid Mitts", legs="Bokwus Slops", head="Befouled Crown", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}}, neck="Eddy Necklace",
	waist="Rumination Sash", left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Sangoma Ring", right_ring="Levia. Ring",
	back="Toro Cape",}
	
	sets.midcast.doa={main="Marin Staff", sub="Caecus Grip", ammo="Witchstone", head="Bagua Galero", body="Vanir Cotehardie",
	hands="Hagondes Cuffs +1", legs="Bokwus Slops", feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}}, neck="Eddy Necklace", 
	left_ear="Gwati Earring", right_ear="Hirudinea Earring", left_ring="Sangoma Ring", right_ring="Archon Ring", waist="Fucho-no-Obi",
	back="Toro Cape",}
	
	sets.midcast.nuke.dmg={}
	
	sets.midcast.nuke.acc={}
	
	sets.midcast.nuke.dmg.lowtier={main="Marin Staff", sub="Elementa Grip", ammo="Ghastly Tathlum +1", body="Count's Garb",
	head={ name="Helios Band", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Magic crit. hit rate +5','Magic burst mdg.+1%',}},
	legs={ name="Hagondes Pants +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','"Mag.Atk.Bns."+20',}},
	feet="Umbani Boots", neck="Eddy Necklace", waist="Sekhmet Corset", left_ear="Crematio Earring", right_ear="Friomisi Earring",
	right_ring="Strendu Ring", back="Toro Cape",
	left_ring="Sangoma Ring", hands="Otomi Gloves",}
	
	sets.midcast.nuke.dmg.midtier={main="Marin Staff", sub="Elementa Grip", ammo="Ghastly Tathlum +1", body="Count's Garb",
	head={ name="Helios Band", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Magic crit. hit rate +5','Magic burst mdg.+1%',}},
	legs={ name="Hagondes Pants +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','"Mag.Atk.Bns."+20',}},
	feet="Umbani Boots", neck="Eddy Necklace", waist="Sekhmet Corset", left_ear="Crematio Earring", right_ear="Friomisi Earring",
	right_ring="Strendu Ring", back="Toro Cape",
	left_ring="Sangoma Ring", hands="Otomi Gloves",}
	
	sets.midcast.nuke.dmg.hightier={main="Marin Staff", sub="Elementa Grip", ammo="Ghastly Tathlum +1", head="Helios Band", body="Count's Garb",
	hands="Hagondes Cuffs +1", legs="Hagondes Pants +1", feet="Helios Boots", neck="Eddy Necklace", waist="Othila Sash", 
	left_ear="Crematio Earring", right_ear="Friomisi Earring", left_ring="Sangoma Ring", right_ring="Strendu Ring",
    back="Toro Cape",}
		
	sets.midcast.nuke.acc.lowtier= set_combine(sets.midcast.nuke.dmg.lowtier,{body="Wretched Coat", hands="Hagondes Cuffs +1", waist="Aswang Sash", back="Toro Cape"})
	
	sets.midcast.nuke.acc.midtier= set_combine(sets.midcast.nuke.dmg.midtier,{body="Wretched Coat", hands="Hagondes Cuffs +1", waist="Aswang Sash", back="Toro Cape"})
	
	sets.midcast.nuke.acc.hightier=set_combine(sets.midcast.nuke.dmg.hightier,{body="Wretched Coat", hands="Hagondes Cuffs +1", waist="Aswang Sash", back="Toro Cape"})
	
	sets.midcast.nuke.dark= set_combine(sets.midcast.nuke.dmg, {left_ring="Archon Ring",})
	
	sets.midcast.nuke.Impact={main="Marin Staff", sub="Elementa Grip", ammo="Witchstone", body="Twilight Cloak",
	hands="Yaoyotl Gloves", legs="Hagondes Pants +1", feet="Umbani Boots", neck="Eddy Necklace", waist="Othila Sash", 
	left_ear="Crematio Earring", right_ear="Friomisi Earring", left_ring="Archon Ring", right_ring="Strendu Ring",
    back="Toro Cape",}
	
	sets.midcast.stun={main="Marin Staff", sub="Caecus Grip", ammo="Witchstone", head="Nahtirah Hat", body="Vanir Cotehardie",
	hands="Hagondes Cuffs +1", legs={ name="Artsieq Hose", augments={'MP+30','Mag. Acc.+20','MND+7',}},
	feet={ name="Artsieq Boots", augments={'MP+30','Mag. Acc.+20','MND+7',}}, neck="Eddy Necklace", waist="Ninurta's Sash",
	left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Sangoma Ring", right_ring="Strendu Ring",
	back="Lifestream Cape",}
	
	sets.midcast.enh={main="Marin Staff", sub="Fulcio Grip", ammo="Witchstone", head="Nahtirah Hat", body="Anhur Robe",
	hands="Lurid Mitts", legs="Portent Pants", feet="Chelona Boots", neck="Colossus's Torque", waist="Cascade Belt",
	left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Levia. Ring", right_ring="Levia. Ring",
	back="Lifestream Cape",}	
	
	sets.midcast.cure={main="Tamaxchi", sub="Sors Shield", head="Nahtirah Hat", body="Heka's Kalasiris", hands="Serpentes Cuffs",
	legs="Nares Trews", feet="Serpentes Sabots", neck="Twilight Torque", waist="Cascade Belt", left_ear="Sanare Earring",
	right_ear="Ethereal Earring", left_ring="Vocane Ring", right_ring="Shadow Ring", back="Lifestream Cape",}
--midcast sets

--aftercast sets
	sets.aftercast.idle={}
	
	sets.aftercast.idle.refresh={main="Bolelabunga", sub="Genbu's Shield", head="Befouled Crown", body="Hagondes Coat +1", hands="Bagua Mitaines",
	legs="Assid. Pants +1", feet="Serpentes Sabots", neck="Twilight Torque", waist="Fucho-no-Obi", left_ear="Sanare Earring", right_ear="Ethereal Earring",
	left_ring="Defending Ring", right_ring="Shadow Ring", back="Shadow Mantle",}
	
	sets.aftercast.idle.refreshkite=set_combine(sets.aftercast.idle.refresh, {feet="Geo. Sandals +1",})
	
	sets.aftercast.idle.pdt= set_combine(sets.aftercast.idle.refresh, {hands="Hagondes Cuffs +1", legs="Hagondes Pants +1", feet="Hag. Sabots +1",})
	
	sets.aftercast.idle.pdtkite= set_combine(sets.aftercast.idle.pdt, {feet="Geo. Sandals +1",})
	
	sets.aftercast.idle.geo= set_combine(sets.aftercast.idle.refresh, {range="Dunna", hands="Geo. Mitaines +1", feet="Bagua Sandals", waist="Isa Belt", back="Lifestream Cape", })
	
	
--aftercast sets
end

function precast(spell)
	if spell.prefix=="/magic" then
		if Nukes:contains(spell.english) then
			equip(sets.precast.nuke)
		elseif Dark_Nukes:contains(spell.english) then
			equip(sets.precast.nuke)
		elseif Elemental_DoT:contains(spell.english) then
			equip(sets.precast.nuke)
		elseif spell.english=="Impact" then
			equip(sets.precast.impact)
		elseif spell.english:contains('Geo-','Indi-') then
			equip(sets.precast.geo)
		else
			equip(sets.precast.notnuke)
		end
	end
	if spell.prefix=="/jobability" then
		equip(sets.precast.ja[spell.english])
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
			equip(sets.midcast.nuke.acc.hightier)
		elseif spell.english=="Impact" then
			equip(sets.midcast.nuke.impact)
		end
	end
	if spell.skill== 'Elemental Magic' and buffactive["Poison"] then
		equip(sets.mindmelter)
	end
	if spell.english:contains('Indi-') then
		equip(sets.midcast.indi)
	elseif spell.english:contains('Geo-') then
		equip(sets.midcast.geo)
	end
end

function aftercast(spell)	
	if pet.isvalid==true then
		equip(sets.aftercast.idle.geo)
	else
		equip(sets.aftercast.idle[IdleType])
	end	
	if spell.english:contains('Geo-') then
		equip(sets.aftercast.idle.geo)
	end
	
	if not spell.interrupted then
        if spell.english == 'Sleep' or spell.english == 'Sleepga' then
            send_command('@wait 55;input /echo ------- '..spell.english..' is wearing off in 5 seconds -------')
        elseif spell.english == 'Sleep II' or spell.english == 'Sleepga II' then
            send_command('@wait 85;input /echo ------- '..spell.english..' is wearing off in 5 seconds -------')
        elseif spell.english == 'Break' or spell.english == 'Breakga' then
            send_command('@wait 25;input /echo ------- '..spell.english..' is wearing off in 5 seconds -------')
        end
    end
	if mm=="on" then
		if not buffactive["Poison"] then
			send_command('wait 0.5;input /item "El. Pachira Fruit" <me>')
		end
	end
end

function status_change(new,old)
	if new=="Idle" then
		if pet.isvalid==true then
			equip(sets.aftercast.idle.geo)
		end
	else
		equip(sets.aftercast.idle[IdleType])
	end
end

function self_command(command)
	if command=="IdleToggle" then
		if IdleType=="refresh" then
			IdleType="pdt"
			add_to_chat(206, "IdleType: PDT")
			send_command('text idlevariable text "PDT-IDLE"')
			send_command('alias idle gs equip sets.aftercast.idle.pdt')
			status_change(player.status)
		elseif IdleType=="pdt" then
			IdleType="pdtkite"
			add_to_chat(206, "IdleType: PDTKITE")
			send_command('text idlevariable text "PDT-KITE"')
			send_command('alias idle gs equip sets.aftercast.idle.pdtkite')
			status_change(player.status)
		elseif IdleType=="pdtkite" then
			IdleType="refreshkite"
			add_to_chat(206, "IdleType: Refresh KITE")
			send_command('text idlevariable text "REFRESH-KITE"')
			send_command('alias idle gs equip sets.aftercast.idle.refreshkite')
			status_change(player.status)
		elseif IdleType=="refreshkite" then
			IdleType="refresh"
			add_to_chat(206, "IdleType: Refresh")
			send_command('text idlevariable text "REFRESH-IDLE"')
			send_command('alias idle gs equip sets.aftercast.idle.refresh')
			status_change(player.status)
		end			
	end
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
		send_command('alias ra1 input /ma "Blizzara" <t>')
		send_command('alias ra2 input /ma "Blizzara II" <t>')
		send_command('text tpvariable text "ICE NUKES";text tpvariable color 0 255 255')
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
		send_command('alias ra1 input /ma "Fira" <t>')
		send_command('alias ra2 input /ma "Fira II" <t>')
		send_command('text tpvariable text "FIRE NUKES";text tpvariable color 255 0 0')
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
		send_command('alias ra1 input /ma "Stonera" <t>')
		send_command('alias ra2 input /ma "Stonera II" <t>')
		send_command('text tpvariable text "EARTH NUKES";text tpvariable color 140 100 0')
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
		send_command('alias ra1 input /ma "Aerora" <t>')
		send_command('alias ra2 input /ma "Aerora II" <t>')
		send_command('text tpvariable text "WIND NUKES";text tpvariable color 0 255 0')
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
		send_command('alias ra1 input /ma "Watera" <t>')
		send_command('alias ra2 input /ma "Watera II" <t>')
		send_command('text tpvariable text "WATER NUKES";text tpvariable color 0 0 200')
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
		send_command('alias ra1 input /ma "Thundara" <t>')
		send_command('alias ra2 input /ma "Thundara II" <t>')
		send_command('text tpvariable text "THUNDER NUKES";text tpvariable color 255 255 0')
		add_to_chat(206, 'THUNDER NUKES')
	end
	if command=="mpe" then
		if mpe=="off" then
			mpe="on"
			add_to_chat(206, 'MP ECONOMY ON')
			send_command('text idlevariable text "MPE-ON"')
		else
			mpe="off"
			add_to_chat(206, 'MP ECONOMY OFF')
			send_command('text idlevariable text "MPE-OFF"')
		end
	end
	if command=="mm" then
		if mm=="off" then
			mm="on"
			add_to_chat(206, 'MINDMELTER MODE ON')
			send_command('text wsvariable text "MM-ON"')
		else
			mm="off"
			add_to_chat(206, 'MINDMELTER MODE OFF')
			send_command('text wsvariable text "MM-OFF"')
		end
	end
	if command=="magic_mode" then
		if magic_mode=="dmg" then
			magic_mode="acc"
			add_to_chat(206, 'MAGIC MODE: ACC')
			send_command('text pdtvariable text "MAGIC-ACC"')
		else
			magic_mode="dmg"
			add_to_chat(206, 'MAGIC MODE: POTENCY')
			send_command('text pdtvariable text "MAGIC-POTENCY"')
		end
	end
end 