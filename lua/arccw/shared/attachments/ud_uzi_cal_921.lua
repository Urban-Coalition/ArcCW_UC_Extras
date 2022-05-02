att.PrintName = "Uzi 9x21 IMI Conversion"
att.AbbrevName = "9x21 IMI"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "IAL-9 9x21 IMI Conversion"
end
att.Slot = "ud_uzi_caliber"

att.Icon = Material("entities/att/acwatt_ud_glock_caliber.png", "smooth mips")
att.Description = "Conversion to a round designed for European markets where military service cartridges are banned from civilian use. It generates slightly more recoil but has a higher velocity."

att.Override_Trivia_Calibre = "9x21 IMI"

att.AutoStats = true

att.Mult_Range = 1.1
att.Mult_RangeMin = 1.1
att.Mult_Recoil = 1.1

att.Override_ShellModel = "models/weapons/arccw/uc_shells/357sig.mdl"
att.Override_ShellScale = 1

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp_380.ogg"
    else
        return "weapons/arccw_ud/glock/fire_380.ogg"
    end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return { "weapons/arccw_ud/glock/fire_dist_380.ogg" }
    end
end

