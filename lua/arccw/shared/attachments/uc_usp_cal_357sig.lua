att.PrintName = "USP Compact .357 SIG Conversion"
att.AbbrevName = ".357 SIG"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "P93-357 .357 SIG Conversion"
end

att.SortOrder = 8
att.Icon = Material("entities/att/acwatt_uc_cal_357sig.png", "smooth mips")
att.Description = "A law-enforcement caliber well-known for its accuracy. Only available for the USP Compact as no full size pistols were ever manufactured by H&K."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_usp_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = ".357 SIG"

att.Mult_Damage = 0.73333333333
att.Mult_AccuracyMOA = 0.5
att.Mult_DamageMin = 20 / 15
att.Mult_Penetration = 8 / 9
att.Mult_RangeMin = 15 / 10
att.Mult_RPM = 1.10
att.Mult_ReloadTime = 0.90

att.Mult_Recoil = 1.10
att.Mult_RecoilSide = 0.75

att.Mult_ClipSize = 0.83333333333 --10 round magazine
att.Override_ShellModel = "models/weapons/arccw/uc_shells/357sig.mdl"
att.Override_ShellScale = 1

att.Override_PhysBulletMuzzleVelocity = 410
att.Override_PhysTracerProfile = 0
att.Override_PhysTracerProfile_Priority = -1
att.Override_TracerNum = 1
att.Override_TracerNum_Priority = -1

att.Hook_GetShootSound = function(wep, sound) -- Temporary
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp_40.ogg"
    else
        return "weapons/arccw_ud/glock/fire_40.ogg"
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSoundSilenced then
        return "arccw_uc/common/sup_tail.ogg"
    else
        return { "weapons/arccw_ud/glock/fire_dist_40.ogg" }
    end
end
