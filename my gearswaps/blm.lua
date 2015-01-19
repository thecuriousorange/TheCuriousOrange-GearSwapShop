function get_sets()
--default macroset
	send_command('input /macro book 3;input /macro set 1')
--default macroset

--spell lists
	Nukes= S{"Fire", "Fire II", "Fire III", "Fire IV", "Fire V", "Firaga", "Firaga II", "Firaga III", 
	"Firaja", "Flare", "Flare II", "Pyrohelix", "Fira", "Fira II", "Blizzard", "Blizzard II", "Blizzard III", 
	"Blizzard IV", "Blizzard V", "Blizzaga", "Blizzaga II", "Blizzaga III", "Blizzaja", "Cryohelix", "Freeze", 
	"Freeze II", "Blizzara", "Blizzara II", "Water", "Water II", "Water III", "Water IV", "Water V", "Waterga", 
	"Waterga II", "Waterga III", "Waterja", "Flood", "Flood II", "Hydrohelix", "Watera", "Watera II", "Thunder", 
	"Thunder II", "Thunder III", "Thunder IV", "Thunder V", "Thundaga", "Thundaga II", "Thundaga III", "Thundaja", 
	"Burst", "Burst II", "Ionohelix", "Thundara", "Thundara II", "Stone", "Stone II", "Stone III", "Stone IV", 
	"Stone V", "Stonega", "Stonega II", "Stonega III", "Stoneja", "Quake", "Quake II", "Geohelix", "Stonera", 
	"Stonera II", "Aero", "Aero II", "Aero III", "Aero IV", "Aero V", "Aeroga", "Aeroga II", "Aeroga III", 
	"Aeroja", "Tornado", "Tornado II", "Anemohelix", "Aera", "Aera II", "Banish", "Banish II", 
	"Banishga", "Banishga II", "Banish III", "Holy", "Holy II", "Luminohelix",}
	
	Dark_Nukes= S{"Comet", "Noctohelix",}
	
	Elemental_DoT= S{"Shock", "Choke", "Burn", "Rasp", "Frost", "Drown",}
	
	DarkMagic_DoT= S{"Bio", "Bio II", "Bio III",}
	
	DarkMagic_Drain_Aspir= S{"Drain", "Drain II", "Aspir", "Aspir II",}
	
	EnfeeblingMagic_skillmod= S{"Sleep", "Sleep II", "Sleepga", "Sleepga II", "Poison", "Poison II", "Poisonga", 
	"Poisonga II", "Dispel", "Gravity", "Bind", "Break", "Breakga", "Blind", "Blind II", "Gravity", "Gravity II",}
	
	EnfeeblingMagic_mndmod= S{"Paralyze", "Paralyze II", "Dia", "Dia II", "Dia III", "Diaga", "Diaga II", 
	"Slow", "Slow II", "Addle",}
	
	Buffs= S{"Blink", "Stoneskin", "Phalanx", "Aquaveil",}
--spell lists
--basesetnames	
	sets.precast={}
	sets.midcast={}
	sets.midcast.nuke={}
	sets.aftercast={}	
--basesetnames

--precast sets
	sets.precast.nuke={head="Goetia Petasos +2", body="Anhur Robe", hands="Magavan Mitts", legs="Orvail Pants +1", feet="Chelona Boots",
	neck="Stoicheion Medal", waist="Othila Sash", left_ear="Loquac. Earring", right_ear="Ethereal Earring",
	left_ring="Prolix Ring", back="Swith Cape",}
	
	sets.precast.impact={body="Twilight Cloak", hands="Magavan Mitts", legs="Orvail Pants +1", feet="Chelona Boots",
	neck="Stoicheion Medal", waist="Othila Sash", left_ear="Loquac. Earring", right_ear="Ethereal Earring",
	left_ring="Prolix Ring", back="Swith Cape",}
	
	sets.precast.notnuke={head="Nahtirah Hat", body="Anhur Robe", hands="Magavan Mitts", legs="Orvail Pants +1",
	feet="Chelona Boots", neck="Jeweled Collar", waist="Othila Sash", left_ear="Loquac. Earring", right_ear="Ethereal Earring",
	left_ring="Prolix Ring", back="Swith Cape",}
	
--precast sets

