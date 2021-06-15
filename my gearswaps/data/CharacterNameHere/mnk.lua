function get_sets()
  mote_include_version = 2
   -- Load and initialize the include file.
  include('Mote-Include.lua')
end

function user_setup()
  state.OffenseMode:options('Impetus')
  state.HybridMode:options('dd','acc','pdt')
end

--[[function job_setup()
    state.Buff.Footwork = buffactive.Footwork or false
    state.Buff.Impetus = buffactive.Impetus or false

    state.FootworkWS = M(false, 'Footwork on WS')

    info.impetus_hit_count = 0
    windower.raw_register_event('action', on_action_for_impetus)
end]]

function init_gear_sets()
  lelujob="brd"
	itchyjob="geo"

	sets.lelujob=T{}
	sets.itchyjob=T{}

  include('Organizer-lib.lua')
  include('lelu'..lelujob..'gkeys.lua')
	include('itchy'..itchyjob..'gkeys.lua')

  send_command('input /macro book 9;input /macro set 1')

  sets.engaged.dd={
    main={ name="Godhands", augments={'Path: A',}},
    ammo="Aurgelmir Orb +1",
    head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body="Ken. Samue +1",
    hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs={ name="Hes. Hose +3", augments={'Enhances "Hundred Fists" effect',}},
    feet="Anch. Gaiters +3",
    neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
    waist="Moonbow Belt",
    left_ear="Sherida Earring",
    right_ear="Telos Earring",
    left_ring="Gere Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
  }

  sets.engaged.acc={
      main={ name="Godhands", augments={'Path: A',}},
      ammo="Aurgelmir Orb +1",
      head="Ken. Jinpachi +1",
      body="Ken. Samue +1",
      hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
      legs="Ken. Hakama +1",
      feet="Ken. Sune-Ate +1",
      neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
      waist="Moonbow Belt",
      left_ear="Sherida Earring",
      right_ear="Telos Earring",
      left_ring="Gere Ring",
      right_ring="Niqmaddu Ring",
      back={ name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
    }

  sets.engaged.dd.Impetus=set_combine(sets.engaged.dd,{
    body="Bhikku Cyclas +1 ",
  }
  )

  sets.engaged.pdt={
      ammo="Iron Gobbet",
      head="Nyame Helm",
      body="Hes. Cyclas +3",
      hands="Nyame Gauntlets",
      legs="Mummu Kecks +2",
      feet="Nyame Sollerets",
      neck="Loricate Torque +1",
      waist="Moonbow Belt",
      left_ear="Ethereal Earring",
      right_ear="Genmei Earring",
      left_ring="Vocane Ring +1",
      right_ring="Defending Ring",
      back="Agema Cape",
  }

  sets.precast.JA['Boost']={
    hands="Anchor. Gloves +2",
  }
	sets.precast.JA['Chakra']={
    ammo="Aurgelmir Orb +1",
    head="Genmei Kabuto",
    body="Anch. Cyclas +2",
    hands={ name="Hes. Gloves +3", augments={'Enhances "Invigorate" effect',}},
    legs="Hiza. Hizayoroi +2",
    feet="Hiza. Sune-Ate +2",
    neck="Unmoving Collar +1",
    waist="Caudata Belt",
    left_ear="Handler's Earring +1",
    right_ear="Odnowa Earring +1",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Segomo's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},
  }
  sets.precast.JA['Focus']={head="Anch. Crown +2",}
  sets.precast.JA['Dodge']={feet="Anch. Gaiters +3",}
  sets.precast.JA['Mantra']={feet="Hes. Gaiters +1",}
  sets.precast.JA['Hundred Fists']={legs={ name="Hes. Hose +3", augments={'Enhances "Hundred Fists" effect',}},}
  sets.precast.JA['Counterstance']={feet="Hes. Gaiters +1",}
  sets.precast.JA['Formless Strikes']={body="Hes. Cyclas +3",}
  sets.precast.JA['Impetus']={Body="Bhikku Cyclas +1",}

  sets.precast.WS["Shijin Spiral"]={
    main={ name="Godhands", augments={'Path: A',}},
    ammo="Aurgelmir Orb +1",
    head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
    feet="Hiza. Sune-Ate +2",
    neck="Fotia Gorget",
    waist="Moonbow Belt",
    left_ear="Sherida Earring",
    right_ear="Mache Earring +1",
    left_ring="Ilabrat Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
  }

  sets.precast.WS["Spinning Attack"]={
    ammo="Knobkierrie",
    head="Hes. Crown +3",
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands="Anchor. Gloves +2",
    legs="Hiza. Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Pet: "Mag.Atk.Bns."+28','Pet: STR+4','Weapon skill damage +10%','Mag. Acc.+13 "Mag.Atk.Bns."+13',}},
    neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
    waist="Moonbow Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Gere Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Segomo's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},
  }

  sets.precast.WS["Raging Fists"]={
    ammo="Knobkierrie",
    head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs="Ken. Hakama +1",
    feet="Ken. Sune-Ate +1",
    neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
    waist="Moonbow Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Gere Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
  }

  sets.precast.WS["Victory Smite"]={
    ammo="Knobkierrie",
    head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Ryuo Tekko", augments={'DEX+10','Accuracy+20','"Dbl.Atk."+3',}},
    legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
    feet="Hiza. Sune-Ate +2",
    neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
    waist="Moonbow Belt",
    left_ear="Sherida Earring",
    right_ear="Moonshade Earring",
    left_ring="Gere Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Crit.hit rate+10',}},
  }

  sets.precast.WS["Howling Fist"]={
    ammo="Knobkierrie",
    head={ name="Hes. Crown +3", augments={'Enhances "Penance" effect',}},
    body="Ken. Samue +1",
    hands={ name="Herculean Gloves", augments={'Attack+15','"Triple Atk."+3','STR+10','Accuracy+15',}},
    legs="Ken. Hakama +1",
    feet={ name="Herculean Boots", augments={'Accuracy+16','"Triple Atk."+4','AGI+2','Attack+9',}},
    neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
    waist="Moonbow Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Gere Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Segomo's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},
  }

  sets.precast.WS["Victory Smite"].Impetus=set_combine(
    sets.precast.WS["Victory Smite"],{
        body="Bhikku Cyclas +1",
        back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
    }
  )

  sets.idle=set_combine(sets.engaged.pdt,{
      feet="Hermes' Sandals",
  }
  )
end
