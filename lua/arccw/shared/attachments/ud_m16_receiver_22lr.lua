att.PrintName = "AMCAR-TR .22 LR Receiver"
att.AbbrevName = "Plinking Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AR-15 .22 LR Receiver"
end

att.Description = "A semi-automatic receiver chambered in .22 Long Rifle sold in civilian markets. Designed for target shooting, this receiver is more lightweight and controllable at the cost of overall stopping power."

att.Icon = Material("entities/att/acwatt_ud_m16_receiver_semi.png", "smooth mips")
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.semionly"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"

att.AutoStats = true

att.Override_Trivia_Calibre = ".22 Long Rifle"
att.Override_Ammo = "plinking"

att.Override_Damage = 12
att.Mult_DamageMin = 0.4

att.Mult_Recoil = 0.1
att.Mult_VisualRecoilMult = 0.25
att.Mult_RPM = 1.5
att.Mult_Penetration = 0.1
att.Mult_ShootSpeedMult = 1.2
att.Override_PhysBulletMuzzleVelocity = 370

att.Mult_ClipSize = 1.2

att.Override_ShellModel = "models/weapons/arccw/uc_shells/22lr.mdl"
att.Override_ShellScale = 1
att.Override_ShellSounds = ArcCW.TinyShellSoundsTable

att.Override_Firemodes_Priority = 0.5
att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

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