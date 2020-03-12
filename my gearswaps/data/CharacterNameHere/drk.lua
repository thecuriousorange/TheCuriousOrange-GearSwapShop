function get_sets()
	--includes
	include("organizer-lib.lua")
	include("lelubrdgkeys.lua")
	include("itchygeogkeys.lua")
	--includes

	--keybinds
	windower.send_command('bind #5 endark2')
	windower.send_command('bind #6 dreadspikes')
	windower.send_command('bind #2 gs equip sets.dt')
	windower.send_command('bind @f1 gs c tpdd')
	windower.send_command('bind @f2 gs c hybrid')
	windower.send_command('bind @f3 gs c tpdt')
	windower.send_command('bind #f1 gs c tpacc')
	windower.send_command('bind #f4 gs c toggleidle')
	windower.send_command('bind @f6 gs c Naegling')
	windower.send_command('bind @f7 gs c Lycurgos')
	windower.send_command('bind @f8 gs c cb')
	windower.send_command('bind @f9 gs c rag')
	windower.send_command('bind @f10 gs c apoc')
	windower.send_command('bind @f11 gs c Ang')
	windower.send_command('bind @f12 gs c wstoggle')
	--keybinds

	send_command('input /macro book 4;input /macro set 7')

	--variables
	TpType="dd"
	weaponry="Caladbolg"
	tpacc="lowacc"
	wstype="dmg"
	idletype="standard"

	sets.TpType=T{}
	sets.weaponry=T{}
	sets.tpacc=T{}
	sets.wstype=T{}
	sets.idletype=T{}
	--variables

	sets.precast={}
	sets.tp={}
	sets.ws={}
	sets.ws.dmg={}
	sets.ws.acc={}
	sets.midcast={}
	sets.hybrid={}


	--GUI setup
windower.prim.create('TP_SET')
windower.prim.create('ACC_SET')
windower.prim.create('IDLE_SET')
windower.prim.create('WS_SET')
windower.prim.create('WEAPON_SET')

windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/'..TpType..'mode.png')
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

	sets.tp={
    ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body="Dagon Breast.",
    hands={ name="Acro Gauntlets", augments={'Accuracy+20 Attack+20','"Store TP"+6','Crit. hit damage +3%',}},
    legs="Ig. Flanchard +3",
    feet="Flam. Gambieras +2",
    neck="Lissome Necklace",
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Flamma Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
	}

	sets.tp.Caladbolg={main="Caladbolg", sub="Utu Grip",}
	sets.tp.Caladbolg.lowacc=set_combine(sets.tp.Caladbolg,{
    ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body="Dagon Breast.",
    hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    legs="Ig. Flanchard +3",
    feet="Flam. Gambieras +2",
    neck="Lissome Necklace",
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Hetairoi Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},})
	sets.tp.Caladbolg.medacc=set_combine(sets.tp.Caladbolg.lowacc, {neck="Combatant's Torque",body={ name="Emicho Haubert +1", augments={'HP+65','DEX+12','Accuracy+20',}}, right_ear="Telos Earring",})
	sets.tp.Caladbolg.highacc=set_combine(sets.tp.Caladbolg.medacc, {left_ring="Regal Ring",})

	sets.tp.Naegling={main="Naegling", sub="Blurred Shield +1",}
	sets.tp.Naegling.lowacc=set_combine(sets.tp.Naegling,{
    ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body="Dagon Breast.",
    hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    legs="Ig. Flanchard +3",
    feet="Flam. Gambieras +2",
    neck="Lissome Necklace",
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Hetairoi Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},})
	sets.tp.Naegling.medacc=set_combine(sets.tp.Naegling.lowacc, {neck="Combatant's Torque",body={ name="Emicho Haubert +1", augments={'HP+65','DEX+12','Accuracy+20',}}, right_ear="Telos Earring",})
	sets.tp.Naegling.highacc=set_combine(sets.tp.Naegling.medacc, {left_ring="Regal Ring",})

	sets.tp.Dolichenus={main="Dolichenus", sub="Blurred Shield +1",}
	sets.tp.Dolichenus.lowacc=set_combine(sets.tp.Dolichenus,{
    ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body="Dagon Breast.",
    hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    legs="Ig. Flanchard +3",
    feet="Flam. Gambieras +2",
    neck="Lissome Necklace",
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Hetairoi Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},})
	sets.tp.Dolichenus.medacc=set_combine(sets.tp.Dolichenus.lowacc, {neck="Combatant's Torque",body={ name="Emicho Haubert +1", augments={'HP+65','DEX+12','Accuracy+20',}}, right_ear="Telos Earring",})
	sets.tp.Dolichenus.highacc=set_combine(sets.tp.Dolichenus.medacc, {left_ring="Regal Ring",})

	sets.tp.Apocalypse={}
	sets.tp.Apocalypse=set_combine(sets.tp, {main="Apocalypse", sub="Utu Grip",})
	sets.tp.Apocalypse.lowacc=set_combine(sets.tp.Apocalypse, {})
	sets.tp.Apocalypse.medacc=set_combine(sets.tp.Apocalypse, {})
	sets.tp.Apocalypse.highacc=set_combine(sets.tp.Apocalypse, {})

	sets.tp.Lycurgos={}
	sets.tp.Lycurgos=set_combine(sets.tp, {main="Lycurgos", sub="Utu Grip",})
	sets.tp.Lycurgos.lowacc=set_combine(sets.tp.Lycurgos, {})
	sets.tp.Lycurgos.medacc=set_combine(sets.tp.Lycurgos, {})
	sets.tp.Lycurgos.highacc=set_combine(sets.tp.Lycurgos, {})

	sets.tp.Anguta={}
	sets.tp.Anguta=set_combine(sets.tp, {main="Anguta",sub="Utu Grip",})
	sets.tp.Anguta.lowacc=set_combine(sets.tp.Anguta, {})
	sets.tp.Anguta.medacc=set_combine(sets.tp.Anguta, {})
	sets.tp.Anguta.highacc=set_combine(sets.tp.Anguta, {})

	sets.tp.Ragnarok={main="Ragnarok", sub="Utu Grip",}
	sets.tp.Ragnarok.lowacc=set_combine(sets.tp.Ragnarok, {
    ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body="Dagon Breast.",
    hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    legs="Ig. Flanchard +3",
    feet="Flam. Gambieras +2",
    neck="Lissome Necklace",
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Hetairoi Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},})
	sets.tp.Ragnarok.medacc=set_combine(sets.tp.Ragnarok.lowacc, {neck="Combatant's Torque",body={ name="Emicho Haubert +1", augments={'HP+65','DEX+12','Accuracy+20',}}, right_ear="Telos Earring",})
	sets.tp.Ragnarok.highacc=set_combine(sets.tp.Ragnarok.medacc, {left_ring="Regal Ring",})

	sets.hybrid.Ragnarok={}
	sets.hybrid.Ragnarok.lowacc=set_combine(sets.tp.Ragnarok.lowacc,{
		head="Hjarrandi Helm",
		body="Volte Haubert",
		hands="Volte Moufles",
		legs="Volte Brayettes",
		feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
		left_ring="Defending Ring",
	})

	sets.hybrid.Ragnarok.medacc=set_combine(sets.tp.Ragnarok.medacc,{
		head="Hjarrandi Helm",
		body="Volte Haubert",
		hands="Volte Moufles",
		legs="Volte Brayettes",
		feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
		left_ring="Defending Ring",
	})

	sets.hybrid.Ragnarok.highacc=set_combine(sets.tp.Ragnarok.highacc,{
		head="Hjarrandi Helm",
		body="Volte Haubert",
		hands="Volte Moufles",
		legs="Volte Brayettes",
		feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
		left_ring="Defending Ring",
	})

	sets.hybrid.Apocalypse={}
	sets.hybrid.Apocalypse.lowacc=set_combine(sets.tp.Apocalypse.lowacc,{
		head="Hjarrandi Helm",
		body="Volte Haubert",
		hands="Volte Moufles",
		legs="Volte Brayettes",
		feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
		left_ring="Defending Ring",
	})

	sets.hybrid.Apocalypse.medacc=set_combine(sets.tp.Apocalypse.medacc,{
		head="Hjarrandi Helm",
		body="Volte Haubert",
		hands="Volte Moufles",
		legs="Volte Brayettes",
		feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
		left_ring="Defending Ring",
	})

	sets.hybrid.Apocalypse.highacc=set_combine(sets.tp.Apocalypse.highacc,{
		head="Hjarrandi Helm",
		body="Volte Haubert",
		hands="Volte Moufles",
		legs="Volte Brayettes",
		feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
		left_ring="Defending Ring",
	})

	sets.hybrid.Naegling={}
	sets.hybrid.Naegling.lowacc=set_combine(sets.tp.Naegling.lowacc,{
		head="Hjarrandi Helm",
		body="Volte Haubert",
		hands="Volte Moufles",
		legs="Volte Brayettes",
		feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
		left_ring="Defending Ring",
	})

	sets.hybrid.Naegling.medacc=set_combine(sets.tp.Naegling.medacc,{
		head="Hjarrandi Helm",
		body="Volte Haubert",
		hands="Volte Moufles",
		legs="Volte Brayettes",
		feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
		left_ring="Defending Ring",
	})

	sets.hybrid.Naegling.highacc=set_combine(sets.tp.Naegling.highacc,{
		head="Hjarrandi Helm",
		body="Volte Haubert",
		hands="Volte Moufles",
		legs="Volte Brayettes",
		feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
		left_ring="Defending Ring",
	})

	sets.hybrid.Dolichenus={}
	sets.hybrid.Dolichenus.lowacc=set_combine(sets.tp.Dolichenus.lowacc,{
		head="Hjarrandi Helm",
		body="Volte Haubert",
		hands="Volte Moufles",
		legs="Volte Brayettes",
		feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
		left_ring="Defending Ring",
	})

	sets.hybrid.Dolichenus.medacc=set_combine(sets.tp.Dolichenus.medacc,{
		head="Hjarrandi Helm",
		body="Volte Haubert",
		hands="Volte Moufles",
		legs="Volte Brayettes",
		feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
		left_ring="Defending Ring",
	})

	sets.hybrid.Dolichenus.highacc=set_combine(sets.tp.Dolichenus.highacc,{
		head="Hjarrandi Helm",
		body="Volte Haubert",
		hands="Volte Moufles",
		legs="Volte Brayettes",
		feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
		left_ring="Defending Ring",
	})

	sets.hybrid.Caladbolg={}
	sets.hybrid.Caladbolg.lowacc=set_combine(sets.tp.Caladbolg.lowacc,{
		head="Hjarrandi Helm",
		body="Volte Haubert",
		hands="Volte Moufles",
		legs="Volte Brayettes",
		feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
		left_ring="Defending Ring",
	})

	sets.hybrid.Caladbolg.medacc=set_combine(sets.tp.Caladbolg.medacc,{
		head="Hjarrandi Helm",
		body="Volte Haubert",
		hands="Volte Moufles",
		legs="Volte Brayettes",
		feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
		left_ring="Defending Ring",
	})

	sets.hybrid.Caladbolg.highacc=set_combine(sets.tp.Caladbolg.highacc,{
		head="Hjarrandi Helm",
		body="Volte Haubert",
		hands="Volte Moufles",
		legs="Volte Brayettes",
		feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
		left_ring="Defending Ring",
	})

	sets.hybrid.Lycurgos={}
	sets.hybrid.Lycurgos.lowacc=set_combine(sets.tp.Lycurgos.lowacc,{
		head="Hjarrandi Helm",
		body="Volte Haubert",
		hands="Volte Moufles",
		legs="Volte Brayettes",
		feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
		left_ring="Defending Ring",
	})

	sets.hybrid.Lycurgos.medacc=set_combine(sets.tp.Lycurgos.medacc,{
		head="Hjarrandi Helm",
		body="Volte Haubert",
		hands="Volte Moufles",
		legs="Volte Brayettes",
		feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
		left_ring="Defending Ring",
	})

	sets.hybrid.Lycurgos.highacc=set_combine(sets.tp.Lycurgos.highacc,{
		head="Hjarrandi Helm",
		body="Volte Haubert",
		hands="Volte Moufles",
		legs="Volte Brayettes",
		feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
		left_ring="Defending Ring",
	})

	sets.hybrid.Anguta={}
	sets.hybrid.Anguta.lowacc=set_combine(sets.tp.Anguta.lowacc,{
		head="Hjarrandi Helm",
		body="Volte Haubert",
		hands="Volte Moufles",
		legs="Volte Brayettes",
		feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
		left_ring="Defending Ring",
	})

	sets.hybrid.Anguta.medacc=set_combine(sets.tp.Anguta.medacc,{
		head="Hjarrandi Helm",
		body="Volte Haubert",
		hands="Volte Moufles",
		legs="Volte Brayettes",
		feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
		left_ring="Defending Ring",
	})

	sets.hybrid.Anguta.highacc=set_combine(sets.tp.Anguta.highacc,{
		head="Hjarrandi Helm",
		body="Volte Haubert",
		hands="Volte Moufles",
		legs="Volte Brayettes",
		feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
		left_ring="Defending Ring",
	})

	sets.idle={
    ammo="Vanir Battery",
    head={ name="Valorous Mask", augments={'Attack+16','Weapon skill damage +4%','STR+8','Accuracy+14',}},
    body="Chozoron Coselete",
    hands={ name="Odyssean Gauntlets", augments={'Pet: Crit.hit rate +3','Attack+4','"Refresh"+1',}},
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    feet={ name="Odyssean Greaves", augments={'Attack+3','Accuracy+21','"Refresh"+1','Accuracy+1 Attack+1','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
    neck="Coatl Gorget +1",
    waist="Nierenschutz",
    left_ear="Ethereal Earring",
    right_ear="Infused Earring",
    left_ring="Paguroidea Ring",
    right_ring="Sheltered Ring",
    back="Shadow Mantle",
}

	sets.pdt={
    ammo="Seeth. Bomblet +1",
    head="Sulevia's Mask +2",
    body="Sulevia's Plate. +2",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Loricate Torque +1",
    waist="Tempus Fugit",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Defending Ring",
    right_ring="Moonlight Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},}

	sets.mdt={
    ammo="Seeth. Bomblet +1",
    head="Sulevia's Mask +2",
    body="Sulevia's Plate. +2",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Loricate Torque +1",
    waist="Tempus Fugit",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Defending Ring",
    right_ring="Moonlight Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},}

	sets.dt={
    ammo="Seeth. Bomblet +1",
    head="Sulevia's Mask +2",
    body="Sulevia's Plate. +2",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Loricate Torque +1",
    waist="Tempus Fugit",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Defending Ring",
    right_ring="Moonlight Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},}

	sets.dt.Apocalypse=set_combine(sets.dt, {main="Apocalypse", sub="Utu Grip",})

	sets.dt.Anguta=set_combine(sets.dt, {main="Anguta",sub="Utu Grip",})

	sets.dt.Ragnarok=set_combine(sets.dt, {main="Ragnarok", sub="Utu Grip",})

	sets.dt.Caladbolg=set_combine(sets.dt, {main="Caladbolg", sub="Utu Grip",})

	sets.dt.Lycurgos=set_combine(sets.dt, {main="Lycurgos", sub="Utu Grip",})

	sets.dt.Naegling={main="Naegling", sub="Blurred Shield +1",}

	sets.dt.Dolichenus={main="Dolichenus", sub="Blurred Shield +1",}

	sets.refresh={}

	sets.regen={}

	sets.idle.Apocalypse=set_combine(sets.idle, {main="Apocalypse", sub="Utu Grip",})
	sets.idle.Apocalypse.standard=set_combine(sets.idle.Apocalypse,{})
	sets.idle.Apocalypse.Regen=set_combine(sets.idle.Apocalypse, {})
	sets.idle.Apocalypse.Refresh=set_combine(sets.idle.Apocalypse, {})
	sets.idle.Apocalypse.PDT=set_combine(sets.pdt, {main="Apocalypse", sub="Utu Grip",})
	sets.idle.Apocalypse.MDT=set_combine(sets.mdt, {main="Apocalypse", sub="Utu Grip",})
	sets.idle.Apocalypse.DT=set_combine(sets.dt, {main="Apocalypse", sub="Utu Grip",})

	sets.idle.Naegling=set_combine(sets.idle, {main="Naegling", sub="Blurred Shield +1",})
	sets.idle.Naegling.standard=sets.idle.Naegling
	sets.idle.Naegling.Regen=set_combine(sets.idle.Naegling, {})
	sets.idle.Naegling.Refresh=set_combine(sets.idle.Naegling, {})
	sets.idle.Naegling.PDT=set_combine(sets.idle.Naegling, {})
	sets.idle.Naegling.MDT=set_combine(sets.idle.Naegling, {})
	sets.idle.Naegling.DT=set_combine(sets.dt, {main="Naegling", sub="Blurred Shield +1",})

	sets.idle.Dolichenus=set_combine(sets.idle, {main="Dolichenus", sub="Blurred Shield +1",})
	sets.idle.Dolichenus.standard=sets.idle.Dolichenus
	sets.idle.Dolichenus.Regen=set_combine(sets.idle.Dolichenus, {})
	sets.idle.Dolichenus.Refresh=set_combine(sets.idle.Dolichenus, {})
	sets.idle.Dolichenus.PDT=set_combine(sets.idle.Dolichenus, {})
	sets.idle.Dolichenus.MDT=set_combine(sets.idle.Dolichenus, {})
	sets.idle.Dolichenus.DT=set_combine(sets.dt, {main="Dolichenus", sub="Blurred Shield +1",})

	sets.idle.Anguta=set_combine(sets.idle, {main="Anguta",sub="Utu Grip",})
	sets.idle.Anguta.standard=sets.idle.Anguta
	sets.idle.Anguta.Regen=set_combine(sets.idle.Anguta, {})
	sets.idle.Anguta.Refresh=set_combine(sets.idle.Anguta, {})
	sets.idle.Anguta.PDT=set_combine(sets.idle.Anguta, {})
	sets.idle.Anguta.MDT=set_combine(sets.idle.Anguta, {})
	sets.idle.Anguta.DT=set_combine(sets.dt, {main="Anguta",sub="Utu Grip",})

	sets.idle.Ragnarok=set_combine(sets.idle, {main="Ragnarok",sub="Utu Grip",})
	sets.idle.Ragnarok.standard=sets.idle.Ragnarok
	sets.idle.Ragnarok.Regen=set_combine(sets.idle.Ragnarok, {})
	sets.idle.Ragnarok.Refresh=set_combine(sets.idle.Ragnarok, {})
	sets.idle.Ragnarok.PDT=set_combine(sets.idle.Ragnarok, {})
	sets.idle.Ragnarok.MDT=set_combine(sets.idle.Ragnarok, {})
	sets.idle.Ragnarok.DT=set_combine(sets.dt, {main="Ragnarok",sub="Utu Grip",})

	sets.idle.Caladbolg=set_combine(sets.idle, {main="Caladbolg",sub="Utu Grip",})
	sets.idle.Caladbolg.standard=sets.idle.Caladbolg
	sets.idle.Caladbolg.Regen=set_combine(sets.idle.Caladbolg, {})
	sets.idle.Caladbolg.Refresh=set_combine(sets.idle.Caladbolg, {})
	sets.idle.Caladbolg.PDT=set_combine(sets.idle.Caladbolg, {})
	sets.idle.Caladbolg.MDT=set_combine(sets.idle.Caladbolg, {})
	sets.idle.Caladbolg.DT=set_combine(sets.dt, {main="Caladbolg",sub="Utu Grip",})

	sets.idle.Caladbolg=set_combine(sets.idle, {main="Caladbolg",sub="Utu Grip",})
	sets.idle.Caladbolg.standard=sets.idle.Caladbolg
	sets.idle.Caladbolg.Regen=set_combine(sets.idle.Caladbolg, {})
	sets.idle.Caladbolg.Refresh=set_combine(sets.idle.Caladbolg, {})
	sets.idle.Caladbolg.PDT=set_combine(sets.idle.Caladbolg, {})
	sets.idle.Caladbolg.MDT=set_combine(sets.idle.Caladbolg, {})
	sets.idle.Caladbolg.DT=set_combine(sets.dt, {main="Caladbolg",sub="Utu Grip",})

	sets.strws={
		ammo="Seeth. Bomblet +1",
    head={ name="Argosy Celata +1", augments={'STR+12','DEX+12','Attack+20',}},
    body={ name="Argosy Hauberk +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Argosy Mufflers +1", augments={'STR+20','"Dbl.Atk."+3','Haste+3%',}},
    legs={ name="Argosy Breeches +1", augments={'STR+12','Attack+25','"Store TP"+6',}},
    feet={ name="Argosy Sollerets +1", augments={'STR+12','DEX+12','Attack+20',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Telos Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
	}

	sets.wsd={
		ammo="Knobkierrie",
    head="Ratri Sallet +1",
    body="Ignominy Cuirass +3",
    hands="Rat. Gadlings +1",
    legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
    feet="Rat. Sollerets +1",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Ishvara Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}

	sets.magicws=set_combine(sets.wsd, {left_ring="Shiva Ring +1", right_ring="Shiva Ring +1",})

	sets.ws.dmg["Hard Slash"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Power Slash"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Frostbite"]=set_combine(sets.magicws,{})

	sets.ws.dmg["Freezebite"]=set_combine(sets.magicws,{})

	sets.ws.dmg["Shockwave"]=set_combine(sets.strws,{})

	sets.ws.dmg["Crescent Moon"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Sickle Moon"]=set_combine(sets.strws,{})

	sets.ws.dmg["Spinning Slash"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Ground Strike"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Scourge"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Herculean Slash"]=set_combine(sets.magicws,{})

	sets.ws.dmg["Torcleaver"]={
    ammo="Knobkierrie",
    head="Ratri Sallet +1",
    body="Ignominy Cuirass +3",
    hands="Rat. Gadlings +1",
    legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
    feet="Rat. Sollerets +1",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Ishvara Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},
	}

	sets.ws.dmg["Resolution"]={
    ammo="Seeth. Bomblet +1",
    head={ name="Argosy Celata +1", augments={'STR+12','DEX+12','Attack+20',}},
    body={ name="Argosy Hauberk +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Argosy Mufflers +1", augments={'STR+20','"Dbl.Atk."+3','Haste+3%',}},
    legs="Ig. Flanchard +3",
    feet={ name="Argosy Sollerets +1", augments={'STR+12','DEX+12','Attack+20',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Telos Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
	}

	sets.ws.dmg["Slice"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Dark Harvest"]=set_combine(sets.magicws, {head="Pixie Hairpin +1", left_ring="Archon Ring",})

	sets.ws.dmg["Shadow of Death"]=set_combine(sets.magicws, {head="Pixie Hairpin +1", left_ring="Archon Ring",})

	sets.ws.dmg["Nightmare Scythe"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Spinning Scythe"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Vorpal Scythe"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Guillotine"]=set_combine(sets.strws,{})

	sets.ws.dmg["Crossreaper"]={
    ammo="Seeth. Bomblet +1",
    head={ name="Argosy Celata +1", augments={'STR+12','DEX+12','Attack+20',}},
    body={ name="Argosy Hauberk +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Argosy Mufflers +1", augments={'STR+20','"Dbl.Atk."+3','Haste+3%',}},
    legs={ name="Argosy Breeches +1", augments={'STR+12','Attack+25','"Store TP"+6',}},
    feet={ name="Argosy Sollerets +1", augments={'STR+12','DEX+12','Attack+20',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Telos Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
	}

	sets.ws.dmg["Spiral Hell"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Catastrophe"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Insurgency"]=set_combine(sets.strws,{})

	sets.ws.dmg["Infernal Scythe"]=set_combine(sets.magicws, {head="Pixie Hairpin +1", left_ring="Archon Ring",})

	sets.ws.dmg["Quietus"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Shield Break"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Iron Tempest"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Sturmwind"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Armor Break"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Keen Edge"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Weapon Break"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Steel Cyclone"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Fell Cleave"]=set_combine(sets.wsd,{})

	sets.ws.dmg["Fast Blade"]=set_combine(sets.strws,{})

	sets.ws.acc["Fast Blade"]=set_combine(sets.ws.dmg["Fast Blade"], {neck="Combatant's Torque", back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, right_ring="Regal Ring", })

	sets.ws.dmg["Burning Blade"]=set_combine(sets.magicws,{})

	sets.ws.acc["Burning Blade"]=set_combine(sets.magicws,{})

	sets.ws.dmg["Red Lotus Blade"]=set_combine(sets.magicws,{})

	sets.ws.acc["Red Lotus Blade"]=set_combine(sets.magicws,{})

	sets.ws.dmg["Flat Blade"]=set_combine(sets.strws,{})

	sets.ws.acc["Flat Blade"]=set_combine(sets.ws.dmg["Flat Blade"], {neck="Combatant's Torque", right_ring="Regal Ring", })

	sets.ws.dmg["Shining Blade"]=set_combine(sets.magicws,{})

	sets.ws.acc["Shining Blade"]=set_combine(sets.magicws,{})

	sets.ws.dmg["Seraph Blade"]=set_combine(sets.magicws,{})

	sets.ws.acc["Seraph Blade"]=set_combine(sets.magicws,{})

	sets.ws.dmg["Circle Blade"]=set_combine(sets.strws, {})

	sets.ws.acc["Circle Blade"]=set_combine(sets.ws.dmg["Circle Blade"], {neck="Combatant's Torque", back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, right_ring="Regal Ring", })

	sets.ws.dmg["Spirits Within"]=set_combine(sets.wsd,{body="Phorcys Korazin", waist="Fotia Belt", legs=stplegs,})

	sets.ws.acc["Spirits Within"]=set_combine(sets.wsd, {body="Phorcys Korazin", waist="Fotia Belt", legs=stplegs,})

	sets.ws.dmg["Vorpal Blade"]=set_combine(sets.strws, {waist="Fotia Belt", left_ring="Ifrit Ring +1",})

	sets.ws.acc["Vorpal Blade"]=set_combine(sets.ws.dmg["Vorpal Blade"], {neck="Combatant's Torque", back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, right_ring="Regal Ring", })

	sets.ws.dmg["Savage Blade"]=set_combine(sets.wsd,{})

	sets.ws.acc["Savage Blade"]=set_combine(sets.ws.dmg["Savage Blade"], {back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},})

	sets.ws.dmg["Sanguine Blade"]=set_combine(sets.magicws, {head="Pixie Hairpin +1", left_ring="Archon Ring",})

	sets.ws.acc["Sanguine Blade"]=set_combine(sets.magicws, {head="Pixie Hairpin +1", left_ring="Archon Ring",})

	sets.ws.dmg["Requiescat"]={ammo="Ginsen", head="Carmine Mask +1", body="Carm. Scale Mail",
    hands="Carmine Fin. Ga.", legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
	feet="Carmine Greaves", neck="Fotia Gorget", waist="Fotia Belt", left_ear="Steelflash Earring",
	right_ear="Bladeborn Earring", left_ring="Levia. Ring", right_ring="Rufescent Ring", back="Bleating Mantle",}

	sets.ws.acc["Requiescat"]=set_combine(sets.ws.dmg["Requiescat"], {head="Gavialis Helm", back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}, left_ear="Zennaroi Earring", right_ear="Brutal Earring", right_ring="Regal Ring",})

	--[[sets.ws=
	{
    main="Apocalypse",

    ammo="Knobkierrie",
    head={ name="Argosy Celata +1", augments={'STR+12','DEX+12','Attack+20',}},
    body="Dagon Breast.",
    hands={ name="Argosy Mufflers +1", augments={'STR+20','"Dbl.Atk."+3','Haste+3%',}},
    legs={ name="Argosy Breeches +1", augments={'STR+12','Attack+25','"Store TP"+6',}},
    feet={ name="Argosy Sollerets +1", augments={'STR+12','DEX+12','Attack+20',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Telos Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
	} old set: delete]]

	sets.precast.fc={ammo="Sapience Orb",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body={ name="Odyss. Chestplate", augments={'Mag. Acc.+19','"Fast Cast"+6','VIT+1','"Mag.Atk.Bns."+6',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}},
    legs={ name="Odyssean Cuisses", augments={'STR+4','"Fast Cast"+7','Accuracy+7 Attack+7',}},
    feet={ name="Odyssean Greaves", augments={'Mag. Acc.+21','"Fast Cast"+6','MND+4',}},
    neck="Voltsurge Torque",
    waist="Nierenschutz",
    left_ear="Loquac. Earring",
    right_ear="Etiolation Earring",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring",
    back="Shadow Mantle",
}

	sets.midcast["Dread Spikes"]={
    ammo="Egoist's Tathlum",
    head="Ganesha's Mask",
    body="Heath. Cuirass +1",
    hands={ name="Despair Fin. Gaunt.", augments={'STR+12','VIT+7','Haste+2%',}},
    legs="Gor. Brayettes +1",
    feet={ name="Amm Greaves", augments={'HP+50','VIT+9','Accuracy+14','Damage taken-1%',}},
    neck="Dualism Collar +1",
    waist="Oneiros Belt",
    left_ear="Odnowa Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Moonlight Ring",
    right_ring="Moonlight Ring",
    back="Moonbeam Cape",
	}

	sets.midcast.dmbase={
		ammo="Pemphredo Tathlum",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body={ name="Carm. Sc. Mail +1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
    hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
    legs="Heath. Flanchard +1",
    feet={ name="Odyssean Greaves", augments={'Mag. Acc.+21','"Fast Cast"+6','MND+4',}},
    neck="Erra Pendant",
    waist="Eschan Stone",
    left_ear="Digni. Earring",
    right_ear="Hermetic Earring",
    left_ring="Evanescence Ring",
    right_ring="Archon Ring",
    back={ name="Niht Mantle", augments={'Attack+14','Dark magic skill +5','"Drain" and "Aspir" potency +21','Weapon skill damage +4%',}},
	}

	sets.ja = {}
	sets.ja["Blood Weapon"] = {body="Fall. Cuirass +3"}
	sets.ja["Diabolic Eye"] = {hands="Fall. Fin. Gaunt. +3"}
	sets.ja["Nether Void"] = {legs="Heath. Flanchard +1"}
	sets.ja["Arcane Circle"] = {feet="Ig. Sollerets +2"}
	sets.ja["Last Resort"] = {back="Ankou's Mantle", feet="Fall. Sollerets +3"}
	sets.ja["Weapon Bash"] = {hands="Ignominy Gauntlets +2",}

	sets.midcast.doa=set_combine(sets.midcast.dmbase, {})

	sets.midcast["Drain II"]=set_combine(sets.midcast.dmbase, {feet="Rat. Sollerets +1",})

	sets.midcast["Drain III"]=set_combine(sets.midcast.dmbase, {feet="Rat. Sollerets +1",})

	sets.midcast.absorbs=set_combine(sets.midcast.dmbase, {head="Ig. Burgonet +2", back="Chuparrosa Mantle",feet="Rat. Sollerets +1",})

	sets.midcast.ds=set_combine(sets.midcast.dmbase, {head={ name="Fall. Burgeonet +3", augments={'Enhances "Dark Seal" effect',}},})
end

function precast(spell)
	if spell.prefix=="/weaponskill" then
		if wstype=="dmg" then
			equip(sets.ws.dmg[spell.english])
		elseif wstype=="acc" then
			equip(sets.ws.acc[spell.english])
		end
	end
	if spell.prefix=="/magic" or spell.prefix=="/ninjutsu"then
		equip(sets.precast.fc)
	end
	if spell.prefix=="/jobability" then
		if spell.english then
			equip(sets.ja[spell.english])
		end
	end
end

function midcast(spell)
	if spell.english then
		equip(sets.midcast[spell.english])
	end
	if spell.english=="Drain" or spell.english:contains("Aspir") then
		equip(sets.midcast.doa)
	end
	if spell.english:contains("Absorb-") then
		equip(sets.midcast.absorbs)
	end
	if spell.english:contains("Bio") then
		equip(sets.midcast.dmbase)
	end
	if spell.english=="Drain II" or spell.english=="Drain III" then
		if buffactive["Dark Seal"] then
			equip(sets.midcast.ds)
		end
	end
end

function aftercast(spell)
	status_change(player.status)
end

function status_change(new,old)
	if new=="Engaged" then
		if TpType=="dd" then
			if weaponry=="Ragnarok" then
				equip(sets.tp.Ragnarok[tpacc])
			elseif weaponry=="Caladbolg" then
				equip(sets.tp.Caladbolg[tpacc])
			elseif weaponry=="Apocalypse" then
				equip(sets.tp.Apocalypse[tpacc])
			elseif weaponry=="Anguta" then
				equip(sets.tp.Anguta[tpacc])
			elseif weaponry=="Naegling" then
				equip(sets.tp.Naegling[tpacc])
			elseif weaponry=="Dolichenus" then
				equip(sets.tp.Dolichenus[tpacc])
			elseif weaponry=="Lycurgos" then
				equip(sets.tp.Lycurgos[tpacc])
			end
		elseif TpType=="hybrid" then
			if weaponry=="Ragnarok" then
				equip(sets.hybrid.Ragnarok[tpacc])
			elseif weaponry=="Caladbolg" then
				equip(sets.hybrid.Caladbolg[tpacc])
			elseif weaponry=="Apocalypse" then
				equip(sets.hybrid.Apocalypse[tpacc])
			elseif weaponry=="Anguta" then
				equip(sets.hybrid.Anguta[tpacc])
			elseif weaponry=="Naegling" then
				equip(sets.hybrid.Naegling[tpacc])
			elseif weaponry=="Dolichenus" then
				equip(sets.hybrid.Dolichenus[tpacc])
			elseif weaponry=="Lycurgos" then
				equip(sets.hybrid.Lycurgos[tpacc])
			end
		elseif TpType=="dt" then
			equip(sets.dt[weaponry])
		end
elseif new~="Engaged" then
	if weaponry=="Ragnarok" then
		equip(sets.idle.Ragnarok[idletype])
	elseif weaponry=="Caladbolg" then
		equip(sets.idle.Caladbolg[idletype])
	elseif weaponry=="Apocalypse" then
		equip(sets.idle.Apocalypse[idletype])
	elseif weaponry=="Anguta" then
		equip(sets.idle.Anguta[idletype])
	elseif weaponry=="Naegling" then
		equip(sets.idle.Naegling[idletype])
	elseif weaponry=="Dolichenus" then
		equip(sets.idle.Dolichenus[idletype])
	elseif weaponry=="Lycurgos" then
		equip(sets.idle.Lycurgos[idletype])
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
	if command=="tpdd" then
		TpType="dd"
		add_to_chat(206,"TP Mode:"..TpType.."")
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/'..TpType..'mode.png')
		status_change(player.status)
		windower.prim.set_size('TP_SET',200,30)
	end
	if command=="tpacc" then
		if tpacc=="lowacc" then
			tpacc="medacc"
		elseif tpacc=="medacc" then
			tpacc="highacc"
		elseif tpacc=="highacc" then
			tpacc="lowacc"
		end
		windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/'..tpacc..'.png')
		status_change(player.status)
		add_to_chat(206,"TP:"..tpacc.."")
		windower.prim.set_size('ACC_SET',200,30)
	end
	if command=="tpdt" then
		TpType="dt"
		status_change(player.status)
		add_to_chat(206,"TP Mode:"..TpType.."")
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/'..TpType..'mode.png')
	end
	if command=="hybrid" then
		TpType="hybrid"
		status_change(player.status)
		add_to_chat(206,"TP Mode:"..TpType.."")
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/'..TpType..'mode.png')
	end
	if command=="rag" then
		weaponry="Ragnarok"
		status_change(player.status)
		add_to_chat(206,"main weapon: "..weaponry.."")
		windower.prim.set_texture('WEAPON_SET',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		windower.prim.set_size('WEAPON_SET',200,55)
	end
	if command=="apoc" then
		weaponry="Apocalypse"
		status_change(player.status)
		add_to_chat(206,"main weapon: "..weaponry.."")
		windower.prim.set_texture('WEAPON_SET',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		windower.prim.set_size('WEAPON_SET',200,55)
	end
	if command=="ang" then
		weaponry="Anguta"
		status_change(player.status)
		add_to_chat(206,"main weapon: "..weaponry.."")
		windower.prim.set_texture('WEAPON_SET',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		windower.prim.set_size('WEAPON_SET',200,55)
	end
	if command=="cb" then
		weaponry="Caladbolg"
		status_change(player.status)
		add_to_chat(206,"main weapon: "..weaponry.."")
		windower.prim.set_texture('WEAPON_SET',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		windower.prim.set_size('WEAPON_SET',200,55)
	end
	if command=="Naegling" then
		weaponry="Naegling"
		status_change(player.status)
		add_to_chat(206,"main weapon: "..weaponry.."")
		windower.prim.set_texture('WEAPON_SET',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		windower.prim.set_size('WEAPON_SET',200,55)
	end
	if command=="Lycurgos" then
		weaponry="Lycurgos"
		status_change(player.status)
		add_to_chat(206,"main weapon: "..weaponry.."")
		windower.prim.set_texture('WEAPON_SET',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
		windower.prim.set_size('WEAPON_SET',200,55)
	end
	if command=="wstoggle" then
		if wstype=="dmg" then
			wstype="acc"
		elseif wstype=="acc" then
			wstype="dmg"
		end
		status_change(player.status)
		add_to_chat(206,"WS Type: "..wstype.."")
		windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/images/'..wstype..'.png')
		windower.prim.set_size('WS_SET',200,30)
	end
	if command=="toggleidle" then
		if idletype=="standard" then
			idletype="DT"
		elseif idletype~="standard" then
			idletype="standard"
		end
		status_change(player.status)
		add_to_chat(206,"Idle Type: "..idletype.."")
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/'..idletype..'idle.png')
		windower.prim.set_size('IDLE_SET',200,30)
	end
end
