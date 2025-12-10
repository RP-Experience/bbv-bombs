Config = {}
Config.Debug = false

Config.Settings = {
	Framework = 'QB', -- QB/ESX
	Target = "OX", -- OX/QB
	WebHook = "", -- Discord webhook 
	Prop = "prop_explosive_c4_screen", -- prop model name
	ItemName = "c4_bomb",
	Beeps = true, -- if set to true the bomb will play beeping sound
	PoliceAlert = true,
	Dispatch = 'ps', -- ps / md / both / auto / custom (custom = edit AlertPolice() in client/main.lua)
}

Config.Dispatch = {
    -- Used when Config.Settings.Dispatch = 'md' / 'both' / 'auto'
    md = {
        jobs    = { 'police' }, -- ESX job names that should receive the alert
        blip    = 161,          -- GTA blip sprite id
        title   = 'Bomb Threat',
        message = 'Possible bomb reported.',
    },

    -- Used when Config.Settings.Dispatch = 'ps' / 'both' / 'auto'
    ps = {
        message      = 'Bomb Threat',
        dispatchCode = 'ICD-10 Bomb Threat',
        description  = 'Bomb Threat',
        radius       = 5,
        sprite       = 653,
        color        = 21,
        scale        = 1.0,
        length       = 100,
    }
}
