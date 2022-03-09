att.PrintName = "Mini-14 .300 BLK Receiver"
att.AbbrevName = ".300 BLK Receiver"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 815 .300 BLK Receiver"
end

att.Icon = Material("entities/att/acwatt_ud_mini14_receiver.png", "smooth mips")
att.Description = "An offical receiver variant made to chamber the .300 Blackout cartridge. While identical to 5.56x45mm in diameter, this cartridge carries a much larger projectile, which improves stopping power at the cost of ballistic performance."
att.Desc_Pros = {
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

att.Override_PhysBulletMuzzleVelocity = 642

att.Override_ShellModel = "models/weapons/arccw/uc_shells/300blk.mdl"
att.Override_ShellScale = 1

att.Override_Trivia_Calibre = ".300 Blackout"

att.Hook_GetShootSound = function(wep, fsound)
    if fsound == wep.FirstShootSound then return path .. "fire_first.ogg" end
    if fsound == wep.ShootSound then return {path .. "fire_auto_1.ogg", path .. "fire_auto_2.ogg", path .. "fire_auto_3.ogg"} end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then return path .. "fire_dist.ogg" end
end

att.GivesFlags = {"cal_subsonic"}
att.ExcludeFlags = {"powder_subsonic"}