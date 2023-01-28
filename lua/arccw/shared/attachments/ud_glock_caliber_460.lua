att.PrintName = "Glock .460 Rowland Conversion"
att.AbbrevName = ".460 Rowland"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "GEN3 .460 Conversion"
end

att.SortOrder = 70
att.Icon = Material("entities/att/acwatt_uc_cal_460.png", "smooth mips")
att.Description = "The .460 Rowland is a proprietary cartridge which attains true .44 Magnum level velocities when fired from a number of popular semi-automatic pistols, revolvers, and rifles."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = ".460 Rowland"
att.Override_Trivia_Manufacturer = "460 Rowland®"
att.AddSuffix = " .460 Rowland"

att.Mult_Damage = 1.5
att.Mult_AccuracyMOA = 0.75
att.Mult_Penetration = 1.66666666667
att.Mult_Range = 1.25
att.Mult_Precision = 1.25
att.Mult_Recoil = 1.28
att.Mult_MalfunctionMean = 1.05
att.Override_PhysBulletMuzzleVelocity = 480

att.Mult_ClipSize = 0.76

att.Mult_RPM = 0.7619


att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp_45.ogg" -- Placeholder
    else
        return "weapons/arccw_ud/glock/fire_45.ogg" -- Not Placeholder
    end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return { "weapons/arccw_ud/glock/fire_dist_45.ogg" }
    end
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