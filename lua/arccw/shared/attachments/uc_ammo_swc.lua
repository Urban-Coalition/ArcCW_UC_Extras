att.PrintName = "\"SWC\" Semi-Wadcutter Rounds"
att.AbbrevName = "\"SWC\" Semi-Wadcutter"

att.SortOrder = 4
att.Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
att.Description = "A type of bullet with a large, flat tip, designed for paper target shooting. Drastically increases close range stopping power, but loses penetration capabilities and is pretty useless over long ranges. The unorthodox bullet shape also mildly increases the chance of feeding failures."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_ammo"

att.AutoStats = true

att.Mult_Penetration = 0.01
att.Mult_Damage = 1.25
att.Mult_MalfunctionVariance = 1.25

att.Mult_DamageMin = 0.50
att.Override_DamageType = DMG_CLUB
--This makes it drain momentum from targets I think

att.Hook_Compatible = function(wep)
    if wep:GetIsShotgun() then
        return false
    end
end