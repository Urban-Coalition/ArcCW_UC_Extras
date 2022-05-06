att.PrintName = ".458 Beowulf 20-Round Dual-Stack Mag"
att.AbbrevName = "20-Round Dual-Stack Mag"

att.Icon = Material("entities/att/acwatt_ud_m16_mag_60.png", "smooth mips")
att.Description = "Dual stack .458 SOCOM magazine with a capacity of 20 rounds, jury-rigged modification to the original 5.56x45mm NATO STANAG 60 round Casket magazine. Dual stacking a round not designed for it leads to abysmal reliability."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "ud_m16_mag"

att.AutoStats = true
att.HideIfBlocked = true
att.InvAtt = "ud_m16_mag_60"

att.SortOrder = 1
att.Override_ClipSize = 20

att.Mult_SightTime = 1.2
att.Mult_ReloadTime = 1.3
att.Mult_Sway = 2.25

att.Mult_SpeedMult = 0.95

att.Override_Malfunction = true
att.Mult_MalfunctionMean = 0.5
att.Mult_MalfunctionVariance = 1.5

att.ActivateElements = {"ud_m16_mag_60"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_60"
end

att.RequireFlags = {"m16_458"}