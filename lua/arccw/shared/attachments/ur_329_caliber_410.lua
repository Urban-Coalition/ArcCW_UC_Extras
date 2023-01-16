att.PrintName = "Model 329PD .410 Bore Chambering"
att.AbbrevName = ".410 Bore"
att.Icon = Material("entities/att/uc_bullets/20g.png","smooth mips")
att.Description = "Custom cylinder dimensions meant for a niche Brazillian revolver pattern, chambered for .410 shotshells."

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Enforcement .410 Bore Chambering"
end
-- Todo: alt shoot sound

att.AutoStats = true
att.Desc_Pros = {
    "ur.deagle.410.1"
}
att.Desc_Cons = {
    "ur.deagle.410.2"
}
att.Slot = "ur_329_caliber"
att.SortOrder = -2

att.Override_Num = 4
att.Mult_Range = 0.5
att.Override_AccuracyMOA = 35
att.Override_AccuracyMOA_Priority = 0
att.Override_ClipSize = 5
att.Mult_Recoil = 0.75

att.Mult_Damage = 72 / 70
att.Mult_DamageMin = 20 / 17

att.Override_HullSize = 0.1
att.Override_BodyDamageMults = ArcCW.UC.BodyDamageMults_Shotgun
att.Override_Penetration = 1

--att.Override_Malfunction = true
--att.Mult_MalfunctionVariance = 1.5

att.Override_IsShotgun = true
att.Override_Ammo = "buckshot"
att.Override_ShellModel = "models/weapons/arccw/uc_shells/410bore.mdl"
att.Override_ShellScale = 1
att.Override_ShellSounds = ArcCW.ShotgunShellSoundsTable
att.Override_Trivia_Calibre = att.AbbrevName -- E F F I C I E N C Y

local slotinfo = {
    [6] = {"\"BUCK\" #000 Buckshot", "\"BUCK\" #000 Buckshot", Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")},
}
att.Hook_GetDefaultAttName = function(wep, slot)
    if slotinfo[slot] then
        return GetConVar("arccw_truenames"):GetBool() and slotinfo[slot][2] or slotinfo[slot][1]
    end
end
att.Hook_GetDefaultAttIcon = function(wep, slot)
    if slotinfo[slot] then
        return slotinfo[slot][3]
    end
end
att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ur/deagle/fire_supp_10.ogg" -- Placeholder
    else
        return {"weapons/arccw_ur/deagle/fire-410-01.ogg", "weapons/arccw_ur/deagle/fire-410-02.ogg", "weapons/arccw_ur/deagle/fire-410-03.ogg", "weapons/arccw_ur/deagle/fire-410-04.ogg", "weapons/arccw_ur/deagle/fire-410-05.ogg", "weapons/arccw_ur/deagle/fire-410-06.ogg"} -- Not Placeholder
    end
end
att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return {"weapons/arccw_ur/sw586/fire-dist-01.ogg", "weapons/arccw_ur/sw586/fire-dist-02.ogg", "weapons/arccw_ur/sw586/fire-dist-03.ogg", "weapons/arccw_ur/sw586/fire-dist-04.ogg", "weapons/arccw_ur/sw586/fire-dist-05.ogg", "weapons/arccw_ur/sw586/fire-dist-06.ogg"}
    end
end