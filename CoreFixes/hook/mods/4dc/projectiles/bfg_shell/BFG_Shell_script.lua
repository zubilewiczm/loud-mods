utilities.GetEnemyUnitsInSphere = function(proj, pos, radius)
  return utilities.GetEnemyUnitsInSphereForArmy(proj:GetArmy(), pos, radius)
end
