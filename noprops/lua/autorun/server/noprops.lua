-- Put the jobs who can spawn props there, you can replace "Name Job" with the actual name of your job
NoProps_Jobs  = {
    ["Citizen"] = true,
    ["Name Job"] = false -- WARNING LAST LINE SHOULD NOT HAVE A COMA
}

hook.Add("PlayerSpawnProp", "RestrictSpawningProps", function(ply)
    if NoProps_Jobs[team.GetName(ply:Team())] then
        return true
    else
        return false
    end
end)
