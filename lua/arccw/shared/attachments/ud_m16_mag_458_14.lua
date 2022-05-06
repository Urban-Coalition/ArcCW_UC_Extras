att.PrintName = ".458 SOCOM 14-Round Standard Mag"
att.AbbrevName = "14-Round Extended Mag"

att.Icon = Material("entities/att/acwatt_ud_m16_mag_40.png", "smooth mips")
att.Description = "Single stack .458 SOCOM magazine with a capacity of 14 rounds, no modification to the original 5.56x45mm NATO STANAG 40 round magazine is needed."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "ud_m16_mag"

att.AutoStats = true
att.HideIfBlocked = true
att.InvAtt = "ud_m16_mag_40"

att.SortOrder = 1
att.Override_ClipSize = 14

att.Mult_SightTime = 1.2
att.Mult_ReloadTime = 1.3
att.Mult_Sway = 2.25

att.Mult_SpeedMult = 0.95

att.ActivateElements = {"ud_m16_mag_40"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_40"
end

att.RequireFlags = {"m16_458"}