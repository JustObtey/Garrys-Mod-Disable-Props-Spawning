hook.Add("PlayerSpawnProp", "RestrictSpawningProps", function(ply)
-- You can change "Staff" by any other job name, make sure it's the name and not the TEAM name
    if team.GetName(ply:Team()) == "Staff" then
        return true
    else
        return false
    end
end)
