att.PrintName = "AMCAR 6.8 SPC Receiver"
att.AbbrevName = "6.8 SPC Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AR-15 6.8 SPC Receiver"
end

att.Description = "Automatic receiver modified to take the 6.8 Remington Special Purpose cartridge. It has increased overall stopping power, better performance at range and only a negligible recoil increase, but the more powerful round requires a modified gas piston to maintain reliability."

att.Icon = Material("entities/att/acwatt_ud_m16_receiver_auto.png", "smooth mips")
att.Desc_Pros = {
    "uc.auto",
    --"ud.flattop"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"
--att.InvAtt = "ud_m16_receiver_auto"

att.AutoStats = true
att.SortOrder = 4

att.Mult_AccuracyMOA = 0.9
att.Mult_RPM = 100 / 150
att.Mult_HipDispersion = 1
att.Mult_ShootSpeedMult = 0.8
att.Mult_Recoil = 1.2

att.Mult_Damage = 1.17
att.Mult_DamageMin = 1.35
att.Mult_Penetration = 1.1

att.Mult_HeatDissipation = 0.75

att.Override_PhysBulletMuzzleVelocity = 310

att.Override_ShellModel = "models/weapons/arccw/uc_shells/300blk.mdl"
att.Override_ShellScale = 1

att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

att.GivesFlags = {"m16_auto"}
att.ExcludeFlags = {"m16_noauto"}
-- att.ActivateElements = {"ud_m16_upper_flat"}

att.Override_Trivia_Calibre = "6.8 Remington Special Purpose"

local path = "weapons/arccw_ud/m16/"

att.Hook_GetShootSound = function(wep, fsound)
    if fsound == wep.FirstShootSound then return path .. "fire_first.ogg" end
    if fsound == wep.ShootSound then return {path .. "fire_auto_1.ogg", path .. "fire_auto_2.ogg", path .. "fire_auto_3.ogg"} end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then return path .. "fire_dist.ogg" end
end


