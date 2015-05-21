function get_sets()
--variables
	TPSet="DD"
	TPType="lowacc"
	IdleType="regen"
	ShotType="damage"
	
	sets.TPSet= T{}
	sets.TPType= T{}
	sets.IdleType= T{}
	sets.ShotType= T{}
--variables

--basesets
	sets.precast={}
	sets.ja={}
	sets.tp={}
	sets.hybrid={}
	sets.wsdmg={}
	sets.wsacc={}
	sets.idle={}
	sets.midshot={}
--basesets

--precast sets
	sets.preshot={}
	
	sets.precast.magic={}
	
	sets.precast.ninjutsu={}
--precast sets

--ja sets
	sets.rolls={}
	
	sets.shots={}
	
	sets.ja["Corsair's Roll"]={}
	
	sets.ja["Ninja's Roll"]={}
	
	sets.ja["Hunter's Roll"]={}
	
	sets.ja["Chaos Roll"]={}
	
	sets.ja["Magus's Roll"]={}
	
	sets.ja["Healer's Roll"]={}
	
	sets.ja["Drachen Roll"]={}
	
	sets.ja["Choral Roll"]={}
	
	sets.ja["Monk's Roll"]={}
	
	sets.ja["Beast Roll"]={}
	
	sets.ja["Beast Roll"]={}
	
	sets.ja["Samurai Roll"]={}
	
	sets.ja["Evoker's Roll"]={}
	
	sets.ja["Rogue's Roll"]={}
	
	sets.ja["Warlock's Roll"]={}
	
	sets.ja["Fighter's Roll"]={}
	
	sets.ja["Puppet Roll"]={}
	
	sets.ja["Gallant's Roll"]={}
	
	sets.ja["Wizard's Roll"]={}
	
	sets.ja["Dancer's Roll"]={}
	
	sets.ja["Scholar's Roll"]={}
	
	sets.ja["Bolter's Roll"]={}
	
	sets.ja["Caster's Roll"]={}
	
	sets.ja["Courser's Roll"]={}
	
	sets.ja["Blitzer's Roll"]={}
	
	sets.ja["Tactician's Roll"]={}
	
	sets.ja["Allies' Roll"]={}
	
	sets.ja["Miser's Roll"]={}
	
	sets.ja["Companion's Roll"]={}
	
	sets.ja["Avenger's Roll"]={}
	
	sets.ja["Wild Card"]={}
	
	sets.ja["Double-Up"]={}
	
	sets.ja["Random Deal"]={}
	
	sets.ja["Snake Eye"]={}
	
	sets.ja["Fold"]={}
	
	sets.ja["Triple Shot"]={}
	
	sets.ja["Cutting Cards"]={}
	
	sets.ja["Light Shot"]={}
	
	sets.ja["Dark Shot"]={}
	
	sets.ja["Fire Shot"]={}
	
	sets.ja["Water Shot"]={}
	
	sets.ja["Thunder Shot"]={}
	
	sets.ja["Earth Shot"]={}
	
	sets.ja["Wind Shot"]={}
	
	sets.ja["Ice Shot"]={}
--ja sets

--ra sets
	sets.midshot.damage={}
	
	sets.midshot.accuracy={}
--ra sets

