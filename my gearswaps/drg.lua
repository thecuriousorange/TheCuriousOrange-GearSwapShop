function get_sets()

include('organizer-lib.lua')
include('skillchain-elements.lua')
include('haste-include.lua')
include('lelubrdgkeys.lua')

TPType="dd"
WSMode="dmg"
weaponry="Trishula"
IdleType="standard"
acc="lowacc"

sets.TPType=T{}
sets.WSMode=T{}
sets.weaponry=T{}
sets.IdleType=T{}
sets.acc=T{}

gui()
binds()


--default macro set
	send_command('input /macro book 5;input /macro set 2')
--default macro set

jumps= S{'Jump','High Jump','Spirit Jump','Soul Jump',}

sets.ws={}
sets.ws.dmg={}
sets.ws.acc={}
sets.ja={}
sets.pet={}
sets.breath={}

sets.Trishula={Main="Trishula", sub="Utu Grip",}
sets.Gungnir={Main="Gungnir", sub="Utu Grip",}
sets.Ryunohige={Main="Ryunohige", sub="Utu Grip",}
sets.Quint={Main="Quint Spear", sub="Utu Grip",}

sets.Trishula.hybrid={}
sets.Gungnir.hybrid={}
sets.Quint.hybrid={}
sets.Ryunohige.hybrid={}

sets.Trishula.lowacc=set_combine(sets.Trishula,{
	ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body="Hjarrandi Breastplate",
    hands=acrohands,
	legs={ name="Valor. Hose", augments={'Accuracy+24','"Store TP"+7','DEX+3','Attack+13',}},
    feet="Flam. Gambieras +2",
    neck="Dgn. Collar +2",
    waist="Ioskeha Belt +1",
    left_ear="Sherida Earring",
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}},
})

sets.Gungnir.lowacc=set_combine(sets.Gungnir.lowacc,{
	ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body={ name="Valorous Mail", augments={'Accuracy+28','"Store TP"+7','DEX+7',}},
    hands=acrohands,
	legs={ name="Valor. Hose", augments={'Accuracy+24','"Store TP"+7','DEX+3','Attack+13',}},
    feet="Flam. Gambieras +2",
    neck="Anu Torque",
    waist="Ioskeha Belt +1",
    left_ear="Sherida Earring",
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}},
})

sets.Ryunohige.lowacc=set_combine(sets.Ryunohige,{
	ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body={ name="Valorous Mail", augments={'Accuracy+28','"Store TP"+7','DEX+7',}},
    hands=acrohands,
	legs={ name="Valor. Hose", augments={'Accuracy+24','"Store TP"+7','DEX+3','Attack+13',}},
    feet="Flam. Gambieras +2",
    neck="Anu Torque",
    waist="Ioskeha Belt +1",
    left_ear="Sherida Earring",
    right_ear="Dedition Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}},
})

sets.Quint.lowacc=set_combine(sets.Quint,{
	ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body={ name="Valorous Mail", augments={'Accuracy+28','"Store TP"+7','DEX+7',}},
    hands=acrohands,
	legs={ name="Valor. Hose", augments={'Accuracy+24','"Store TP"+7','DEX+3','Attack+13',}},
    feet="Flam. Gambieras +2",
    neck="Anu Torque",
    waist="Ioskeha Belt +1",
    left_ear="Sherida Earring",
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}},
})

sets.Trishula.medacc=set_combine(sets.Trishula.lowacc,{
	legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
    neck="Combatant's Torque",
})

sets.Gungnir.medacc=set_combine(sets.Gungnir.lowacc,{
	legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
    neck="Combatant's Torque",
})

sets.Quint.medacc=set_combine(sets.Quint.lowacc,{
	legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
    neck="Combatant's Torque",
})

sets.Ryunohige.medacc=set_combine(sets.Ryunohige.lowacc,{
	legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
    neck="Combatant's Torque",
})

sets.Trishula.highacc=set_combine(sets.Trishula.medacc,{
	neck="Shulmanu Collar",
	hands="Flam. Manopolas +2",
	right_ear="Telos Earring",
})

sets.Gungnir.highacc=set_combine(sets.Gungnir.medacc,{
	neck="Shulmanu Collar",
	hands="Flam. Manopolas +2",
	right_ear="Telos Earring",
})

sets.Quint.highacc=set_combine(sets.Quint.medacc,{
	neck="Shulmanu Collar",
	hands="Flam. Manopolas +2",
	right_ear="Telos Earring",
})

sets.Ryunohige.highacc=set_combine(sets.Ryunohige.medacc,{
	neck="Shulmanu Collar",
	hands="Flam. Manopolas +2",
	right_ear="Telos Earring",
})

sets.Trishula.maxacc=set_combine(sets.Trishula.highacc,{
	ammo="Amar Cluster",
    head="Vishap Armet +3",
    body="Vishap Mail +3",
    hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
    feet="Vishap Greaves +3",
    neck="Shulmanu Collar",
    waist="Olseni Belt",
    left_ear="Mache Earring +1",
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}},
})

sets.Gungnir.maxacc=set_combine(sets.Gungnir.highacc,{
	ammo="Amar Cluster",
    head="Vishap Armet +3",
    body="Vishap Mail +3",
    hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
    feet="Vishap Greaves +3",
    neck="Shulmanu Collar",
    waist="Olseni Belt",
    left_ear="Mache Earring +1",
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}},
})

sets.Quint.maxacc=set_combine(sets.Quint.highacc,{
	ammo="Amar Cluster",
    head="Vishap Armet +3",
    body="Vishap Mail +3",
    hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
    feet="Vishap Greaves +3",
    neck="Shulmanu Collar",
    waist="Olseni Belt",
    left_ear="Mache Earring +1",
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}},
})

