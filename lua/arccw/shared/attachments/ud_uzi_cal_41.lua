att.PrintName = "Uzi .41 AE Conversion"
att.AbbrevName = ".41 AE"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "IAL-9 .41 AE Conversion"
end
att.Slot = "ud_uzi_caliber"

att.Icon = Material("entities/att/acwatt_ud_glock_caliber.png", "smooth mips")
att.Description = "Pistol cartridge developed in 1986 to reproduce the performance of the .41 Magnum in semi-automatic firearms. Perfect for siege missions."
att.Desc_Pros = { 
    "No distant firing sound when suppressed"
}
att.Desc_Cons = { 
    "uc.semionly"
}

att.Override_Trivia_Calibre = ".41 Action Express"

att.AutoStats = true

att.Mult_Damage = 1.66
att.Mult_Penetration = 4
att.Mult_RangeMin = 1.5
att.Mult_Range = 0.45
att.Mult_ShootVol = 0.9
att.Mult_Recoil = 2
att.Mult_RecoilSide = 2
att.Mult_RPM = 0.50
att.Override_ClipSize = 10
att.Override_ClipSize_Priority = 0.5
att.BaseClipSize = 10
att.Mult_HipDispersion = 1.1

att.Override_ShellScale = 1.7

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
        return "weapons/arccw_ud/mini14/fire_supp.ogg" -- Placeholder
    else
        return "weapons/arccw_ud/m16/fire_beo.ogg" -- Placeholder
    end
end

att.Hook_GetDefaultAttName = function(wep, slot)
    if slot == 8 then
        return "10-Round Mag"
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSoundSilenced then
        return false
    elseif distancesound == wep.DistantShootSound then
        return "weapons/arccw_ud/mini14/fire_dist.ogg"
    end
end

att.GivesFlags = {"uzi_41","cal_subsonic"}
att.ExcludeFlags = {"powder_subsonic"}