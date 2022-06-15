att.PrintName = "\"HEI\" High-Explosive Incendiary Rounds"
att.AbbrevName = "\"HEI\" High-Explosive Incendiary"
att.Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
att.Description = "A bullet shaped from a high-explosive compound with an incendiary component. Sacrifice velocity, precision and penetration for fiery explosions on hit."
att.Desc_Pros = { "uce.megamin"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
	"uce.megamin",
	"uc.api.1",
	"uc.api.2"
}
att.AutoStats = true
att.Slot = {"uc_ammo"}

att.Mult_Penetration = 0
att.Mult_Precision = 1.25
att.Mult_Damage = 0.75
att.Mult_Range = 0.50
att.Mult_MuzzleVelocity = 0.50

att.Override_PhysTracerProfile = 1
att.Override_AlwaysPhysBullet = true
att.Override_DamageType = DMG_BURN + DMG_AIRBOAT

att.Hook_Compatible = function(wep)
    if wep.Num ~= 1 or (wep.Primary.Ammo ~= "SniperPenetratedRound") then return false end
end

att.Hook_BulletHit = function(wep, data)
    local ent = data.tr.Entity
    util.BlastDamage(wep, wep:GetOwner(), data.tr.HitPos, 64, wep:GetDamage(data.range))
    if ent:IsValid() and ent:GetClass() == "npc_helicopter" then
        data.dmgtype = DMG_AIRBOAT
    end
end

att.Hook_PhysBulletHit = function(wep, data)
    if SERVER then
    local delta = data.bullet.Travelled / (data.bullet.Range / ArcCW.HUToM)
    delta = math.Clamp(delta, 0, 1)
    local dmg = Lerp(delta, data.bullet.DamageMax, data.bullet.DamageMin)

    local eff = EffectData()
    eff:SetOrigin(data.tr.HitPos)
    eff:SetMagnitude(2)
    eff:SetScale(0.25)
    eff:SetRadius(2)
    util.Effect("Sparks", eff)
    util.Effect("Explosion", eff)
    util.Decal("Scorch", data.tr.HitPos - data.tr.HitNormal, data.tr.HitPos + data.tr.HitNormal, ents.GetAll())
    end
end

att.Hook_Compatible = function(wep)
    local allowedAmmos = {
        ["ar2"] = true,
        ["SniperPenetratedRound"] = true,
        ["357"] = true,
    }
    if !allowedAmmos[wep.Primary.Ammo] then
        return false
    end
end