sets.Ryunohige.maxacc=set_combine(sets.Ryunohige.highacc,{
	ammo="Amar Cluster",
    head="Vishap Armet +3",
    body="Vishap Mail +3",
    hands={ name="Emi. Gauntlets +1", augments={'HP+65','DEX+12','Accuracy+20',}},
    legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
    feet="Vishap Greaves +3",
    neck="Shulmanu Collar",
    waist="Olseni Belt",
    left_ear="Mache Earring +1",
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}},
})

sets.Trishula.idle={}
sets.Gungnir.idle={}
sets.Ryunohige.idle={}
sets.Quint.idle={}

sets.Trishula.idle.standard=set_combine(sets.Trishula,{
	ammo="Vanir Battery",
	head="Valorous Mask",
	body="Jumalik Mail",
	hands="Sulev. Gauntlets +2",
	legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
	feet="Sulev. Leggings +2",
	neck="Loricate Torque +1",
	waist="Nierenschutz",
	left_ear="Ethereal Earring",
	right_ear="Sanare Earring",
	left_ring="Shadow Ring",
	right_ring="Sheltered Ring",
	back="Shadow Mantle",
})

sets.Gungnir.idle.standard=set_combine(sets.Gungnir,{
	ammo="Vanir Battery",
	head="Valorous Mask",
	body="Jumalik Mail",
	hands="Sulev. Gauntlets +2",
	legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
	feet="Sulev. Leggings +2",
	neck="Loricate Torque +1",
	waist="Nierenschutz",
	left_ear="Ethereal Earring",
	right_ear="Sanare Earring",
	left_ring="Shadow Ring",
	right_ring="Sheltered Ring",
	back="Shadow Mantle",
})

sets.Quint.idle.standard=set_combine(sets.Quint,{
	ammo="Vanir Battery",
	head="Valorous Mask",
	body="Jumalik Mail",
	hands="Sulev. Gauntlets +2",
	legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
	feet="Sulev. Leggings +2",
	neck="Loricate Torque +1",
	waist="Nierenschutz",
	left_ear="Ethereal Earring",
	right_ear="Sanare Earring",
	left_ring="Shadow Ring",
	right_ring="Sheltered Ring",
	back="Shadow Mantle",
})

sets.Ryunohige.idle.standard=set_combine(sets.Ryunohige,{
	ammo="Vanir Battery",
	head="Valorous Mask",
	body="Jumalik Mail",
	hands="Sulev. Gauntlets +2",
	legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
	feet="Sulev. Leggings +2",
	neck="Loricate Torque +1",
	waist="Nierenschutz",
	left_ear="Ethereal Earring",
	right_ear="Sanare Earring",
	left_ring="Shadow Ring",
	right_ring="Sheltered Ring",
	back="Shadow Mantle",
})

sets.Trishula.idle.dt=set_combine(sets.Trishula,{
	ammo="Staunch Tathlum +1",
    head="Sulevia's Mask +2",
    body="Tartarus Platemail",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Loricate Torque +1",
    waist="Asklepian Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Odnowa Earring",
    left_ring="Moonlight Ring",
    right_ring="Moonlight Ring",
    back="Moonbeam Cape",
})

sets.Gungnir.idle.dt=set_combine(sets.Gungnir,{
	ammo="Staunch Tathlum +1",
    head="Sulevia's Mask +2",
    body="Tartarus Platemail",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Loricate Torque +1",
    waist="Asklepian Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Odnowa Earring",
    left_ring="Moonlight Ring",
    right_ring="Moonlight Ring",
    back="Moonbeam Cape",
})

sets.Quint.idle.dt=set_combine(sets.Quint,{
	ammo="Staunch Tathlum +1",
    head="Sulevia's Mask +2",
    body="Tartarus Platemail",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Loricate Torque +1",
    waist="Asklepian Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Odnowa Earring",
    left_ring="Moonlight Ring",
    right_ring="Moonlight Ring",
    back="Moonbeam Cape",
})

sets.Ryunohige.idle.dt=set_combine(sets.Ryunohige,{
	ammo="Staunch Tathlum +1",
    head="Sulevia's Mask +2",
    body="Tartarus Platemail",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Loricate Torque +1",
    waist="Asklepian Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Odnowa Earring",
    left_ring="Moonlight Ring",
    right_ring="Moonlight Ring",
    back="Moonbeam Cape",
})

sets.Trishula.idle.dtkite=set_combine(sets.Trishula.idle.dt,{
	legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
})

sets.Gungnir.idle.dtkite=set_combine(sets.Gungnir.idle.dt,{
	legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
})

sets.Quint.idle.dtkite=set_combine(sets.Quint.idle.dt,{
	legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
})

sets.Ryunohige.idle.dtkite=set_combine(sets.Ryunohige.idle.dt,{
	legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
})

--hybrid
sets.Trishula.hybrid.lowacc=set_combine(sets.Trishula.lowacc,{
	right_ring="Defending Ring",
})

sets.Trishula.hybrid.medacc=set_combine(sets.Trishula.medacc,{
	right_ring="Defending Ring",
})

sets.Trishula.hybrid.highacc=set_combine(sets.Trishula.highacc,{
	right_ring="Defending Ring",
})

sets.Trishula.hybrid.maxacc=set_combine(sets.Trishula.maxacc,{
	right_ring="Defending Ring",
})

sets.Gungnir.hybrid.lowacc=set_combine(sets.Gungnir.lowacc,{
	right_ring="Defending Ring",
})

sets.Gungnir.hybrid.medacc=set_combine(sets.Gungnir.medacc,{
	right_ring="Defending Ring",
})

sets.Gungnir.hybrid.highacc=set_combine(sets.Gungnir.highacc,{
	right_ring="Defending Ring",
})

sets.Gungnir.hybrid.maxacc=set_combine(sets.Gungnir.maxacc,{
	right_ring="Defending Ring",
})

sets.Quint.hybrid.lowacc=set_combine(sets.Quint.lowacc,{
	right_ring="Defending Ring",
})

