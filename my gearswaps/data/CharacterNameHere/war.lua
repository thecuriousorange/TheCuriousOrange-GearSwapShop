function get_sets()

	include("organizer-lib.lua")

	windower.send_command('bind @f1 gs c tp')
	windower.send_command('bind @f2 gs c hybrid')
	windower.send_command('bind @f3 gs c dt')
	windower.send_command('bind @f5 gs c Chango')
	windower.send_command('bind @f6 gs c Ragnarok')
	windower.send_command('bind @f7 gs c ShiningOne')
	windower.send_command('bind #f5 gs c Dolichenus')
	windower.send_command('bind #f6 gs c Naegling')
	windower.send_command('bind @f9 gs c lowacc')
	windower.send_command('bind @f10 gs c medacc')
	windower.send_command('bind @f11 gs c highacc')
	windower.send_command('bind @f12 gs c toggle_ws')
	windower.send_command('bind #f1 gs c standardidle')
	windower.send_command('bind #f3 gs c regnidle')
	windower.send_command('bind #f4 gs c dtidle')
	send_command('input /macro book 6;input /macro set 8')

	itchyjob="geo"
	LeluJob="brd"
	TPType="dd"
	weaponry="Chango"
	tpacc="lowacc"
	idletype="standard"
	wstype="dmg"

	sets.itchyjob=T{}
	sets.LeluJob=T{}
	sets.TPtype=T{}
	sets.weaponry=T{}
	sets.tpacc=T{}
	sets.idletype=T{}
	sets.wstype=T{}

	include("lelu"..LeluJob.."gkeys.lua")
	include("itchy"..itchyjob.."gkeys.lua")

--GUI setup
windower.prim.create('TP_SET')
windower.prim.create('ACC_SET')
windower.prim.create('IDLE_SET')
windower.prim.create('WS_SET')
windower.prim.create('WEAPON_SET')

windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/'..TPType..'mode.png')
windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/'..tpacc..'.png')
windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/'..idletype..'idle.png')
windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/images/'..wstype..'.png')
windower.prim.set_texture('WEAPON_SET',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')

windower.prim.set_size('TP_SET',200,30)
windower.prim.set_size('ACC_SET',200,30)
windower.prim.set_size('IDLE_SET',200,30)
windower.prim.set_size('WS_SET',200,30)
windower.prim.set_size('WEAPON_SET',200,55)

windower.prim.set_position('TP_SET',0.65*windower.get_windower_settings().ui_x_res,50)
windower.prim.set_position('ACC_SET',0.65*windower.get_windower_settings().ui_x_res,90)
windower.prim.set_position('IDLE_SET',0.65*windower.get_windower_settings().ui_x_res,130)
windower.prim.set_position('WS_SET',0.65*windower.get_windower_settings().ui_x_res,170)
windower.prim.set_position('WEAPON_SET',0.65*windower.get_windower_settings().ui_x_res,210)

windower.prim.set_color('TP_SET', 100, 255, 255, 255)
windower.prim.set_color('ACC_SET', 100, 255, 255, 255)
windower.prim.set_color('IDLE_SET', 100, 255, 255, 255)
windower.prim.set_color('WS_SET', 100, 255, 255, 255)
windower.prim.set_color('WEAPON_SET', 130, 255, 255, 255)

windower.prim.set_visibility('TP_SET',true)
windower.prim.set_visibility('ACC_SET',true)
windower.prim.set_visibility('IDLE_SET',true)
windower.prim.set_visibility('WS_SET',true)
windower.prim.set_visibility('WEAPON_SET',true)
--GUI setup

	sets.ja={}

	sets.Ragnarok={main="Ragnarok", sub="Utu Grip",}
	sets.Ragnarok.tp=set_combine(sets.Ragnarok,{})
	sets.Ragnarok.idle=set_combine(sets.Ragnarok,{})
	sets.Ragnarok.hybrid=set_combine(sets.Ragnarok,{})

	sets.Ragnarok.tp.lowacc=set_combine(sets.Ragnarok, {
	ammo="Aurgelmir Orb +1",
    head="Flam. Zucchetto +2",
    body="Dagon Breast.",
    hands="Sulev. Gauntlets +2",
    legs="Pumm. Cuisses +3",
    feet="Pumm. Calligae +3",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Flamma Ring",
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10',}},
	})

	sets.Ragnarok.tp.medacc=set_combine(sets.Ragnarok.tp.lowacc,{
	left_ear="Mache Earring +1",
	right_ear="Telos Earring",
	right_ring="Regal Ring",
	})

	sets.Ragnarok.tp.highacc=set_combine(sets.Ragnarok.tp.medacc,{
	neck="Combatant's Torque",
	body={ name="Emicho Haubert +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
	})

	sets.Ragnarok.dt=set_combine(sets.Ragnarok,{
		ammo="Staunch Tathlum +1",
		head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
		body={ name="Souv. Cuirass +1", augments={'VIT+12','Attack+25','"Refresh"+3',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Hermes' Sandals",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Moonlight Ring",
		right_ring="Moonlight Ring",
		back="Moonlight Cape",
	})

	sets.Chango={main="Chango", sub="Utu Grip",}
	sets.Chango.tp={}
	sets.Chango.idle={}
	sets.Chango.hybrid={}

	sets.Chango.tp.lowacc=set_combine(sets.Chango,{
	ammo="Aurgelmir Orb +1",
    head="Flam. Zucchetto +2",
    body="Dagon Breast.",
    hands="Sulev. Gauntlets +2",
    legs="Pumm. Cuisses +3",
    feet="Pumm. Calligae +3",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Flamma Ring",
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10',}},
	})

	sets.Chango.tp.medacc=set_combine(sets.Chango.tp.lowacc,{
	left_ear="Mache Earring +1",
	right_ear="Telos Earring",
	right_ring="Regal Ring"
	})

	sets.Chango.tp.highacc=set_combine(sets.Chango.tp.medacc,{
		neck="Combatant's Torque",
		body={ name="Emicho Haubert +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
	})

	sets.Chango.hybrid.lowacc=set_combine(sets.Chango.tp.lowacc,{
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		right_ring="Moonlight Ring",
		left_ring="Moonlight Ring",
	})

	sets.Chango.hybrid.medacc=set_combine(sets.Chango.tp.medacc,{
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		right_ring="Moonlight Ring",
		left_ring="Moonlight Ring",
	})

	sets.Chango.hybrid.highacc=set_combine(sets.Chango.tp.highacc,{
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		right_ring="Moonlight Ring",
		left_ring="Moonlight Ring",
	})

	sets.Chango.dt=set_combine(sets.Chango,{
		ammo="Staunch Tathlum +1",
		head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
		body={ name="Souv. Cuirass +1", augments={'VIT+12','Attack+25','"Refresh"+3',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet={ name="Souveran Schuhs +1", augments={'HP+65','Attack+25','Magic dmg. taken -4',}},
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Moonlight Ring",
		right_ring="Moonlight Ring",
		back="Moonlight Cape",
	})

	sets.Chango.idle={}

	sets.Chango.idle.standard=set_combine(sets.Chango,{
		ammo="Staunch Tathlum +1",
		head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}},
		body="Tartarus Platemail",
		hands="Sulev. Gauntlets +2",
		legs="Sulev. Cuisses +2",
		feet="Hermes' Sandals",
		neck="Loricate Torque +1",
		waist="Nierenschutz",
		left_ear="Ethereal Earring",
		right_ear="Infused Earring",
		left_ring="Sheltered Ring",
		right_ring="Shadow Ring",
		back="Shadow Mantle",
	})

	sets.Chango.idle.dt=set_combine(sets.Chango,{
		ammo="Staunch Tathlum +1",
		head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
		body={ name="Souv. Cuirass +1", augments={'VIT+12','Attack+25','"Refresh"+3',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Hermes' Sandals",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Moonlight Ring",
		right_ring="Moonlight Ring",
		back="Moonlight Cape",
	})

	sets.Chango.idle.regen=set_combine(sets.Chango,{
		ammo="Staunch Tathlum +1",
    head="Baghere Salade",
    body="Sakpata's Breastplate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Hermes' Sandals",
    neck="Sanctity Necklace",
    waist="Nierenschutz",
    left_ear="Ethereal Earring",
    right_ear="Infused Earring",
    left_ring="Sheltered Ring",
    right_ring="Chirich Ring +1",
    back="Shadow Mantle",
	})

	sets.Ragnarok.idle.standard=set_combine(sets.Ragnarok,{
		ammo="Staunch Tathlum +1",
		head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}},
		body="Tartarus Platemail",
		hands="Sulev. Gauntlets +2",
		legs="Sulev. Cuisses +2",
		feet="Hermes' Sandals",
		neck="Loricate Torque +1",
		waist="Nierenschutz",
		left_ear="Ethereal Earring",
		right_ear="Infused Earring",
		left_ring="Sheltered Ring",
		right_ring="Shadow Ring",
		back="Shadow Mantle",
	})

	sets.Ragnarok.hybrid.lowacc=set_combine(sets.Ragnarok.tp.lowacc,{
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		right_ring="Moonlight Ring",
		left_ring="Moonlight Ring",
	})

	sets.Ragnarok.hybrid.medacc=set_combine(sets.Ragnarok.tp.medacc,{
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		right_ring="Moonlight Ring",
		left_ring="Moonlight Ring",
	})

	sets.Ragnarok.hybrid.highacc=set_combine(sets.Ragnarok.tp.highacc,{
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		right_ring="Moonlight Ring",
		left_ring="Moonlight Ring",
	})

	sets.Ragnarok.idle.dt=set_combine(sets.Ragnarok,{
		ammo="Staunch Tathlum +1",
		head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
		body={ name="Souv. Cuirass +1", augments={'VIT+12','Attack+25','"Refresh"+3',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Hermes' Sandals",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Moonlight Ring",
		right_ring="Moonlight Ring",
		back="Moonlight Cape",
	})

	sets.Ragnarok.idle.regen=set_combine(sets.Ragnarok,{
		ammo="Staunch Tathlum +1",
    head="Baghere Salade",
    body="Sakpata's Breastplate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Hermes' Sandals",
    neck="Sanctity Necklace",
    waist="Nierenschutz",
    left_ear="Ethereal Earring",
    right_ear="Infused Earring",
    left_ring="Sheltered Ring",
    right_ring="Chirich Ring +1",
    back="Shadow Mantle",
	})

	sets.Dolichenus={main="Dolichenus", sub="Blurred Shield +1",}
	sets.Dolichenus.tp={}
	sets.Dolichenus.idle={}
	sets.Dolichenus.hybrid={}

	sets.Dolichenus.tp.lowacc=set_combine(sets.Dolichenus,{
		ammo="Aurgelmir Orb +1",
    head="Flam. Zucchetto +2",
    body="Dagon Breast.",
    hands="Sulev. Gauntlets +2",
    legs="Pumm. Cuisses +3",
    feet="Pumm. Calligae +3",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Flamma Ring",
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10',}},
	})

	sets.Dolichenus.tp.medacc=set_combine(sets.Dolichenus.tp.lowacc,{
		left_ear="Mache Earring +1",
		right_ear="Telos Earring",
		right_ring="Regal Ring",
	})

	sets.Dolichenus.tp.highacc=set_combine(sets.Dolichenus.tp.medacc,{
		neck="Combatant's Torque",
		body={ name="Emicho Haubert +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
	})

	sets.Dolichenus.hybrid.lowacc=set_combine(sets.Dolichenus.tp.lowacc,{
		neck="Loricate Torque +1",
		left_ring="Defending Ring",
	})

	sets.Dolichenus.hybrid.medacc=set_combine(sets.Dolichenus.tp.medacc,{
	neck="Loricate Torque +1",
	left_ring="Defending Ring",
	})

	sets.Dolichenus.hybrid.highacc=set_combine(sets.Dolichenus.tp.highacc,{
	neck="Loricate Torque +1",
	left_ring="Defending Ring",
	})

	sets.Dolichenus.dt=set_combine(sets.Dolichenus,{
		ammo="Staunch Tathlum +1",
		head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
		body={ name="Souv. Cuirass +1", augments={'VIT+12','Attack+25','"Refresh"+3',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet={ name="Souveran Schuhs +1", augments={'HP+65','Attack+25','Magic dmg. taken -4',}},
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Moonlight Ring",
		right_ring="Moonlight Ring",
		back="Moonlight Cape",
	})

	sets.Dolichenus.idle={}

	sets.Dolichenus.idle.standard=set_combine(sets.Dolichenus,{
		ammo="Staunch Tathlum +1",
		head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}},
		body="Tartarus Platemail",
		hands="Sulev. Gauntlets +2",
		legs="Sulev. Cuisses +2",
		feet="Hermes' Sandals",
		neck="Loricate Torque +1",
		waist="Nierenschutz",
		left_ear="Ethereal Earring",
		right_ear="Infused Earring",
		left_ring="Sheltered Ring",
		right_ring="Shadow Ring",
		back="Shadow Mantle",
	})

	sets.Dolichenus.idle.dt=set_combine(sets.Dolichenus,{
		ammo="Staunch Tathlum +1",
		head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
		body={ name="Souv. Cuirass +1", augments={'VIT+12','Attack+25','"Refresh"+3',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Hermes' Sandals",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Moonlight Ring",
		right_ring="Moonlight Ring",
		back="Moonlight Cape",
	})

	sets.Dolichenus.idle.regen=set_combine(sets.Dolichenus,{
		ammo="Staunch Tathlum +1",
    head="Baghere Salade",
    body="Sakpata's Breastplate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Hermes' Sandals",
    neck="Sanctity Necklace",
    waist="Nierenschutz",
    left_ear="Ethereal Earring",
    right_ear="Infused Earring",
    left_ring="Sheltered Ring",
    right_ring="Chirich Ring +1",
    back="Shadow Mantle",
	})

	sets.Naegling={main="Naegling", sub="Blurred Shield +1",}
	sets.Naegling.tp={}
	sets.Naegling.idle={}
	sets.Naegling.hybrid={}

	sets.Naegling.tp.lowacc=set_combine(sets.Naegling,{
		ammo="Yetshila +1",
    head="Hjarrandi Helm",
    body={ name="Agoge Lorica +3", augments={'Enhances "Aggressive Aim" effect',}},
    hands="Sulev. Gauntlets +2",
    legs={ name="Agoge Cuisses +3", augments={'Enhances "Warrior\'s Charge" effect',}},
    feet="Pumm. Calligae +3",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Hetairoi Ring",
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	})

	sets.Naegling.tp.medacc=set_combine(sets.Naegling.tp.lowacc,{
	left_ear="Mache Earring +1",
	right_ear="Telos Earring",
	right_ring="Regal Ring"
	})

	sets.Naegling.tp.highacc=set_combine(sets.Naegling.tp.medacc,{
	neck="Combatant's Torque",
	body={ name="Emicho Haubert +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
	})

	sets.Naegling.hybrid.lowacc=set_combine(sets.Naegling.tp.lowacc,{
	head="Sakpata's Helm",
	body="Sakpata's Plate",
	hands="Sakpata's Gauntlets",
	legs="Sakpata's Cuisses",
	feet="Sakpata's Leggings",
	})

	sets.Naegling.hybrid.medacc=set_combine(sets.Naegling.tp.medacc,{
	neck="Loricate Torque +1",
	left_ring="Defending Ring",
	})

	sets.Naegling.hybrid.highacc=set_combine(sets.Naegling.tp.highacc,{
	neck="Loricate Torque +1",
	left_ring="Defending Ring",
	})

	sets.Naegling.dt=set_combine(sets.Naegling,{
		ammo="Staunch Tathlum +1",
		head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
		body={ name="Souv. Cuirass +1", augments={'VIT+12','Attack+25','"Refresh"+3',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet={ name="Souveran Schuhs +1", augments={'HP+65','Attack+25','Magic dmg. taken -4',}},
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Moonlight Ring",
		right_ring="Moonlight Ring",
		back="Moonlight Cape",
	})

	sets.Naegling.idle={}

	sets.Naegling.idle.standard=set_combine(sets.Naegling,{
		ammo="Staunch Tathlum +1",
		head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}},
		body="Tartarus Platemail",
		hands="Sulev. Gauntlets +2",
		legs="Sulev. Cuisses +2",
		feet="Hermes' Sandals",
		neck="Loricate Torque +1",
		waist="Nierenschutz",
		left_ear="Ethereal Earring",
		right_ear="Infused Earring",
		left_ring="Sheltered Ring",
		right_ring="Shadow Ring",
		back="Shadow Mantle",
	})

	sets.Naegling.idle.dt=set_combine(sets.Naegling,{
		ammo="Staunch Tathlum +1",
		head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
		body={ name="Souv. Cuirass +1", augments={'VIT+12','Attack+25','"Refresh"+3',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Hermes' Sandals",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Moonlight Ring",
		right_ring="Moonlight Ring",
		back="Moonlight Cape",
	})

	sets.Naegling.idle.regen=set_combine(sets.Naegling,{
		ammo="Staunch Tathlum +1",
    head="Baghere Salade",
    body="Sakpata's Breastplate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Hermes' Sandals",
    neck="Sanctity Necklace",
    waist="Nierenschutz",
    left_ear="Ethereal Earring",
    right_ear="Infused Earring",
    left_ring="Sheltered Ring",
    right_ring="Chirich Ring +1",
    back="Shadow Mantle",
	})

	sets.Naeglingdw={main="Naegling", sub="Reikiko",}
	sets.Naeglingdw.tp={}
	sets.Naeglingdw.idle={}
	sets.Naeglingdw.hybrid={}

	sets.Naeglingdw.tp.lowacc=set_combine(sets.Naeglingdw,{
		ammo="Aurgelmir Orb +1",
    head="Hjarrandi Helm",
    body={ name="Agoge Lorica +3", augments={'Enhances "Aggressive Aim" effect',}},
    hands="Sulev. Gauntlets +2",
    legs="Pumm. Cuisses +3",
    feet="Pumm. Calligae +3",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Suppanomimi",
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
	})

	sets.Naeglingdw.tp.medacc=set_combine(sets.Naeglingdw.tp.lowacc,{
	right_ear="Telos Earring",
	right_ring="Regal Ring"
	})

	sets.Naeglingdw.tp.highacc=set_combine(sets.Naeglingdw.tp.medacc,{
	neck="Combatant's Torque",
	body={ name="Emicho Haubert +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
	})

	sets.Naeglingdw.hybrid.lowacc=set_combine(sets.Naeglingdw.tp.lowacc,{
	neck="Loricate Torque +1",
	left_ring="Defending Ring",
	})

	sets.Naeglingdw.hybrid.medacc=set_combine(sets.Naeglingdw.tp.medacc,{
	neck="Loricate Torque +1",
	left_ring="Defending Ring",
	})

	sets.Naeglingdw.hybrid.highacc=set_combine(sets.Naeglingdw.tp.highacc,{
	neck="Loricate Torque +1",
	left_ring="Defending Ring",
	})

	sets.Naeglingdw.dt=set_combine(sets.Naeglingdw,{
		ammo="Staunch Tathlum +1",
		head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
		body={ name="Souv. Cuirass +1", augments={'VIT+12','Attack+25','"Refresh"+3',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet={ name="Souveran Schuhs +1", augments={'HP+65','Attack+25','Magic dmg. taken -4',}},
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Moonlight Ring",
		right_ring="Moonlight Ring",
		back="Moonlight Cape",
	})

	sets.Naeglingdw.idle={}

	sets.Naeglingdw.idle.standard=set_combine(sets.Naeglingdw,{
		ammo="Staunch Tathlum +1",
		head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}},
		body="Tartarus Platemail",
		hands="Sulev. Gauntlets +2",
		legs="Sulev. Cuisses +2",
		feet="Hermes' Sandals",
		neck="Loricate Torque +1",
		waist="Nierenschutz",
		left_ear="Ethereal Earring",
		right_ear="Infused Earring",
		left_ring="Sheltered Ring",
		right_ring="Shadow Ring",
		back="Shadow Mantle",
	})

	sets.Naeglingdw.idle.dt=set_combine(sets.Naeglingdw,{
		ammo="Staunch Tathlum +1",
		head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
		body={ name="Souv. Cuirass +1", augments={'VIT+12','Attack+25','"Refresh"+3',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Hermes' Sandals",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Moonlight Ring",
		right_ring="Moonlight Ring",
		back="Moonlight Cape",
	})

	sets.Naeglingdw.idle.regen=set_combine(sets.Naeglingdw,{
		ammo="Staunch Tathlum +1",
    head="Baghere Salade",
    body="Sakpata's Breastplate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Hermes' Sandals",
    neck="Sanctity Necklace",
    waist="Nierenschutz",
    left_ear="Ethereal Earring",
    right_ear="Infused Earring",
    left_ring="Sheltered Ring",
    right_ring="Chirich Ring +1",
    back="Shadow Mantle",
	})

	sets.Dolichenusdw={main="Dolichenus", sub="Reikiko"}
	sets.Dolichenusdw.tp={}
	sets.Dolichenusdw.idle={}
	sets.Dolichenusdw.hybrid={}

	sets.Dolichenusdw.tp.lowacc=set_combine(sets.Dolichenusdw,{
		ammo="Aurgelmir Orb +1",
    head="Flam. Zucchetto +2",
    body="Dagon Breast.",
    hands="Sulev. Gauntlets +2",
    legs="Pumm. Cuisses +3",
    feet="Pumm. Calligae +3",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Flamma Ring",
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10',}},
	})

	sets.Dolichenusdw.tp.medacc=set_combine(sets.Dolichenusdw.tp.lowacc,{
		left_ear="Mache Earring +1",
		right_ear="Telos Earring",
		right_ring="Regal Ring",
	})

	sets.Dolichenusdw.tp.highacc=set_combine(sets.Dolichenusdw.tp.medacc,{
		neck="Combatant's Torque",
		body={ name="Emicho Haubert +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
	})

	sets.Dolichenusdw.hybrid.lowacc=set_combine(sets.Dolichenusdw.tp.lowacc,{
		neck="Loricate Torque +1",
		left_ring="Defending Ring",
	})

	sets.Dolichenusdw.hybrid.medacc=set_combine(sets.Dolichenusdw.tp.medacc,{
	neck="Loricate Torque +1",
	left_ring="Defending Ring",
	})

	sets.Dolichenusdw.hybrid.highacc=set_combine(sets.Dolichenusdw.tp.highacc,{
	neck="Loricate Torque +1",
	left_ring="Defending Ring",
	})

	sets.Dolichenusdw.dt=set_combine(sets.Dolichenusdw,{
		ammo="Staunch Tathlum +1",
		head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
		body={ name="Souv. Cuirass +1", augments={'VIT+12','Attack+25','"Refresh"+3',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet={ name="Souveran Schuhs +1", augments={'HP+65','Attack+25','Magic dmg. taken -4',}},
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Moonlight Ring",
		right_ring="Moonlight Ring",
		back="Moonlight Cape",
	})

	sets.Dolichenusdw.idle={}

	sets.Dolichenusdw.idle.standard=set_combine(sets.Dolichenusdw,{
		ammo="Staunch Tathlum +1",
		head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}},
		body="Tartarus Platemail",
		hands="Sulev. Gauntlets +2",
		legs="Sulev. Cuisses +2",
		feet="Hermes' Sandals",
		neck="Loricate Torque +1",
		waist="Nierenschutz",
		left_ear="Ethereal Earring",
		right_ear="Infused Earring",
		left_ring="Sheltered Ring",
		right_ring="Shadow Ring",
		back="Shadow Mantle",
	})

	sets.Dolichenusdw.idle.dt=set_combine(sets.Dolichenusdw,{
		ammo="Staunch Tathlum +1",
		head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
		body={ name="Souv. Cuirass +1", augments={'VIT+12','Attack+25','"Refresh"+3',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Hermes' Sandals",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Moonlight Ring",
		right_ring="Moonlight Ring",
		back="Moonlight Cape",
	})

	sets.Dolichenusdw.idle.regen=set_combine(sets.Dolichenusdw,{
		ammo="Staunch Tathlum +1",
    head="Baghere Salade",
    body="Sakpata's Breastplate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Hermes' Sandals",
    neck="Sanctity Necklace",
    waist="Nierenschutz",
    left_ear="Ethereal Earring",
    right_ear="Infused Earring",
    left_ring="Sheltered Ring",
    right_ring="Chirich Ring +1",
    back="Shadow Mantle",
	})

	sets.ShiningOne={main="Shining One", sub="Utu Grip",}
	sets.ShiningOne.tp={}
	sets.ShiningOne.idle={}
	sets.ShiningOne.hybrid={}

	sets.ShiningOne.tp.lowacc=set_combine(sets.ShiningOne,{
	ammo="Aurgelmir Orb +1",
    head="Flam. Zucchetto +2",
    body="Dagon Breast.",
    hands="Sulev. Gauntlets +2",
    legs="Pumm. Cuisses +3",
    feet="Pumm. Calligae +3",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Flamma Ring",
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10',}},
	})

	sets.ShiningOne.tp.medacc=set_combine(sets.ShiningOne.tp.lowacc,{
	left_ear="Mache Earring +1",
	right_ear="Telos Earring",
	right_ring="Regal Ring"
	})

	sets.ShiningOne.tp.highacc=set_combine(sets.ShiningOne.tp.medacc,{
	neck="Combatant's Torque",
	body={ name="Emicho Haubert +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
	})

	sets.ShiningOne.hybrid.lowacc=set_combine(sets.ShiningOne.tp.lowacc,{
	neck="Loricate Torque +1",
	left_ring="Defending Ring",
	})

	sets.ShiningOne.hybrid.medacc=set_combine(sets.ShiningOne.tp.medacc,{
	neck="Loricate Torque +1",
	left_ring="Defending Ring",
	})

	sets.ShiningOne.hybrid.highacc=set_combine(sets.ShiningOne.tp.highacc,{
	neck="Loricate Torque +1",
	left_ring="Defending Ring",
	})

	sets.ShiningOne.dt=set_combine(sets.ShiningOne,{
		ammo="Staunch Tathlum +1",
		head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
		body={ name="Souv. Cuirass +1", augments={'VIT+12','Attack+25','"Refresh"+3',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet={ name="Souveran Schuhs +1", augments={'HP+65','Attack+25','Magic dmg. taken -4',}},
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Moonlight Ring",
		right_ring="Moonlight Ring",
		back="Moonlight Cape",
	})

	sets.ShiningOne.idle={}

	sets.ShiningOne.idle.standard=set_combine(sets.ShiningOne,{
		ammo="Staunch Tathlum +1",
		head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}},
		body="Tartarus Platemail",
		hands="Sulev. Gauntlets +2",
		legs="Sulev. Cuisses +2",
		feet="Hermes' Sandals",
		neck="Loricate Torque +1",
		waist="Nierenschutz",
		left_ear="Ethereal Earring",
		right_ear="Infused Earring",
		left_ring="Sheltered Ring",
		right_ring="Shadow Ring",
		back="Shadow Mantle",
	})

	sets.ShiningOne.idle.dt=set_combine(sets.ShiningOne,{
		ammo="Staunch Tathlum +1",
		head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
		body={ name="Souv. Cuirass +1", augments={'VIT+12','Attack+25','"Refresh"+3',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Hermes' Sandals",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Moonlight Ring",
		right_ring="Moonlight Ring",
		back="Moonlight Cape",
	})

	sets.ShiningOne.idle.regen=set_combine(sets.ShiningOne,{
		ammo="Staunch Tathlum +1",
    head="Baghere Salade",
    body="Sakpata's Breastplate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Hermes' Sandals",
    neck="Sanctity Necklace",
    waist="Nierenschutz",
    left_ear="Ethereal Earring",
    right_ear="Infused Earring",
    left_ring="Sheltered Ring",
    right_ring="Chirich Ring +1",
    back="Shadow Mantle",
	})

	sets.wsd={
	ammo="Knobkierrie",
    head={ name="Agoge Mask +3", augments={'Enhances "Savagery" effect',}},
    body="Pumm. Lorica +3",
		hands={ name="Odyssean Gauntlets", augments={'Accuracy+23','Weapon skill damage +3%','VIT+15','Attack+6',}},
    legs={ name="Odyssean Cuisses", augments={'Weapon skill damage +3%','STR+13','Accuracy+12',}},
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Ishvara Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
	}

	sets.ws={}
	sets.ws.dmg={}
	sets.ws.acc={}

	sets.ws.dmg["Raging Rush"]={
	ammo="Yetshila +1",
    head={ name="Argosy Celata +1", augments={'STR+12','DEX+12','Attack+20',}},
    body="Dagon Breast.",
    hands={ name="Argosy Mufflers +1", augments={'STR+20','"Dbl.Atk."+3','Haste+3%',}},
    legs={ name="Argosy Breeches +1", augments={'STR+12','Attack+25','"Store TP"+6',}},
    feet={ name="Argosy Sollerets +1", augments={'STR+12','DEX+12','Attack+20',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
	}

	sets.ws.acc["Raging Rush"]=set_combine(sets.ws.dmg["Raging Rush"],{

	})

	sets.ws.dmg["Shield Break"]={
		ammo="Pemphredo Tathlum",
    head="Flam. Zucchetto +2",
    body="Flamma Korazin +2",
    hands="Flam. Manopolas +2",
    legs="Flamma Dirs +2",
    feet="Flam. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Gwati Earring",
    right_ear="Digni. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Sangoma Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
	}

	sets.ws.acc["Armor Break"]=set_combine(sets.ws.dmg["Armor Break"],{

	})

	sets.ws.dmg["Armor Break"]={
		ammo="Pemphredo Tathlum",
    head="Flam. Zucchetto +2",
    body="Flamma Korazin +2",
    hands="Flam. Manopolas +2",
    legs="Flamma Dirs +2",
    feet="Flam. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Gwati Earring",
    right_ear="Digni. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Sangoma Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
	}

	sets.ws.acc["Armor Break"]=set_combine(sets.ws.dmg["Armor Break"],{

	})

	sets.ws.dmg["Weapon Break"]={
		ammo="Pemphredo Tathlum",
    head="Flam. Zucchetto +2",
    body="Flamma Korazin +2",
    hands="Flam. Manopolas +2",
    legs="Flamma Dirs +2",
    feet="Flam. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Gwati Earring",
    right_ear="Digni. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Sangoma Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
	}

	sets.ws.acc["Weapon Break"]=set_combine(sets.ws.dmg["Weapon Break"],{

	})

	sets.ws.dmg["Full Break"]={
		ammo="Pemphredo Tathlum",
    head="Flam. Zucchetto +2",
    body="Flamma Korazin +2",
    hands="Flam. Manopolas +2",
    legs="Flamma Dirs +2",
    feet="Flam. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Gwati Earring",
    right_ear="Digni. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Sangoma Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
	}

	sets.ws.acc["Full Break"]=set_combine(sets.ws.dmg["Full Break"],{

	})

	sets.ws.dmg["Steel Cyclone"]={
	ammo="Knobkierrie",
    head="Agoge Mask +3",
    body="Dagon Breast.",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
	}

	sets.ws.acc["Steel Cyclone"]=set_combine(sets.ws.dmg["Steel Cyclone"],{

	})

	sets.ws.dmg["King's Justice"]={
	ammo="Seeth. Bomblet +1",
    head={ name="Argosy Celata +1", augments={'STR+12','DEX+12','Attack+20',}},
    body="Dagon Breast.",
    hands={ name="Argosy Mufflers +1", augments={'STR+20','"Dbl.Atk."+3','Haste+3%',}},
    legs={ name="Argosy Breeches +1", augments={'STR+12','Attack+25','"Store TP"+6',}},
    feet={ name="Argosy Sollerets +1", augments={'STR+12','DEX+12','Attack+20',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
	}

	sets.ws.acc["King's Justice"]=set_combine(sets.ws.dmg["King's Justice"],{

	})

	sets.ws.dmg["Ukko's Fury"]={
		ammo="Yetshila +1",
    head={ name="Argosy Celata +1", augments={'STR+12','DEX+12','Attack+20',}},
    body="Dagon Breast.",
    hands={ name="Argosy Mufflers +1", augments={'STR+20','"Dbl.Atk."+3','Haste+3%',}},
    legs={ name="Argosy Breeches +1", augments={'STR+12','Attack+25','"Store TP"+6',}},
    feet={ name="Argosy Sollerets +1", augments={'STR+12','DEX+12','Attack+20',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
	}

	sets.ws.acc["Ukko's Fury"]=set_combine(sets.ws.dmg["Ukko's Fury"],{

	})

	sets.ws.dmg["Upheaval"]={
		ammo="Knobkierrie",
    head={ name="Agoge Mask +3", augments={'Enhances "Savagery" effect',}},
    body="Pumm. Lorica +3",
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+23','Weapon skill damage +3%','VIT+15','Attack+6',}},
    legs={ name="Odyssean Cuisses", augments={'Weapon skill damage +3%','STR+13','Accuracy+12',}},
    feet="Sulev. Leggings +2",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Thrud Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Damage taken-5%',}},
	}

	sets.ws.acc["Upheaval"]=set_combine(sets.ws.dmg["Upheaval"],{

	})

	sets.ws.dmg.Resolution={
    ammo="Knobkierrie",
    head="Flam. Zucchetto +2",
    body={ name="Argosy Hauberk +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Argosy Mufflers +1", augments={'STR+20','"Dbl.Atk."+3','Haste+3%',}},
    legs={ name="Argosy Breeches +1", augments={'STR+12','Attack+25','"Store TP"+6',}},
    feet="Flam. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Brutal Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
	}

	sets.ws.dmg["Scourge"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Fell Cleave"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Double Thrust"]=set_combine(sets.ws.dmg.Resolution,{})
	sets.ws.dmg["Raiden Thrust"]=set_combine(sets.ws.dmg["Full Break"],{})
	sets.ws.dmg["Thunder Thrust"]=set_combine(sets.ws.dmg["Full Break"],{})
	sets.ws.dmg["Leg Sweep"]=set_combine(sets.ws.dmg["Full Break"],{})
	sets.ws.dmg["Penta Thrust"]=set_combine(sets.ws.dmg.Resolution,{})
	sets.ws.dmg["Vorpal Thrust"]=set_combine(sets.wsd,{})
	sets.ws.dmg["Impulse Drive"]=set_combine(sets.wsd,{})
	sets.ws.dmg["Sonic Thrust"]=set_combine(sets.wsd,{})
	sets.ws.dmg["Stardiver"]=set_combine(sets.ws.dmg.Resolution,{})

	sets.ws.dmg["Fast Blade"]=set_combine(sets.ws.dmg.Resolution, {})

	sets.ws.acc["Fast Blade"]=set_combine(sets.ws.dmg["Fast Blade"], {neck="Combatant's Torque",  right_ring="Regal Ring", })

	sets.ws.dmg["Burning Blade"]=set_combine(sets.ws.dmg["Full Break"], {})

	sets.ws.acc["Burning Blade"]=set_combine(sets.ws.dmg["Full Break"], {})

	sets.ws.dmg["Red Lotus Blade"]=set_combine(sets.ws.dmg["Full Break"], {})

	sets.ws.acc["Red Lotus Blade"]=set_combine(sets.ws.dmg["Full Break"], {})

	sets.ws.dmg["Flat Blade"]=set_combine(sets.ws.dmg.Resolution, {left_ring="Niqmaddu Ring", right_ring="Ifrit Ring",})

	sets.ws.acc["Flat Blade"]=set_combine(sets.ws.dmg["Flat Blade"], {neck="Combatant's Torque",  right_ring="Regal Ring", })

	sets.ws.dmg["Shining Blade"]=set_combine(sets.ws.dmg["Full Break"],{})

	sets.ws.acc["Shining Blade"]=set_combine(sets.ws.dmg["Full Break"],{})

	sets.ws.dmg["Seraph Blade"]=set_combine(sets.ws.dmg["Full Break"],{})

	sets.ws.acc["Seraph Blade"]=set_combine(sets.ws.dmg["Full Break"],{})

	sets.ws.dmg["Circle Blade"]=set_combine(sets.ws.dmg.Resolution, {left_ring="Niqmaddu Ring", right_ring="Regal Ring",})

	sets.ws.acc["Circle Blade"]=set_combine(sets.ws.dmg["Circle Blade"], {neck="Combatant's Torque",  right_ring="Regal Ring", })

	sets.ws.dmg["Spirits Within"]=set_combine(sets.wsd, {body="Pumm. Lorica +3", waist="Fotia Belt", legs=stplegs,})

	sets.ws.acc["Spirits Within"]=set_combine(sets.wsd, {body="Pumm. Lorica +3", waist="Fotia Belt", legs=stplegs,})

	sets.ws.dmg["Vorpal Blade"]=set_combine(sets.ws.dmg.Resolution, {waist="Fotia Belt", left_ring="Niqmaddu Ring", right_ring="Regal Ring",})

	sets.ws.acc["Vorpal Blade"]=set_combine(sets.ws.dmg["Vorpal Blade"], {neck="Combatant's Torque",  right_ring="Regal Ring", })

	sets.ws.dmg["Savage Blade"]={
		ammo="Knobkierrie",
    head="Agoge Mask +3",
    body="Pumm. Lorica +3",
		hands={ name="Odyssean Gauntlets", augments={'Accuracy+23','Weapon skill damage +3%','VIT+15','Attack+6',}},
		legs={ name="Odyssean Cuisses", augments={'Weapon skill damage +3%','STR+13','Accuracy+12',}},
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear="Thrud Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
	}

	sets.ws.acc["Savage Blade"]=set_combine(sets.ws.dmg["Savage Blade"], {})

	sets.ws.dmg["Sanguine Blade"]=set_combine(sets.ws.dmg["Full Break"], {head="Pixie Hairpin +1", left_ring="Archon Ring",})

	sets.ws.acc["Sanguine Blade"]=set_combine(sets.ws.dmg["Full Break"], {head="Pixie Hairpin +1", left_ring="Archon Ring",})

	sets.ws.acc["Raging Rush"]={
	ammo="Yetshila +1",
    head={ name="Argosy Celata +1", augments={'STR+12','DEX+12','Attack+20',}},
    body="Dagon Breast.",
    hands={ name="Argosy Mufflers +1", augments={'STR+20','"Dbl.Atk."+3','Haste+3%',}},
    legs={ name="Argosy Breeches +1", augments={'STR+12','Attack+25','"Store TP"+6',}},
    feet={ name="Argosy Sollerets +1", augments={'STR+12','DEX+12','Attack+20',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
	}

	sets.ws.acc["Full Break"]={
		ammo="Pemphredo Tathlum",
    head="Flam. Zucchetto +2",
    body="Flamma Korazin +2",
    hands="Flam. Manopolas +2",
    legs="Flamma Dirs +2",
    feet="Flam. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Gwati Earring",
    right_ear="Digni. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Sangoma Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
	}

	sets.ws.acc["Steel Cyclone"]={
	ammo="Knobkierrie",
    head="Agoge Mask +3",
    body="Dagon Breast.",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
	}

	sets.ws.acc["King's Justice"]={
	ammo="Seeth. Bomblet +1",
    head={ name="Argosy Celata +1", augments={'STR+12','DEX+12','Attack+20',}},
    body="Dagon Breast.",
    hands={ name="Argosy Mufflers +1", augments={'STR+20','"Dbl.Atk."+3','Haste+3%',}},
    legs={ name="Argosy Breeches +1", augments={'STR+12','Attack+25','"Store TP"+6',}},
    feet={ name="Argosy Sollerets +1", augments={'STR+12','DEX+12','Attack+20',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
	}

	sets.ws.acc["Ukko's Fury"]={
	ammo="Yetshila +1",
    head={ name="Argosy Celata +1", augments={'STR+12','DEX+12','Attack+20',}},
    body="Dagon Breast.",
    hands={ name="Argosy Mufflers +1", augments={'STR+20','"Dbl.Atk."+3','Haste+3%',}},
    legs={ name="Argosy Breeches +1", augments={'STR+12','Attack+25','"Store TP"+6',}},
    feet={ name="Argosy Sollerets +1", augments={'STR+12','DEX+12','Attack+20',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
	}

	sets.ws.acc.Resolution={
	ammo="Knobkierrie",
    head="Flam. Zucchetto +2",
    body={ name="Argosy Hauberk +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Argosy Mufflers +1", augments={'STR+20','"Dbl.Atk."+3','Haste+3%',}},
    legs="Pumm. Cuisses +3",
    feet="Pumm. Calligae +3",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Brutal Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
	}

	sets.ws.dmg["Raging Axe"]={}

	sets.ws.dmg["Smash Axe"]={}

	sets.ws.dmg["Gale Axe"]={}

	sets.ws.dmg["Avalanche Axe"]={}

	sets.ws.dmg["Spinning Axe"]={}

	sets.ws.dmg["Rampage"]={}

	sets.ws.dmg["Calamity"]={}

	sets.ws.dmg["Mistral Axe"]={}

	sets.ws.dmg["Decimation"]={}

	sets.ws.dmg["Bora Axe"]={}

	sets.ws.dmg["Cloudsplitter"]={}

	sets.ws.dmg["Ruinator"]={}

	sets.ws.acc["Raging Axe"]={}

	sets.ws.acc["Smash Axe"]={}

	sets.ws.acc["Gale Axe"]={}

	sets.ws.acc["Avalanche Axe"]={}

	sets.ws.acc["Spinning Axe"]={}

	sets.ws.acc["Rampage"]={}

	sets.ws.acc["Calamity"]={}

	sets.ws.acc["Mistral Axe"]={}

	sets.ws.acc["Decimation"]={}

	sets.ws.acc["Bora Axe"]={}

	sets.ws.acc["Cloudsplitter"]={}

	sets.ws.acc["Ruinator"]={}

	sets.ja.Berserk={body="Pumm. Lorica +3", feet="Agoge Calligae +3", back="Cichol's Mantle",}
	sets.ja.Defender={hands="Agoge Mufflers +3"}
	sets.ja.Aggressor={head="Pummeler's Mask +3", body="Agoge Lorica +3",}
	sets.ja.Warcry={head="Agoge Mask +3",}
	sets.ja.Tomahawk={ammo="Thr. Tomahawk", feet="Agoge Calligae +3",}
end

function precast(spell)
	if spell.prefix=="/jobability" then
		equip(sets.ja[spell.english])
	end
	if spell.prefix=="/weaponskill" then
		if wstype=="dmg" then
			if sets.ws.dmg[spell.english] then
				equip(sets.ws.dmg[spell.english])
			elseif not sets.ws.dmg[spell.english] then
				equip(sets.wsd)
			end
		elseif wstype=="acc" then
			if sets.ws.acc[spell.english] then
				equip(sets.ws.acc[spell.english])
			elseif not sets.ws.acc[spell.english] then
				equip(sets.wsd)
			end
		end
	end
end

function aftercast(spell)
	status_change(player.status)
end

function status_change(new,old)
	if new=="Engaged" then
		if weaponry=="Chango" then
			if TPType=="dd" then
				equip(sets.Chango.tp[tpacc])
			elseif TPType=="hybrid" then
				equip(sets.Chango.hybrid[tpacc])
			elseif TPType=="dt" then
				equip(sets.Chango.dt)
			end
		elseif weaponry=="Ragnarok" then
			if TPType=="dd" then
				equip(sets.Ragnarok.tp[tpacc])
			elseif TPType=="hybrid" then
				equip(sets.Ragnarok.hybrid[tpacc])
			elseif TPType=="dt" then
				equip(sets.Ragnarok.dt)
			end
		elseif weaponry=="Shining One" then
			if TPType=="dd" then
				equip(sets.ShiningOne.tp[tpacc])
			elseif TPType=="hybrid" then
				equip(sets.ShiningOne.hybrid[tpacc])
			elseif TPType=="dt" then
				equip(sets.ShiningOne.dt)
			end
		elseif weaponry=="Dolichenus" then
			if TPType=="dd" then
				equip(sets.Dolichenus.tp[tpacc])
			elseif TPType=="hybrid" then
				equip(sets.Dolichenus.hybrid[tpacc])
			elseif TPType=="dt" then
				equip(sets.Dolichenus.dt)
			end
		elseif weaponry=="Naegling" then
			if TPType=="dd" then
				equip(sets.Naegling.tp[tpacc])
			elseif TPType=="hybrid" then
				equip(sets.Naegling.hybrid[tpacc])
			elseif TPType=="dt" then
				equip(sets.Naegling.dt)
			end
		elseif weaponry=="Dolichenusdw" then
			if TPType=="dd" then
				equip(sets.Dolichenus.tp[tpacc])
			elseif TPType=="hybrid" then
				equip(sets.Dolichenus.hybrid[tpacc])
			elseif TPType=="dt" then
				equip(sets.Dolichenus.dt)
			end
		elseif weaponry=="Naeglingdw" then
			if TPType=="dd" then
				equip(sets.Naegling.tp[tpacc])
			elseif TPType=="hybrid" then
				equip(sets.Naegling.hybrid[tpacc])
			elseif TPType=="dt" then
				equip(sets.Naegling.dt)
			end
		end
	elseif new=="Idle" then
		if weaponry=="Chango" then
			equip(sets.Chango.idle[idletype])
		elseif weaponry=="Ragnarok" then
			equip(sets.Ragnarok.idle[idletype])
		elseif weaponry=="Shining One" then
			equip(sets.ShiningOne.idle[idletype])
		elseif weaponry=="Dolichenus" then
			equip(sets.Dolichenus.idle[idletype])
		elseif weaponry=="Naegling" then
			equip(sets.Naegling.idle[idletype])
		elseif weaponry=="Dolichenusdw" then
			equip(sets.Dolichenusdw.idle[idletype])
		elseif weaponry=="Naeglingdw" then
			equip(sets.Naeglingdw.idle[idletype])
		end
	end
windower.prim.set_size('TP_SET',200,30)
windower.prim.set_size('ACC_SET',200,30)
windower.prim.set_size('IDLE_SET',200,30)
windower.prim.set_size('WS_SET',200,30)
windower.prim.set_size('WEAPON_SET',200,55)

windower.prim.set_position('TP_SET',0.65*windower.get_windower_settings().ui_x_res,50)
windower.prim.set_position('ACC_SET',0.65*windower.get_windower_settings().ui_x_res,90)
windower.prim.set_position('IDLE_SET',0.65*windower.get_windower_settings().ui_x_res,130)
windower.prim.set_position('WS_SET',0.65*windower.get_windower_settings().ui_x_res,170)
windower.prim.set_position('WEAPON_SET',0.65*windower.get_windower_settings().ui_x_res,210)
end

function self_command(command)
	if command=="Chango" then
		weaponry="Chango"
		windower.prim.set_texture('WEAPON_SET',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		add_to_chat(206,"Chango Equipped")
		status_change(player.status)
	end
	if command=="Ragnarok" then
		weaponry="Ragnarok"
		windower.prim.set_texture('WEAPON_SET',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		add_to_chat(206,"Ragnarok Equipped")
		status_change(player.status)
	end
	if command=="ShiningOne" then
		weaponry="Shining One"
		windower.prim.set_texture('WEAPON_SET',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		add_to_chat(206,"Shining One Equipped")
		status_change(player.status)
	end
	if command=="Dolichenus" then
		weaponry="Dolichenus"
		windower.prim.set_texture('WEAPON_SET',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		add_to_chat(206,"Dolichenus Equipped")
		status_change(player.status)
	end
	if command=="Naegling" then
		weaponry="Naegling"
		windower.prim.set_texture('WEAPON_SET',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		add_to_chat(206,"Naegling Equipped")
		status_change(player.status)
	end
	if command=="Dolichenusdw" then
		weaponry="Dolichenusdw"
		windower.prim.set_texture('WEAPON_SET',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		add_to_chat(206,"Dolichenus Equipped")
		status_change(player.status)
	end
	if command=="Naeglingdw" then
		weaponry="Naeglingdw"
		windower.prim.set_texture('WEAPON_SET',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		add_to_chat(206,"Naegling Equipped")
		status_change(player.status)
	end
	if command=="dd" then
		TPType="dd"
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/'..TPType..'mode.png')
		add_to_chat(206,"DD Mode")
		status_change(player.status)
	end
	if command=="hybrid" then
		TPType="hybrid"
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/'..TPType..'mode.png')
		add_to_chat(206,"Hybrid Mode")
		status_change(player.status)
	end
	if command=="dt" then
		TPType="dt"
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/'..TPType..'mode.png')
		add_to_chat(206,"DT Mode")
		status_change(player.status)
	end
	if command=="lowacc" then
		tpacc="lowacc"
		windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/'..tpacc..'.png')
		add_to_chat(206,"TP Accuracy: Low")
		status_change(player.status)
	end
	if command=="medacc" then
		tpacc="medacc"
		windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/'..tpacc..'.png')
		add_to_chat(206,"TP Accuracy: Med")
		status_change(player.status)
	end
	if command=="highacc" then
		tpacc="highacc"
		windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/'..tpacc..'.png')
		add_to_chat(206,"TP Accuracy: High")
		status_change(player.status)
	end
	if command=="toggle_ws" then
		if wstype=="dmg" then
			wstype="acc"
			add_to_chat(206,"wstype: Accuracy")
		else
			wstype="dmg"
			add_to_chat(206,"wstype: Damage")
		end
		windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/images/'..wstype..'.png')
		status_change(player.status)
	end
	if command=="standardidle" then
		idletype="standard"
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/'..idletype..'idle.png')
		add_to_chat(206,"IdleType: Standard")
		status_change(player.status)
	end
	if command=="regenidle" then
		idletype="regen"
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/'..idletype..'idle.png')
		add_to_chat(206,"IdleType: regen")
		status_change(player.status)
	end
	if command=="dtidle" then
		idletype="dt"
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/'..idletype..'idle.png')
		add_to_chat(206,"IdleType: dt")
		status_change(player.status)
	end
	if command=="leluwhm" then
		LeluJob="whm"
		add_to_chat(206,"Lelu is on "..LeluJob)
	end
	if command=="lelubrd" then
		LeluJob="brd"
		add_to_chat(206,"Lelu is on "..LeluJob)
	end
end
