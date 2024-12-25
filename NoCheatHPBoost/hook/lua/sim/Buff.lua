local oldApplyBuff = ApplyBuff

ApplyBuff = function(unit, buffName, instigator)
  if buffName:sub(1,8) != "CheatALL" then
    oldApplyBuff(unit, buffName, instigator)
  end
end