--ws sets
	--ranged ws
	sets.wsdmg["Hot Shot"]={}
	
	sets.wsacc["Hot Shot"]={}
	
	sets.wsdmg["Split Shot"]={}
	
	sets.wsacc["Split Shot"]={}
	
	sets.wsdmg["Sniper Shot"]={}
	
	sets.wsacc["Sniper Shot"]={}
	
	sets.wsdmg["Slug Shot"]={}
	
	sets.wsacc["Slug Shot"]={}
	
	sets.wsdmg["Detonator"]={}
	
	sets.wsacc["Detonator"]={}
	
	sets.wsdmg["Leaden Salute"]={}
	
	sets.wsacc["Leaden Salute"]={}
	
	sets.wsdmg["Numbing Shot"]={}
	
	sets.wsacc["Numbing Shot"]={}
	
	sets.wsdmg["Wildfire"]={}
	
	sets.wsacc["Wildfire"]={}
	
	sets.wsdmg["Last Stand"]={}
	
	sets.wsacc["Last Stand"]={}
	--ranged ws
	
	--sword ws
	sets.wsdmg["Fast Blade"]={}
	
	sets.wsacc["Fast Blade"]={}
	
	sets.wsdmg["Burning Blade"]={}
	
	sets.wsacc["Burning Blade"]={}
	
	sets.wsdmg["Flat Blade"]={}
	
	sets.wsacc["Flat Blade"]={}
	
	sets.wsdmg["Shining Blade"]={}
	
	sets.wsacc["Shining Blade"]={}
	
	sets.wsdmg["Circle Blade"]={}
	
	sets.wsacc["Circle Blade"]={}
	
	sets.wsdmg["Savage Blade"]={}
	
	sets.wsacc["Savage Blade"]={}
	
	sets.wsdmg["Requiescat"]={}
	
	sets.wsacc["Requiescat"]={}
	--sword ws
	
	--dagger ws
	sets.wsdmg["Wasp Sting"]={}
	
	sets.wsacc["Wasp Sting"]={}
	
	sets.wsdmg["Gust Slash"]={}
	
	sets.wsacc["Gust Slash"]={}
	
	sets.wsdmg["Shadow Stitch"]={}
	
	sets.wsacc["Shadow Stitch"]={}
	
	sets.wsdmg["Energy Steal"]={}
	
	sets.wsacc["Energy Steal"]={}
	
	sets.wsdmg["Evisceration"]={}
	
	sets.wsacc["Evisceration"]={}
	
	sets.wsdmg["Aeolian Edge"]={}
	
	sets.wsacc["Aeolian Edge"]={}
	
	sets.wsdmg["Exenterator"]={}
	
	sets.wsacc["Exenterator"]={}
	--dagger ws
--ws sets

--engaged sets
	sets.tp.lowacc={}
	
	sets.tp.medacc={}
	
	sets.tp.highacc={}
	
	sets.hybrid.lowacc={}
	
	sets.hybrid.medacc={}
	
	sets.hybrid.highacc={}
--engaged sets

--idle sets
	sets.idle.regen={}
	
	sets.idle.refresh={}
	
	sets.idle.pdt={}
	
	sets.idle.mdt={}
--idle sets
end

function precast(spell)
	if command.prefix=="/range" then
		equip(sets.preshot)
	end
	if command.prefix=="/magic" then
		equip(sets.precast.magic)
	end
	if command.prefix=="/ninjutsu" then
		equip(sets.precast.ninjutsu)
	end
	if command.prefix=="/jobability" then
		equip(sets.ja[spell.english])
	end
	if command.prefix=="/weaponskill" then
		if WSMode=="damage" then
			equip(sets.wsdmg[spell.english])
		elseif WSMode=="accuracy" then
			equip(sets.wsacc[spell.english])
		end
	end
end

function midcast(spell)
	if command.prefix=="/range" then
		equip(sets.midshot[ShotType])
	end
	if command.prefix=="/magic" then
		equip(sets.midcast.magic[spell.english])
	end
	if command.prefix=="/ninjutsu" then
		equip(sets.midcast.ninjutsu)
	end
end

function aftercast(spell)
	if player.status=="Engaged" then
		if TPSet=="DD" then
			equip(sets.tp["TPType"])
		elseif TPSet=="Hybrid" then
			equip(sets.hybrid["TPType"])
		elseif TPSet=="PDT" then
			equip(sets.idle.pdt)
		elseif TPSet=="MDT" then
			equip(sets.idle.mdt)
		end
	else
		equip(sets.idle[IdleType])
	end
end

function status_change(new,old)
	if new=="Engaged" then
		if TPSet=="DD" then
			equip(sets.tp["TPType"])
		elseif TPSet=="Hybrid" then
			equip(sets.tp["TPType"])
		elseif TPSet=="PDT" then
			equip(sets.idle.pdt)
		elseif TPSet=="MDT" then
			equip(sets.idle.mdt)
		end
	else
		equip(sets.idle[IdleType])
	end
end