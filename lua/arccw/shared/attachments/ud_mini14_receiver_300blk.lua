att.PrintName = "Mini-14 .300 BLK Receiver"
att.AbbrevName = ".300 BLK Receiver"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 815 .300 BLK Receiver"
end

att.SortOrder = 40
att.Icon = Material("entities/att/acwatt_ud_mini14_receiver.png", "smooth mips")
att.Description = "An offical receiver variant made to chamber the .300 Blackout cartridge. While identical to 5.56x45mm in diameter, this cartridge carries a much larger projectile, which improves stopping power at the cost of ballistic performance."
att.Desc_Pros = { "No distant firing sound when suppressed"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_receiver"

att.AutoStats = true

att.Mult_AccuracyMOA = 1.5
att.Mult_RPM = 850 / 900
att.Mult_HipDispersion = 1.2
att.Mult_ShootSpeedMult = 0.8

att.Mult_Damage = 1.118
att.Mult_DamageMin = 0.6
att.Mult_ShootVol = 105 / 120

att.Mult_HeatDissipation = 1.5

att.Override_PhysBulletMuzzleVelocity = 310

att.Override_ShellModel = "models/weapons/arccw/uc_shells/300blk.mdl"
att.Override_ShellScale = 1

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/m16/fire_auto_sup_2.ogg", "weapons/arccw_ud/m16/fire_auto_sup_3.ogg", "weapons/arccw_ud/m16/fire_auto_sup_4.ogg" -- Placeholder
    else
        return "weapons/arccw_ud/m16/fire_auto_1.ogg", "weapons/arccw_ud/m16/fire_auto2.ogg", "weapons/arccw_ud/m16/fire_auto3.ogg", "weapons/arccw_ud/m16/fire_auto4.ogg"  -- Placeholder
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSoundSilenced then
        return false
    elseif distancesound == wep.DistantShootSound then
        return "weapons/arccw_ud/m16/fire_dist.ogg"
    end
end

att.Override_Trivia_Calibre = ".300 Blackout"


att.GivesFlags = {"cal_subsonic", "ud_mini14_receiver_300blk"}
att.ExcludeFlags = {"powder_subsonic"}
