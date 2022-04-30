att.PrintName = "MP5/22 .22 LR Conversion"
att.AbbrevName = ".22 LR Receiver"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "PK5/22 .22 LR Conversion"
end

att.SortOrder = 80
att.Icon = Material("entities/att/acwatt_ur_mp5_caliber.png", "smooth mips")
att.Description = "Aftermarket conversion to a much smaller plinking caliber. Recoil is practically eliminated, along with damage."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ur_mp5_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = ".22 LR"

att.Mult_Damage = 0.4
att.Mult_DamageMin = 0.4
att.Mult_Penetration = 3 / 6

att.Mult_Recoil = 0.25
att.Mult_VisualRecoilMult = 0.25
att.Mult_RPM = 1.5
att.Mult_Penetration = 0.1
att.Mult_ShootSpeedMult = 1.2
att.Mult_Reliability = 1.5
att.Override_PhysBulletMuzzleVelocity = 370

att.Mult_ClipSize = 1.2

att.Override_ShellModel = "models/weapons/arccw/uc_shells/22lr.mdl"
att.Override_ShellScale = 1
att.Override_ShellSounds = ArcCW.TinyShellSoundsTable

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp_22.ogg" -- Not Placeholder
    else
        return "weapons/arccw_ud/glock/fire_22.ogg" -- Not Placeholder
    end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return { "weapons/arccw_ud/glock/fire_dist_22.ogg" }
    end
end

att.GivesFlags = {"ur_mp5_cal_10mm"}