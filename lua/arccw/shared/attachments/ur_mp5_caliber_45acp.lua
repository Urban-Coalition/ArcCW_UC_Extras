att.PrintName = "MP5/45 .45 ACP Conversion"
att.AbbrevName = ".45 ACP Receiver"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "PK5/45 .45 ACP Conversion"
end

att.SortOrder = 80
att.Icon = Material("entities/att/acwatt_ur_mp5_caliber.png", "smooth mips")
att.Description = "Aftermarket conversion to a larger caliber. Close range stopping power is great, but the large round loses velocity quickly and has significantly higher recoil."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ur_mp5_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = ".45 ACP"

att.Mult_Damage = 1.5
att.Mult_DamageMin = 0.88
att.Mult_Penetration = 9 / 6

att.Mult_RangeMin = 0.5
att.Mult_Recoil = 1.5
att.Mult_RecoilSide = 1.5
att.Mult_MalfunctionMean = 0.6
att.Override_PhysBulletMuzzleVelocity = 320

att.Override_ClipSize = 25

att.Mult_RPM = 0.7619

--att.Mult_ClipSize = 0.9
att.Override_ShellScale = 1.1

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp_45.ogg" -- Placeholder
    else
        return "weapons/arccw_ud/glock/fire_45.ogg" -- Not Placeholder
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then
        return "weapons/arccw_ud/glock/fire_dist_45.ogg" end
end

att.GivesFlags = {"ur_mp5_cal_10mm"}
--att.ExcludeFlags = {"barrel_sd"}
att.ActivateElements = {"ur_mp5_mag_waffle"}
att.ExcludeFlags = {"powder_subsonic"}