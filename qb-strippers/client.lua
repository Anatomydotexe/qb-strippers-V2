local function spawnPed(hash, x, y, z, heading)
    local ped = CreatePed(1, hash, x, y, z, heading, false, true)
    FreezeEntityPosition(ped, true)
    SetEntityHeading(ped, heading)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    return ped
end

Citizen.CreateThread(function()
    -- Load each unique model once
    local modelHashes = {}
    local seen = {}
    for _, entry in ipairs(Config.Stripper) do
        if not seen[entry.model] then
            seen[entry.model] = true
            local hash = GetHashKey(entry.model)
            RequestModel(hash)
            while not HasModelLoaded(hash) do
                Citizen.Wait(10)
            end
            modelHashes[entry.model] = hash
        end
    end

    -- Spawn each stripper NPC
    for _, entry in ipairs(Config.Stripper) do
        local hash = modelHashes[entry.model]

        RequestAnimDict(entry.dict)
        while not HasAnimDictLoaded(entry.dict) do
            Citizen.Wait(100)
        end

        local scene = CreateSynchronizedScene(entry.x, entry.y, entry.z, vec3(0.0, 0.0, 0.0), 2)

        for _, animName in ipairs(entry.anims) do
            local ped = spawnPed(hash, entry.x, entry.y, entry.z, entry.heading)
            TaskSynchronizedScene(ped, scene, entry.dict, animName, 1.0, -4.0, 261, 0, 0)
        end

        SetSynchronizedSceneLooped(scene, 1)
    end

    -- Release model memory
    for _, hash in pairs(modelHashes) do
        SetModelAsNoLongerNeeded(hash)
    end
end)
