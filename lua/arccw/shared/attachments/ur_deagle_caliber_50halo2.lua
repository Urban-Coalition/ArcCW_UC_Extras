att.PrintName = "Desert Eagle .50 Duo Conversion"
att.AbbrevName = ".50 Duo"
att.Icon = Material("entities/att/acwatt_ur_deagle_bullets_50mc.png","smooth mips")
att.Description = "In Bungie's quest to ruin everything that made Halo: Combat Evolved so great they made this piece of shit. Have fun trying to kill anything with this."
att.Desc_Pros = {
}
att.Desc_Cons = { "uce.deagle.cocknballs"
}
att.Desc_Neutrals = { "uce.wip", "uce.uno"
}

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Predator .50 Starter Conversion"
end

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return {"weapons/arccw_ur/deagle/fire_halo2_supp_1.ogg", "weapons/arccw_ur/deagle/fire_halo2_supp_2.ogg", "weapons/arccw_ur/deagle/fire_halo2_supp_3.ogg", "weapons/arccw_ur/deagle/fire_halo2_supp_4.ogg"} -- Not Placeholder
    else
        return {"weapons/arccw_ur/deagle/fire_halo2_1.ogg", "weapons/arccw_ur/deagle/fire_halo2_2.ogg", "weapons/arccw_ur/deagle/fire_halo2_3.ogg", "weapons/arccw_ur/deagle/fire_halo2_4.ogg"} -- Not Placeholder
    end
end

--[[att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then
        return "weapons/arccw_ur/deagle/fire_halo_dist.ogg" end
end]]

att.AutoStats = true
att.Slot = "ur_deagle_caliber"

att.Mult_ClipSize = 1.72
att.Mult_Recoil = 0
att.Mult_ShootSpeedMult = 2
att.Mult_RPM = 5
att.Mult_ShootVol = 0.85
att.Mult_Sway = 0
att.Add_BarrelLength = -5
att.Mult_SpeedMult = 1.5
att.Mult_SightedSpeedMult = 1.5
att.Mult_Range = 5
att.Mult_MalfunctionMean = 500

att.Mult_AccuracyMOA = 2.5
att.Mult_Damage = 0.25

att.Mult_PhysBulletMuzzleVelocity = 5
att.Override_Trivia_Calibre = att.AbbrevName -- E F F I C I E N C Y
att.Override_ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
att.Override_ShellScale = 0.95

att.Override_Trivia_Manufacturer = "BUNGIE™"
att.Override_Trivia_Year = 2004
att.Override_Trivia_Country = "USA"