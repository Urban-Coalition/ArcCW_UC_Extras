att.PrintName = ".458 SOCOM 10-Round Standard Mag"
att.AbbrevName = "10-Round Standard Mag"
att.Icon = Material("entities/att/acwatt_ud_m16_mag_30.png", "smooth mips")
att.Description = "Single stack .458 SOCOM magazine with a capacity of 10 rounds, no modification to the original 5.56x45mm NATO STANAG 30 round magazine is needed."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "ud_m16_mag"

att.AutoStats = true
att.HideIfBlocked = true
att.Free = true

att.SortOrder = 2
att.Override_ClipSize = 10

att.Mult_SightTime = 1.1
att.Mult_ReloadTime = 1.15
att.Mult_Sway = 1.5

att.Mult_SpeedMult = 0.95

att.RequireFlags = {"m16_458"}