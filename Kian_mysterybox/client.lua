RegisterNetEvent('Kian_mysterybox:startemote')
AddEventHandler('Kian_mysterybox:startemote', function()

    Wait(cfg.timer*1000)
    exports[cfg.progressbar]:startUI(cfg.timer*1000, "Åbner mysterybox...")

    TriggerServerEvent('Kian_mysterybox:open')
end)