sets.Quint.hybrid.medacc=set_combine(sets.Quint.medacc,{
	right_ring="Defending Ring",
})

sets.Quint.hybrid.highacc=set_combine(sets.Quint.highacc,{
	right_ring="Defending Ring",
})

sets.Quint.hybrid.maxacc=set_combine(sets.Quint.maxacc,{
	right_ring="Defending Ring",
})

sets.Ryunohige.hybrid.lowacc=set_combine(sets.Ryunohige.lowacc,{
	right_ring="Defending Ring",
})

sets.Ryunohige.hybrid.medacc=set_combine(sets.Ryunohige.medacc,{
	right_ring="Defending Ring",
})

sets.Ryunohige.hybrid.highacc=set_combine(sets.Ryunohige.highacc,{
	right_ring="Defending Ring",
})

sets.Ryunohige.hybrid.maxacc=set_combine(sets.Ryunohige.maxacc,{
	right_ring="Defending Ring",
})

sets.Trishula.dt=set_combine(sets.Trishula,{
	ammo="Hasty Pinion +1",
	head="Sulevia's Mask +2",
	body="Sulevia's Plate. +2",
	hands="Sulev. Gauntlets +2",
	legs="Sulev. Cuisses +2",
	feet="Sulev. Leggings +2",
	neck="Loricate Torque +1",
	waist="Tempus Fugit",
	left_ear="Zwazo Earring +1",
	right_ear="Zennaroi Earring",
	left_ring="Vocane Ring +1",
	right_ring="Defending Ring",
	back="Agema Cape",
})

sets.Gungnir.dt=set_combine(sets.Gungnir,{
	ammo="Hasty Pinion +1",
	head="Sulevia's Mask +2",
	body="Sulevia's Plate. +2",
	hands="Sulev. Gauntlets +2",
	legs="Sulev. Cuisses +2",
	feet="Sulev. Leggings +2",
	neck="Loricate Torque +1",
	waist="Tempus Fugit",
	left_ear="Zwazo Earring +1",
	right_ear="Zennaroi Earring",
	left_ring="Vocane Ring +1",
	right_ring="Defending Ring",
	back="Agema Cape",
})

sets.Quint.dt=set_combine(sets.Quint,{
	ammo="Hasty Pinion +1",
	head="Sulevia's Mask +2",
	body="Sulevia's Plate. +2",
	hands="Sulev. Gauntlets +2",
	legs="Sulev. Cuisses +2",
	feet="Sulev. Leggings +2",
	neck="Loricate Torque +1",
	waist="Tempus Fugit",
	left_ear="Zwazo Earring +1",
	right_ear="Zennaroi Earring",
	left_ring="Vocane Ring +1",
	right_ring="Defending Ring",
	back="Agema Cape",
})

sets.Ryunohige.dt=set_combine(sets.Ryunohige,{
	ammo="Hasty Pinion +1",
	head="Sulevia's Mask +2",
	body="Sulevia's Plate. +2",
	hands="Sulev. Gauntlets +2",
	legs="Sulev. Cuisses +2",
	feet="Sulev. Leggings +2",
	neck="Loricate Torque +1",
	waist="Tempus Fugit",
	left_ear="Zwazo Earring +1",
	right_ear="Zennaroi Earring",
	left_ring="Vocane Ring +1",
	right_ring="Defending Ring",
	back="Agema Cape",
})

