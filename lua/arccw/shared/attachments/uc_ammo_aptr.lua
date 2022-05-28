att.PrintName = "\"APTR\" Armor-piercing Tracer Rounds"
att.AbbrevName = "\"APTR\" Armor-piercing Tracer"
att.SortOrder = 1
att.Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
att.Description = "Bullets designed to penetrate body armor, usually built around a penetrator of hardened steel, tungsten, or tungsten carbide.\nUpon impact on a hard target, the case is destroyed, but the penetrator continues its motion and penetrates the target."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.tracer"
}
att.Desc_Neutrals = {
}
att.Slot = "uc_ammo"

att.AutoStats = true

att.Mult_Range = 2
att.Mult_Penetration = 2

att.Mult_Damage = 0.85
att.Mult_DamageMin = 0.85
att.Mult_HipDispersion = 0.85

att.ToggleStats = {
    {
        PrintName = "Green",
        Override_PhysTracerProfile = 2
    },
    {
        PrintName = "Red",
        Override_PhysTracerProfile = 1
    },
    {
        PrintName = "White",
        Override_PhysTracerProfile = 8
    },
}
att.Override_Tracer = "arccw_uc_tracer"

att.Hook_Compatible = function(wep)
    if wep:GetIsShotgun() then
        return false
    end
end