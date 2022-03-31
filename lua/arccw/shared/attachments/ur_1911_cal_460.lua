att.PrintName = "M1911 .460 Rowland Conversion"
att.AbbrevName = ".460 Rowland"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AMAS-R .460 Conversion"
end

att.SortOrder = 70
att.Icon = Material("entities/att/acwatt_ud_glock_caliber.png", "smooth mips")
att.Description = "The .460 Rowland is a proprietary cartridge which attains true .44 Magnum level velocities when fired from a number of popular semi-automatic pistols, revolvers, and rifles."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ur_m1911_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = ".460 Rowland"

att.Mult_Damage = 1.05
att.Mult_Penetration = 1.05
att.Mult_Recoil = 1.05
att.Mult_RecoilSide = 1.05
att.Mult_AccuracyMOA = 0.85
att.Override_PhysBulletMuzzleVelocity = 385

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp_45.ogg" -- Placeholder
    else
        return "weapons/arccw_ur/1911/fire.ogg" -- Not Placeholder
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then
        return "weapons/arccw_ud/glock/fire_dist_45.ogg" end
end
