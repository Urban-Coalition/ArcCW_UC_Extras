att.PrintName = "Glock .50 GI Conversion"
att.AbbrevName = ".50 GI"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "GEN3 .50 GI Custom Conversion"
end

att.SortOrder = 120
att.Icon = Material("entities/att/acwatt_uc_cal_50gi.png", "smooth mips")
att.Description = "Custom slide and ammunition provided by esteemed manufacturer, Guncrafter Industries.\nBetter minimum range, accuracy and overall damage compared to .45 ACP, but suffers from abysmal magazine capacity and most unreliable of all calibers."
att.Desc_Pros = {
}
att.Desc_Cons = { "uc.jam",}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_caliber"

att.AutoStats = true

att.Override_ShellScale = 1.30
att.Override_Trivia_Calibre = ".50 GI"
att.Override_Trivia_Manufacturer = "Guncrafter Industries"
att.AddSuffix = " .50 GI"

att.Mult_Damage = 2
att.Mult_DamageMin = 1.5
att.Mult_Penetration = 1.15
att.Mult_AccuracyMOA = 1.10
att.Override_PhysBulletMuzzleVelocity = 370

att.Mult_RangeMin = 0.7
att.Mult_Recoil = 3.10
att.Mult_RecoilSide = 1.35
att.Mult_RPM = 0.90
att.Mult_MalfunctionMean = 0.80
att.Mult_ClipSize = 0.47
att.Mult_ReloadTime = 1.05
att.Mult_SightTime = 1.05

att.ExcludeFlags = {"powder_subsonic"}

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp_50.ogg" -- Placeholder
    else
        return "weapons/arccw_ud/glock/fire_50.ogg" -- Not Placeholder
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then
        return "weapons/arccw_ud/glock/fire_dist_50.ogg" end
end

local path = "/arccw_uc/common/"
att.Hook_GetDistantShootSoundIndoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return {
            path .. "fire-dist-int-pistol-heavy-01.ogg",
            path .. "fire-dist-int-pistol-heavy-02.ogg",
            path .. "fire-dist-int-pistol-heavy-03.ogg",
            path .. "fire-dist-int-pistol-heavy-04.ogg",
            path .. "fire-dist-int-pistol-heavy-05.ogg",
            path .. "fire-dist-int-pistol-heavy-06.ogg"
        }
    end
end