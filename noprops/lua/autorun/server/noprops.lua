-- Put the jobs who can spawn props there
NoProps_Jobs  = {
    ["Staff"] = true,
    ["Name Job"] = false
}

hook.Add("PlayerSpawnProp", "RestrictSpawningProps", function(ply)
-- You can change "Staff" by any other job name, make sure it's the name and not the TEAM name
    if NoProps_Jobs[team.GetName(ply:Team())] then
        return true
    else
        return false
    end
end)