--midcast sets
	sets.midcast.eledot={main="Venabulum", sub="Elementa Grip", ammo="Witchstone", head="Goetia Petasos +2", 
	body="Vanir Cotehardie", hands="Hagondes Cuffs", legs="Bokwus Slops", feet="Bokwus boots",
	neck="Eddy Necklace", waist="Aswang Sash", left_ear="Strophadic Earring", right_ear="Gwati Earring",
	left_ring="Sangoma Ring", right_ring="Strendu Ring", back="Bane Cape",}
	
	sets.midcast.darkdot={main="Venabulum", sub="Caecus Grip", ammo="Witchstone", head="Nahtirah Hat", body="Vanir Cotehardie",
	hands="Hagondes Cuffs", legs="Bokwus Slops", feet="Bokwus boots", neck="Eddy Necklace", waist="Aswang Sash",
	left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Sangoma Ring", right_ring="Archon Ring",
	back="Bane Cape",}
	
	sets.midcast.skillenfeeb={main="Venabulum", sub="Mephitis Grip", head="Nahtirah Hat", body="Wizard's Coat",
	hands="Ayao's Gages", legs="Portent Pants", feet="Bokwus boots", neck="Enfeebling Torque", waist="Aswang Sash",
	left_ear="Psystorm Earring", right_ear="Lifestorm Earring", left_ring="Diamond Ring", right_ring="Sangoma Ring",
	back="Bane Cape",}
	
	sets.midcast.mndenfeeb={main="Venabulum", sub="Mephitis Grip", ammo="Witchstone", head="Nahtirah Hat", body="Vanir Cotehardie",
	hands="Hagondes Cuffs", legs="Bokwus Slops", feet="Bokwus boots", neck="Eddy Necklace", waist="Aswang Sash",
	left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Sangoma Ring", right_ring="Levia. Ring",
	back="Bane Cape",}
	
	sets.midcast.doa={main="Venabulum", sub="Caecus Grip", ammo="Witchstone", head="Appetence Crown", body="Vanir Cotehardie",
	hands="Hagondes Cuffs", legs="Bokwus Slops", feet="Bokwus boots", neck="Eddy Necklace", waist="Fucho-no-Obi",
	left_ear="Gwati Earring", right_ear="Hirudinea Earring", left_ring="Sangoma Ring", right_ring="Archon Ring",
	back="Bane Cape",}
	
	sets.midcast.nuke.dmg={main="Venabulum", sub="Elementa Grip", ammo="Witchstone", head="Hagondes Hat +1", body="Artsieq Jubbah",
	hands="Yaoyotl Gloves", legs="Hagondes Pants", feet="Umbani Boots", neck="Eddy Necklace", waist="Sekhmet Corset", 
	left_ear="Crematio Earring", right_ear="Friomisi Earring", left_ring="Sangoma Ring", right_ring="Strendu Ring",
    back="Toro Cape",}
	
	sets.midcast.nuke.dark= set_combine(sets.midcast.nuke.dmg, {left_ring="Archon Ring",})
	
	sets.midcast.nuke.Impact={main="Venabulum", sub="Elementa Grip", ammo="Witchstone", body="Twilight Cloak",
	hands="Yaoyotl Gloves", legs="Hagondes Pants", feet="Umbani Boots", neck="Eddy Necklace", waist="Othila Sash", 
	left_ear="Crematio Earring", right_ear="Friomisi Earring", left_ring="Archon Ring", right_ring="Strendu Ring",
    back="Toro Cape",}
	
	sets.midcast.stun={main="Venabulum", sub="Caecus Grip", ammo="Witchstone", head="Nahtirah Hat", body="Vanir Cotehardie",
	hands="Hagondes Cuffs", legs="Bokwus Slops", feet="Bokwus boots", neck="Eddy Necklace", waist="Ninurta's Sash",
	left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Sangoma Ring", right_ring="Strendu Ring",
	back="Bane Cape",}
	
	sets.midcast.enh={main="Venabulum", sub="Fulcio Grip", ammo="Witchstone", head="Nahtirah Hat", body="Bokwus Robe",
	hands="Ayao's Gages", legs="Portent Pants", feet="Chelona Boots", neck="Colossus's Torque", waist="Cascade Belt",
	left_ear="Lifestorm Earring", right_ear="Psystorm Earring", left_ring="Levia. Ring", right_ring="Levia. Ring",
	back="Swith Cape",}	
	
	sets.midcast.cure={main="Tamaxchi", sub="Sors Shield", head="Nahtirah Hat", body="Heka's Kalasiris", hands="Serpentes Cuffs",
	legs="Nares Trews", feet="Serpentes Sabots", neck="Twilight Torque", waist="Cascade Belt", left_ear="Sanare Earring",
	right_ear="Ethereal Earring", left_ring="Dark Ring", right_ring="Shadow Ring", back="Swith Cape",}
--midcast sets

--aftercast sets
	sets.aftercast.idle={main="Bolelabunga", sub="Genbu's Shield", head="Wivre Hairpin", body="Hagondes Coat +1", hands="Serpentes Cuffs",
	legs="Nares Trews", feet="Serpentes Sabots", neck="Twilight Torque", waist="Fucho-no-Obi", left_ear="Sanare Earring", right_ear="Ethereal Earring",
	left_ring="Dark Ring", right_ring="Shadow Ring", back="Shadow Mantle",}	
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
	if Dark_Nukes:contains(spell.english) then
		equip(sets.midcast.nuke.dark)
	elseif Nukes:contains(spell.english) then
		equip(sets.midcast.nuke.dmg)
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
		equip(sets.midcast.nuke.dmg)
	elseif spell.english=="Impact" then
		equip(sets.midcast.nuke.impact)
	end
end

function aftercast(spell)
	if player.status=="Idle" then
		equip(sets.aftercast.idle)
	end
end

function status_change(new,old)
	if new=="Idle" then
		equip(sets.aftercast.idle)
	else
		equip(sets.aftercast.idle)
	end
end