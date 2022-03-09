att.PrintName = "Uzi 20-Round Extended Mag"
att.AbbrevName = "20-Round Extended Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "IAL-9 20-Round Extended Mag"
end

att.SortOrder = 40
att.Icon = Material("entities/att/acwatt_ud_uzi_mag_40.png", "smooth mips")
att.Description = "Custom made 20-round magazine for your .41 AE Uzi. Generous capacity given the ammunition used albeit unwieldy."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_uzi_mag"

att.AutoStats = true

att.Mult_SightTime = 1.15
--att.Mult_Recoil = 0.95
att.Mult_ReloadTime = 1.25
--att.Mult_SpeedMult = 0.85
att.Override_ClipSize = 20
att.Override_ClipSize_Priority = 2
att.Mult_Sway = 1.25

att.ActivateElements = {"ud_uzi_mag_40"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_41"
end

att.RequireFlags = {"uzi_41"}
att.HideIfBlocked = true