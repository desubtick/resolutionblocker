Citizen.CreateThread(function()
    local scaleform = RequestScaleformMovie("mp_big_message_freemode")

    while not HasScaleformMovieLoaded(scaleform) do
        Citizen.Wait(0)
    end

    BeginScaleformMovieMethod(scaleform, "SHOW_SHARD_WASTED_MP_MESSAGE")
    PushScaleformMovieMethodParameterString("Vaihda resoluutiosi normaaliksi.")
    EndScaleformMovieMethod()

    while true do
        local wait = 2500
        local roolipelaaja = GetIsWidescreen(PlayerPedId())
        if not roolipelaaja then
            DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255)
            wait = 7
        end
        Citizen.Wait(wait)
    end
end)