--WS sets
	sets.ws.dmg["Double Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +2", hands="Sulev. Gauntlets +2",
	legs="Sulev. Cuisses +2", feet="Pelt. Schyn. +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ear="Sherida Earring", right_ear="Brutal Earring", left_ring="Niqmaddu Ring",
	right_ring="Regal Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.ws.acc["Double Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +2", hands="Sulev. Gauntlets +2",
	legs="Sulev. Cuisses +2", feet="Pelt. Schyn. +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ear="Sherida Earring", right_ear="Telos Earring", left_ring="Niqmaddu Ring",
	right_ring="Regal Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.ws.dmg["Thunder Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +2", hands="Sulev. Gauntlets +2",
	legs="Sulev. Cuisses +2", feet="Pelt. Schyn. +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ear="Sherida Earring", right_ear="Brutal Earring", left_ring="Niqmaddu Ring",
	right_ring="Regal Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.ws.acc["Thunder Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +2", hands="Sulev. Gauntlets +2",
	legs="Sulev. Cuisses +2", feet="Pelt. Schyn. +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ear="Sherida Earring", right_ear="Telos Earring", left_ring="Niqmaddu Ring",
	right_ring="Regal Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.ws.dmg["Raiden Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +2", hands="Sulev. Gauntlets +2",
	legs="Sulev. Cuisses +2", feet="Pelt. Schyn. +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ear="Sherida Earring", right_ear="Brutal Earring", left_ring="Niqmaddu Ring",
	right_ring="Regal Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.ws.acc["Raiden Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +2", hands="Sulev. Gauntlets +2",
	legs="Sulev. Cuisses +2", feet="Pelt. Schyn. +1", neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ear="Sherida Earring", right_ear="Telos Earring", left_ring="Niqmaddu Ring",
	right_ring="Regal Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.ws.dmg["Leg Sweep"]={ammo="Amar Cluster",
    head="Flam. Zucchetto +2",
    body="Flamma Korazin +2",
    hands="Flam. Manopolas +2",
    legs="Flamma Dirs +2",
    feet="Flam. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.ws.acc["Leg Sweep"]={ammo="Vanir Battery", head="Lustratio Cap", body="Dagon Breast.", hands=dahands,
	legs=taeonlegs, feet=taeonfeet, neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ear="Sherida Earring", right_ear="Telos Earring", right_ring="Hetairoi Ring", left_ring="Petrov Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.ws.dmg["Penta Thrust"]={ammo="Vanir Battery", head="Lustratio Cap", body="Dagon Breast.", hands=dahands,
	legs=taeonlegs, feet=taeonfeet, neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ear="Sherida Earring", right_ear="Brutal Earring", right_ring="Hetairoi Ring", left_ring="Petrov Ring",
    back="Bleating Mantle",}

	sets.ws.acc["Penta Thrust"]={ammo="Vanir Battery", head="Lustratio Cap", body="Dagon Breast.", hands=dahands,
	legs=taeonlegs, feet=taeonfeet, neck="Ganesha's Mala", waist="Windbuffet Belt +1",
	left_ear="Sherida Earring", right_ear="Telos Earring", right_ring="Hetairoi Ring", left_ring="Petrov Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.ws.dmg["Vorpal Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +2", hands="Sulev. Gauntlets +2",
	legs="Pelt. Cuissots +1", feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt",
	left_ear="Sherida Earring", right_ear="Brutal Earring", left_ring="Niqmaddu Ring",
	right_ring="Regal Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.ws.acc["Vorpal Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +2", hands="Sulev. Gauntlets +2",
	legs=taeonlegs, feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt",
	left_ear="Sherida Earring", right_ear="Telos Earring", left_ring="Niqmaddu Ring",
	right_ring="Regal Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.ws.dmg["Skewer"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +2", hands="Sulev. Gauntlets +2",
	legs="Pelt. Cuissots +1", feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt",
	left_ear="Sherida Earring", right_ear="Brutal Earring", left_ring="Niqmaddu Ring",
	right_ring="Regal Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.ws.acc["Skewer"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +2", hands="Sulev. Gauntlets +2",
	legs=taeonlegs, feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt",
	left_ear="Sherida Earring", right_ear="Telos Earring", left_ring="Niqmaddu Ring",
	right_ring="Regal Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.ws.dmg["Wheeling Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +2", hands="Sulev. Gauntlets +2",
	legs="Pelt. Cuissots +1", feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt",
	left_ear="Sherida Earring", right_ear="Brutal Earring", left_ring="Niqmaddu Ring",
	right_ring="Regal Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.ws.acc["Wheeling Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +2", hands="Sulev. Gauntlets +2",
	legs="Sulev. Cuisses +2", feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt",
	left_ear="Sherida Earring", right_ear="Telos Earring", left_ring="Niqmaddu Ring",
	right_ring="Regal Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.ws.dmg["Impulse Drive"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +2", hands="Sulev. Gauntlets +2",
	legs="Pelt. Cuissots +1", feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt",
	left_ear="Sherida Earring", right_ear="Brutal Earring", left_ring="Niqmaddu Ring",
	right_ring="Regal Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.ws.acc["Impulse Drive"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +2", hands="Sulev. Gauntlets +2",
	legs="Sulev. Cuisses +2", feet="Pelt. Schyn. +1", neck="Fotia Gorget", waist="Fotia Belt",
	left_ear="Sherida Earring", right_ear="Telos Earring", left_ring="Niqmaddu Ring",
	right_ring="Regal Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.ws.dmg["Drakesbane"]={ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}},
    body="Sulevia's Plate. +2",
    hands={ name="Lustratio Mittens", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
    legs="Pelt. Cuissots +1",
    feet="Thereoid Greaves",--{ name="Valorous Greaves", augments={'Accuracy+22 Attack+22','Crit.hit rate+3','Accuracy+1','Attack+15',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.ws.acc["Drakesbane"]={ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'Accuracy+23 Attack+23','Crit.hit rate+5','INT+9','Accuracy+8','Attack+4',}},
    body="Sulevia's Plate. +2",
    hands={ name="Lustratio Mittens", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
    legs="Pelt. Cuissots +1",
    feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.ws.dmg["Sonic Thrust"]={ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'Attack+16','Weapon skill damage +4%','STR+8','Accuracy+14',}},
    body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
    hands={ name="Ptero. Fin. G. +3", augments={'Enhances "Angon" effect',}},
    legs="Vishap Brais +3",
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear="Ishvara Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},}

	sets.ws.acc["Sonic Thrust"]={ammo="Knobkierrie", head="Lustratio Cap", body="Sulevia's Plate. +2", hands="Sulev. Gauntlets +2",
	legs="Sulev. Cuisses +2", feet="Sulev. Leggings +2", neck="Fotia Gorget", waist="Fotia Belt",
	left_ear="Bladeborn Earring", right_ear="Steelflash Earring", left_ring="Niqmaddu Ring",
	right_ring="Regal Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.ws.dmg["Camlann's Torment"]={ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'Attack+16','Weapon skill damage +4%','STR+8','Accuracy+14',}},
    body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+10','Attack+14',}},
    hands={ name="Ptero. Fin. G. +3", augments={'Enhances "Angon" effect',}},
    legs="Vishap Brais +3",
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear="Ishvara Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},}

	sets.ws.acc["Camlann's Torment"]={ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'Attack+16','Weapon skill damage +4%','STR+8','Accuracy+14',}},
    body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
    hands={ name="Ptero. Fin. G. +3", augments={'Enhances "Angon" effect',}},
    legs="Vishap Brais +3",
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear="Ishvara Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},}

	sets.ws.dmg["Stardiver"]={ammo="Knobkierrie", head={ name="Ptero. Armet +3", augments={'Enhances "Deep Breathing" effect',}}, body="Dagon Breast.", hands="Sulev. Gauntlets +2",
	legs="Sulev. Cuisses +2", feet="Flam. Gambieras +2", neck="Fotia Gorget", waist="Fotia Belt",
	left_ear="Sherida Earring", right_ear="Brutal Earring", left_ring="Niqmaddu Ring",
	right_ring="Regal Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.ws.acc["Stardiver"]={ammo="Knobkierrie", head={ name="Ptero. Armet +3", augments={'Enhances "Deep Breathing" effect',}},
	body="Dagon Breast.", hands="Sulev. Gauntlets +2",
	legs="Sulev. Cuisses +2", feet="Ptero. Greaves +3",
	neck="Fotia Gorget", waist="Fotia Belt", left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}, right_ear="Brutal Earring", left_ring="Niqmaddu Ring", right_ring="Regal Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.ws.dmg["Geirskogul"]={ammo="Knobkierrie",
    head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
    body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
    hands="Ptero. Fin. G. +3",
    legs="Vishap Brais +3",
    feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},}

	sets.ws.acc["Geirskogul"]={ammo="Knobkierrie",
    head={ name="Lustratio Cap", augments={'Attack+15','STR+5','"Dbl.Atk."+2',}},
    body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
    hands={ name="Lustratio Mittens", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
    legs={ name="Lustratio Subligar", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
    feet={ name="Valorous Greaves", augments={'"Dbl.Atk."+5','DEX+6','Accuracy+10','Attack+5',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring", back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},}
--WS sets

--ws day bonus
	sets.wsdaybonus={head="Gavialis Helm", feet="Sulev. Leggings +2",}
--ws day bonus

--midcast sets
	sets.breath.midcast={head={ name="Ptero. Armet +3", augments={'Enhances "Deep Breathing" effect',}},
    body={ name="Acro Surcoat", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: Breath+6','Pet: Damage taken -3%',}},
    hands={ name="Acro Gauntlets", augments={'Pet: Mag. Acc.+22','Pet: Breath+7','CHR+8',}},
    legs={ name="Acro Breeches", augments={'Pet: Mag. Acc.+22','Pet: Breath+6','MND+8',}},
    feet={ name="Acro Leggings", augments={'Pet: Mag. Acc.+12','Pet: Breath+6','Pet: Damage taken -4%',}},
    neck="Lancer's Torque", waist="Glassblower's Belt", left_ear="Anastasi Earring", right_ear="Lancer's Earring",
    left_ring="Meridian Ring", right_ring="Eihwaz Ring", back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.breath.elementalbreath={head={ name="Ptero. Armet +3", augments={'Enhances "Deep Breathing" effect',}},
    body={ name="Acro Surcoat", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: Breath+6','Pet: Damage taken -3%',}},
    hands={ name="Acro Gauntlets", augments={'Pet: Mag. Acc.+22','Pet: Breath+7','CHR+8',}},
    legs={ name="Acro Breeches", augments={'Pet: Mag. Acc.+22','Pet: Breath+6','MND+8',}},
    feet={ name="Acro Leggings", augments={'Pet: Mag. Acc.+12','Pet: Breath+6','Pet: Damage taken -4%',}},
    neck="Lancer's Torque", waist="Glassblower's Belt", left_ear="Enmerkar Earring", right_ear="Dragoon's Earring",
    left_ring="Meridian Ring", right_ring="Eihwaz Ring", back={ name="Brigantia's Mantle", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Accuracy+20 Attack+20',}},}
--midcast sets

--jump sets
	sets.Trishula.lowacc.Jump=set_combine(sets.Trishula.lowacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Trishula.medacc.Jump=set_combine(sets.Trishula.medacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Trishula.highacc.Jump=set_combine(sets.Trishula.highacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Trishula.maxacc.Jump=set_combine(sets.Trishula.maxacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Gungnir.lowacc.Jump=set_combine(sets.Gungnir.lowacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Gungnir.medacc.Jump=set_combine(sets.Gungnir.medacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Gungnir.highacc.Jump=set_combine(sets.Gungnir.highacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Gungnir.maxacc.Jump=set_combine(sets.Gungnir.maxacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Quint.lowacc.Jump=set_combine(sets.Quint.lowacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Quint.medacc.Jump=set_combine(sets.Quint.medacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Quint.highacc.Jump=set_combine(sets.Quint.highacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Quint.maxacc.Jump=set_combine(sets.Quint.maxacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Ryunohige.lowacc.Jump=set_combine(sets.Ryunohige.lowacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Ryunohige.medacc.Jump=set_combine(sets.Ryunohige.medacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Ryunohige.highacc.Jump=set_combine(sets.Ryunohige.highacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Ryunohige.maxacc.Jump=set_combine(sets.Ryunohige.maxacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Trishula.lowacc["High Jump"]=set_combine(sets.Trishula.lowacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Trishula.medacc["High Jump"]=set_combine(sets.Trishula.medacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Trishula.highacc["High Jump"]=set_combine(sets.Trishula.highacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Trishula.maxacc["High Jump"]=set_combine(sets.Trishula.maxacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Gungnir.lowacc["High Jump"]=set_combine(sets.Gungnir.lowacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Gungnir.medacc["High Jump"]=set_combine(sets.Gungnir.medacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Gungnir.highacc["High Jump"]=set_combine(sets.Gungnir.highacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Gungnir.maxacc["High Jump"]=set_combine(sets.Gungnir.maxacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Quint.lowacc["High Jump"]=set_combine(sets.Quint.lowacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Quint.medacc["High Jump"]=set_combine(sets.Quint.medacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Quint.highacc["High Jump"]=set_combine(sets.Quint.highacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Quint.maxacc["High Jump"]=set_combine(sets.Quint.maxacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Ryunohige.lowacc["High Jump"]=set_combine(sets.Ryunohige.lowacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Ryunohige.medacc["High Jump"]=set_combine(sets.Ryunohige.medacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Ryunohige.highacc["High Jump"]=set_combine(sets.Ryunohige.highacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Ryunohige.maxacc["High Jump"]=set_combine(sets.Ryunohige.maxacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Trishula.lowacc["Soul Jump"]=set_combine(sets.Trishula.lowacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Trishula.medacc["Soul Jump"]=set_combine(sets.Trishula.medacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Trishula.highacc["Soul Jump"]=set_combine(sets.Trishula.highacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Trishula.maxacc["Soul Jump"]=set_combine(sets.Trishula.maxacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Gungnir.lowacc["Soul Jump"]=set_combine(sets.Gungnir.lowacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Gungnir.medacc["Soul Jump"]=set_combine(sets.Gungnir.medacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Gungnir.highacc["Soul Jump"]=set_combine(sets.Gungnir.highacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Gungnir.maxacc["Soul Jump"]=set_combine(sets.Gungnir.maxacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Quint.lowacc["Soul Jump"]=set_combine(sets.Quint.lowacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Quint.medacc["Soul Jump"]=set_combine(sets.Quint.medacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Quint.highacc["Soul Jump"]=set_combine(sets.Quint.highacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Quint.maxacc["Soul Jump"]=set_combine(sets.Quint.maxacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Ryunohige.lowacc["Soul Jump"]=set_combine(sets.Ryunohige.lowacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Ryunohige.medacc["Soul Jump"]=set_combine(sets.Ryunohige.medacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Ryunohige.highacc["Soul Jump"]=set_combine(sets.Ryunohige.highacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Ryunohige.maxacc["Soul Jump"]=set_combine(sets.Ryunohige.maxacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Trishula.lowacc["Spirit Jump"]=set_combine(sets.Trishula.lowacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Trishula.medacc["Spirit Jump"]=set_combine(sets.Trishula.medacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Trishula.highacc["Spirit Jump"]=set_combine(sets.Trishula.highacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Trishula.maxacc["Spirit Jump"]=set_combine(sets.Trishula.maxacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Gungnir.lowacc["Spirit Jump"]=set_combine(sets.Gungnir.lowacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Gungnir.medacc["Spirit Jump"]=set_combine(sets.Gungnir.medacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Gungnir.highacc["Spirit Jump"]=set_combine(sets.Gungnir.highacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Gungnir.maxacc["Spirit Jump"]=set_combine(sets.Gungnir.maxacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Quint.lowacc["Spirit Jump"]=set_combine(sets.Quint.lowacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Quint.medacc["Spirit Jump"]=set_combine(sets.Quint.medacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Quint.highacc["Spirit Jump"]=set_combine(sets.Quint.highacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Quint.maxacc["Spirit Jump"]=set_combine(sets.Quint.maxacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Ryunohige.lowacc["Spirit Jump"]=set_combine(sets.Ryunohige.lowacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Ryunohige.medacc["Spirit Jump"]=set_combine(sets.Ryunohige.medacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Ryunohige.highacc["Spirit Jump"]=set_combine(sets.Ryunohige.highacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

	sets.Ryunohige.maxacc["Spirit Jump"]=set_combine(sets.Ryunohige.maxacc,{
		body={ name="Ptero. Mail +3", augments={'Enhances "Spirit Surge" effect',}},
		hands="Vis. Fng. Gaunt. +3",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
	})

--jump sets

--job abilities
	sets.ja["Ancient Circle"]={legs="Vishap Brais +3",}

	sets.ja["Angon"]={
	right_ear="Dragoon's Earring",
	hands="Ptero. Fin. G. +3",
	ammo="Angon"
	}

	sets.ja["Call Wyvern"]={body="Ptero. Mail +3",}

	sets.ja["Spirit Surge"]={
	body="Ptero. Mail +3",
	neck="Chanoix's Gorget",
	right_ear="Lancer's Earring",
	body={ name="Emicho Haubert", augments={'Pet: HP+100','Pet: INT+15','Pet: "Regen"+2',}},
	hands="Despair Fin. Gaunt.",
	legs="Vishap Brais +3",
	feet="Ptero. Greaves +3",
	}

	sets.ja["Deep Breathing"]={head="Ptero. Armet +3",}

	sets.ja["Steady Wing"]={
	neck="Chanoix's Gorget",
	right_ear="Lancer's Earring",
	body={ name="Emicho Haubert", augments={'Pet: HP+100','Pet: INT+15','Pet: "Regen"+2',}},
	hands="Despair Fin. Gaunt.",
	legs="Vishap Brais +3",
	feet="Ptero. Greaves +3",
	}

	sets.ja["Spirit Link"]={head="Vishap Armet +3", left_ear="Pratik Earring", hands="Pel. Vambraces +1", feet="Ptero. Greaves +3",}
--job abilities

--PETCMD sets
	sets.pet["Steady Wing"]={neck="Chanoix's Gorget", left_ear="Anastasi Earring", right_ear="Lancer's Earring", body={ name="Emicho Haubert", augments={'Pet: HP+100','Pet: INT+15','Pet: "Regen"+2',}}, hands="Despair Fin. Gaunt.",
	legs="Vishap Brais +3", feet="Ptero. Greaves +3",}

	sets.pet["Spirit Link"]={head="Vishap Armet +3", hands="Pel. Vambraces +1", back=updrafttp,}

	sets.pet["Restoring Breath"]={head={ name="Ptero. Armet +3", augments={'Enhances "Deep Breathing" effect',}},
    body={ name="Acro Surcoat", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: Breath+6','Pet: Damage taken -3%',}},
    hands={ name="Acro Gauntlets", augments={'Pet: Mag. Acc.+22','Pet: Breath+7','CHR+8',}},
    legs={ name="Acro Breeches", augments={'Pet: Mag. Acc.+22','Pet: Breath+6','MND+8',}},
    feet={ name="Acro Leggings", augments={'Pet: Mag. Acc.+12','Pet: Breath+6','Pet: Damage taken -4%',}},
    neck="Lancer's Torque", waist="Glassblower's Belt", left_ear="Ethereal Earring", right_ear="Lancer's Earring",
    left_ring="Meridian Ring", right_ring="Eihwaz Ring", back={ name="Brigantia's Mantle", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Accuracy+20 Attack+20',}},}

	sets.pet["Smiting Breath"]={head={ name="Ptero. Armet +3", augments={'Enhances "Deep Breathing" effect',}},
    body={ name="Acro Surcoat", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: Breath+6','Pet: Damage taken -3%',}},
    hands={ name="Acro Gauntlets", augments={'Pet: Mag. Acc.+22','Pet: Breath+7','CHR+8',}},
    legs={ name="Acro Breeches", augments={'Pet: Mag. Acc.+22','Pet: Breath+6','MND+8',}},
    feet={ name="Acro Leggings", augments={'Pet: Mag. Acc.+12','Pet: Breath+6','Pet: Damage taken -4%',}},
    neck="Lancer's Torque", waist="Glassblower's Belt", left_ear="Enmerkar Earring", right_ear="Dragoon's Earring",
    left_ring="Meridian Ring", right_ring="Eihwaz Ring", back={ name="Brigantia's Mantle", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Accuracy+20 Attack+20',}},}

	sets.breath.precast={ammo="Egoist's Tathlum", head="Vishap Armet +3", body={ name="Emicho Haubert", augments={'Pet: HP+100','Pet: INT+15','Pet: "Regen"+2',}}, hands="Despair Fin. Gaunt.", legs="Vishap Brais +3",
	feet={ name="Ptero. Greaves +3", augments={'Enhances "Empathy" effect',}}, neck="Chanoix's Gorget",
	waist="Glassblower's Belt", left_ear="Anastasi Earring", right_ear="Lancer's Earring", left_ring="Moonlight Ring",
	right_ring="Moonlight Ring", back="Moonbeam Cape",}
--PETCMD sets

end

function precast(spell)
	if spell.prefix=="/jobability" then
		if jumps:contains(spell.english) then
			if weaponry=="Trishula" then
				if acc=="lowacc" then
					equip(sets.Trishula.lowacc[spell.english])
				elseif acc=="medacc" then
					equip(sets.Trishula.medacc[spell.english])
				elseif acc=="highacc" then
					equip(sets.Trishula.highacc[spell.english])
				elseif acc=="maxacc" then
					equip(sets.Trishula.maxacc[spell.english])
				end
			elseif weaponry=="Gungnir" then
				if acc=="lowacc" then
					equip(sets.Gungnir.lowacc[spell.english])
				elseif acc=="medacc" then
					equip(sets.Gungnir.medacc[spell.english])
				elseif acc=="highacc" then
					equip(sets.Gungnir.highacc[spell.english])
				elseif acc=="maxacc" then
					equip(sets.Gungnir.maxacc[spell.english])
				end
			elseif weaponry=="Quint" then
				if acc=="lowacc" then
					equip(sets.Quint.lowacc[spell.english])
				elseif acc=="medacc" then
					equip(sets.Quint.medacc[spell.english])
				elseif acc=="highacc" then
					equip(sets.Quint.highacc[spell.english])
				elseif acc=="maxacc" then
					equip(sets.Quint.maxacc[spell.english])
				end
			elseif weaponry=="Ryunohige" then
				if acc=="lowacc" then
					equip(sets.Ryunohige.lowacc[spell.english])
				elseif acc=="medacc" then
					equip(sets.Ryunohige.medacc[spell.english])
				elseif acc=="highacc" then
					equip(sets.Ryunohige.highacc[spell.english])
				elseif acc=="maxacc" then
					equip(sets.Ryunohige.maxacc[spell.english])
				end
			end
		else
			equip(sets.ja[spell.english])
		end
	else
		equip(sets.ja[spell.english])
	end

	if spell.prefix=="/pet" then
		equip(sets.pet[spell.english])
	end

	if spell.prefix:contains("/magic","/ma","/ninjutsu","/song","/nin") then
		equip(sets.precast.fc)
	end

	if spell.prefix=="/weaponskill" then
		if WSMode=="dmg" then
			equip(sets.ws.dmg[spell.english])
		elseif WSMode=="acc" then
			equip(sets.ws.acc[spell.english])
		end
	end

	if spell.type == 'WeaponSkill' then
		if is_sc_element_today(spell) and spell.english~="Stardiver" then
			equip(sets.wsdaybonus)
		end
	end
end

function midcast(spell)
	if spell.prefix=="/magic" then
		equip(sets.breath.precast)
	end
end

function aftercast(spell)
	if pet_midaction==true then
		add_to_chat(206, 'Wyvern Action Check')
	else
		status_change(player.status)
	end
end

function status_change(new,old)
	if new=="Engaged" then
		if weaponry=="Trishula" then
			if TPType=="dd" then
				equip(sets.Trishula[acc])
			elseif TPType=="hybrid" then
				equip(sets.Trishula.hybrid[acc])
			elseif TPType=="dt" then
				equip(sets.Trishula.dt)
			end
		elseif weaponry=="Gungnir" then
			if TPType=="dd" then
				equip(sets.Gungnir[acc])
			elseif TPType=="hybrid" then
				equip(sets.Gungnir.hybrid[acc])
			elseif TPType=="dt" then
				equip(sets.Gungnir.dt)
			end
		elseif weaponry=="Quint" then
			if TPType=="dd" then
				equip(sets.Quint[acc])
			elseif TPType=="hybrid" then
				equip(sets.Quint.hybrid[acc])
			elseif TPType=="dt" then
				equip(sets.Quint.dt)
			end
		elseif weaponry=="Ryunohige" then
			if TPType=="dd" then
				equip(sets.Ryunohige[acc])
			elseif TPType=="hybrid" then
				equip(sets.Ryunohige.hybrid[acc])
			elseif TPType=="dt" then
				equip(sets.Ryunohige.dt)
			end
		end
	elseif new~="Engaged" then
		if weaponry=="Trishula" then
			equip(sets.Trishula.idle[IdleType])
		elseif weaponry=="Gungnir" then
			equip(sets.Gungnir.idle[IdleType])
		elseif weaponry=="Quint" then
			equip(sets.Quint.idle[IdleType])
		elseif weaponry=="Ryunohige" then
			equip(sets.Ryunohige.idle[IdleType])
		end
	end
	send_command('pf')
end

function pet_precast(spell)
	if string.find(spell.english, 'Breath') then
		equip(sets.breath.midcast)
	end
end

function pet_midcast(spell)
	if spell.english:contains('Restoring Breath','Healing Breath') and not spell.interrupted then
		equip(sets.breath.midcast)
	end
	if spell.english:contains('Flame Breath','Gust Breath','Lightning Breath','Frost Breath','Sand Breath') and not spell.interrupted then
		equip(sets.breath.elemental)
	end
end

function pet_aftercast(spell)
	status_change(player.status)
end

function self_command(command)
	if command=="dd" then
		TPType="dd"
		status_change(player.status)
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/'..TPType..'mode.png')
	end

	if command=="hybrid" then
		TPType="hybrid"
		status_change(player.status)
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/'..TPType..'mode.png')
	end

	if command=="dt" then
		TPType="dt"
		status_change(player.status)
		windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/'..TPType..'mode.png')
	end

	if command=="toggle_acc" then
		if acc=="lowacc" then
			acc="medacc"
		elseif acc=="medacc" then
			acc="highacc"
		elseif acc=="highacc" then
			acc="maxacc"
		elseif acc=="maxacc" then
			acc="lowacc"
		end
		status_change(player.status)
		windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/'..acc..'.png')
	end

	if command=="standard_idle" then
		IdleType="standard"
		status_change(player.status)
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/'..IdleType..'idle.png')
	end

	if command=="dtkite_idle" then
		IdleType="dtkite"
		status_change(player.status)
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/'..IdleType..'idle.png')
	end

	if command=="dt_idle" then
		IdleType="dt"
		status_change(player.status)
		windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/'..IdleType..'idle.png')
	end

	if command=="Trishula" then
		weaponry="Trishula"
		status_change(player.status)
		windower.prim.set_texture('WEAPON_TYPE',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
	end

	if command=="Gungnir" then
		weaponry="Gungnir"
		status_change(player.status)
		windower.prim.set_texture('WEAPON_TYPE',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
	end

	if command=="Quint" then
		weaponry="Quint"
		status_change(player.status)
		windower.prim.set_texture('WEAPON_TYPE',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
	end

	if command=="Ryunohige" then
		weaponry="Ryunohige"
		status_change(player.status)
		windower.prim.set_texture('WEAPON_TYPE',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')
	end

	if command=='primfix' then
		windower.prim.set_size('TP_SET',200,30)
		windower.prim.set_size('ACC_SET',200,30)
		windower.prim.set_size('IDLE_SET',200,30)
		windower.prim.set_size('WS_SET',200,30)
		windower.prim.set_size('WEAPON_TYPE',200,50)
	end
end

function gui()
	windower.prim.create('TP_SET')
	windower.prim.create('ACC_SET')
	windower.prim.create('IDLE_SET')
	windower.prim.create('WS_SET')
	windower.prim.create('WEAPON_TYPE')

	windower.prim.set_texture('TP_SET',''..windower.windower_path..'addons/gearswap/data/images/'..TPType..'mode.png')
	windower.prim.set_texture('ACC_SET',''..windower.windower_path..'addons/gearswap/data/images/'..acc..'.png')
	windower.prim.set_texture('IDLE_SET',''..windower.windower_path..'addons/gearswap/data/images/'..IdleType..'idle.png')
	windower.prim.set_texture('WS_SET',''..windower.windower_path..'addons/gearswap/data/images/'..WSMode..'.png')
	windower.prim.set_texture('WEAPON_TYPE',''..windower.windower_path..'addons/gearswap/data/images/'..weaponry..'.png')

	windower.prim.set_size('TP_SET',200,30)
	windower.prim.set_size('ACC_SET',200,30)
	windower.prim.set_size('IDLE_SET',200,30)
	windower.prim.set_size('WS_SET',200,30)
	windower.prim.set_size('WEAPON_TYPE',200,50)

	windower.prim.set_position('TP_SET',0.65*windower.get_windower_settings().ui_x_res,50)
	windower.prim.set_position('ACC_SET',0.65*windower.get_windower_settings().ui_x_res,90)
	windower.prim.set_position('IDLE_SET',0.65*windower.get_windower_settings().ui_x_res,130)
	windower.prim.set_position('WS_SET',0.65*windower.get_windower_settings().ui_x_res,170)
	windower.prim.set_position('WEAPON_TYPE',0.65*windower.get_windower_settings().ui_x_res,210)

	windower.prim.set_color('TP_SET', 100, 255, 255, 255)
	windower.prim.set_color('ACC_SET', 100, 255, 255, 255)
	windower.prim.set_color('IDLE_SET', 100, 255, 255, 255)
	windower.prim.set_color('WS_SET', 100, 255, 255, 255)
	windower.prim.set_color('WEAPON_TYPE',100,255,255,255)

	windower.prim.set_visibility('TP_SET',true)
	windower.prim.set_visibility('ACC_SET',true)
	windower.prim.set_visibility('IDLE_SET',true)
	windower.prim.set_visibility('WS_SET',true)
	windower.prim.set_visibility('WEAPON_TYPE',true)
end

function binds()
	send_command('alias pf gs c primfix')
	send_command('bind @f1 gs c dd')
	send_command('bind @f2 gs c hybrid')
	send_command('bind @f3 gs c dt')
	send_command('bind @f5 gs c Trishula')
	send_command('bind @f6 gs c Gungnir')
	send_command('bind @f7 gs c Ryunohige')
	send_command('bind @f8 gs c Quint')
	send_command('bind #f1 gs c toggle_acc')
	send_command('bind #f4 gs c standard_idle')
	send_command('bind #f5 gs c dtkite_idle')
	send_command('bind #f6 gs c dt_idle')
	send_command('bind #a input /ja "Jump" <t>')
	send_command('bind #w highjump')
end
