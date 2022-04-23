att.PrintName = ".50 Beowulf 40-Round C-Mag"
att.AbbrevName = "40-Round C-Mag"
att.SortOrder = 100
att.Icon = Material("entities/att/acwatt_ud_m16_mag_100.png", "smooth mips")
att.Description = "REDIPS PUT SOMETHING FUNNY HERE BEFORE THE WS PUSH"
att.Desc_Pros = {}
att.Desc_Cons = {
    "uc.jam"
}
att.Desc_Neutrals = {}
att.Slot = "ud_m16_mag"

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 40

att.Mult_SightTime = 1.5
att.Mult_ReloadTime = 1.5
att.Mult_Sway = 3

att.Mult_SpeedMult = 0.9
att.Mult_ShootSpeedMult = 0.8

att.Mult_DrawTime = 1.25
att.Mult_HolsterTime = 1.25

att.ActivateElements = {"ud_m16_mag_100"}

--[[]
att.Override_Jamming = true
att.Override_HeatCapacity = 200
att.Override_HeatDissipation = 4
att.Override_HeatDelayTime = 3
]]

att.Override_Malfunction = true
att.Mult_MalfunctionMean = 0.75
att.Mult_MalfunctionVariance = 1.5

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_100"
end

att.Hook_TranslateAnimation = function(wep, anim)
    if (anim == "fix") then
        return anim .. "_100"
    end
end

att.ExcludeFlags = {"m16_usas", "m16_9mm"}

att.RequireFlags = {"m16_50beo"}