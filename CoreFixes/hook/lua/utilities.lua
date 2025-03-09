---  /lua/utilities.lua
---  Summary  :  Utility functions for scripts.

function GetEnemyUnitsInSphereForArmy(army, position, radius)

	local UnitsinRec = GetUnitsInRect( Rect(position[1] - radius, position[3] - radius, position[1] + radius, position[3] + radius) )
	
	--Check for empty rectangle
	if not UnitsinRec then
		return false
	end
	
	local GetArmy = GetArmy
	local GetPosition = GetPosition
    local VDist2Sq = VDist2Sq
	
	local RadEntities = {}
	local counter = 0
	local checkrange = radius * radius
    local pos
	
    for _, v in UnitsinRec do
    
		pos = GetPosition(v)
		
		if (army != v.Sync.army) and ( VDist2Sq(position[1],position[3], pos[1],pos[3] ) <= checkrange) then
        
			RadEntities[counter+1] = v
			counter = counter + 1
            
		end
        
	end
    
	if counter > 0 then 
		return RadEntities
	end
    
	return false
end

