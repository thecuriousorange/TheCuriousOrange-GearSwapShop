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
	sets.wsdmg={}
	sets.wsacc={}
	sets.idle={}
--basesets

--precast sets
	sets.preshot={}
	
	sets.precast.magic={}
	
	sets.precast.ninjutsu={}
--precast sets

--ja sets
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
	
	sets.ja[""]={}
--ja sets

--ws sets
	sets.wsdmg[""]={}
	
	sets.wsacc[""]={}
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