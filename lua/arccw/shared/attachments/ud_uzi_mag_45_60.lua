att.PrintName = "Uzi 60-Round C-Mag"
att.AbbrevName = "60-Round C-Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "STAP 60-Round C-Mag"
end


att.SortOrder = 100
att.Icon = Material("entities/att/acwatt_ud_uzi_mag_100.png", "smooth mips")
att.Description = "Custom high-capacity modification of the 100-round 9mm C-Mag designed to chamber .45 ACP rounds. Comes at the expense of everything else."
att.Desc_Pros = {}
att.Desc_Cons = { "uc.jam" }
att.Desc_Neutrals = {}
att.Slot = "ud_uzi_mag"

att.AutoStats = true

att.Mult_SightTime = 1.66
att.Mult_ReloadTime = 1.66
att.Mult_SpeedMult = 0.85
att.Mult_DrawTime = 1.33
att.Override_ClipSize = 60
att.Override_ClipSize_Priority = 2
att.Mult_Sway = 2
att.Mult_ShootSpeedMult = 0.85

att.ActivateElements = {"ud_uzi_mag_100"}

--att.Override_Jamming = true
att.Override_Malfunction = true
att.Mult_MalfunctionMean = 0.88
att.Mult_MalfunctionVariance = 1.88

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_100"
end

att.RequireFlags = {"uzi_45"}
att.HideIfBlocked = true
