att.PrintName = "\"API-T\" Armor-piercing Incendiary Tracer Rounds"
att.AbbrevName = "\"API-T\" Armor-piercing Incendiary Tracer"
att.SortOrder = 1
att.Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
att.Description = "Antimateriel round with a small explosive charge and tracer component. Rounds leave a colorful trail during flight and burn holes through objects more effectively than standard armor-piercing bullets."
att.Desc_Pros = {
    "uc.api.1",
    "uc.api.2"
}
att.Desc_Cons = {
    "uc.tracer"
}
att.Desc_Neutrals = {
}
att.Slot = "uc_ammo"

att.AutoStats = true

att.Mult_Range = 2
att.Mult_Penetration = 2.5
att.Override_DamageType = DMG_BURN

att.Mult_Damage = 2/3
att.Mult_DamageMin = 2/3
att.Mult_HipDispersion = 0.85

att.Hook_BulletHit = function(wep,data)
    if SERVER and data.tr.Entity and !(data.tr.Entity:IsNPC() or data.tr.Entity:IsPlayer() or data.tr.Entity:IsNextBot()) then
        data.damage = data.damage * 12
    end

    local eff = EffectData()
    eff:SetOrigin(data.tr.HitPos)
    util.Effect("cball_bounce",eff)
end

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

att.Hook_Compatible = function(wep)
    if !(wep.Primary.Ammo == "ar2" or wep.Primary.Ammo == "SniperPenetratedRound") then
        return false
    end
end