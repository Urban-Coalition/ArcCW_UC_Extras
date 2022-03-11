att.PrintName = "Explosive Rounds"
att.AbbrevName = "Explosive Rounds"
att.Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
att.Description = "A bullet shaped from a high-explosive compound."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.AutoStats = true
att.Slot = {"uc_ammo"}

att.Mult_Penetration = 0
att.Mult_Precision = 0.8
att.Mult_Damage = 0.75
att.Mult_Range = 0.75
att.Mult_MuzzleVelocity = 0.75
att.Override_Num = 1
att.Override_PhysTracerProfile = 1
att.Override_AlwaysPhysBullet = true

att.Hook_PhysBulletHit = function(wep, data)
    if SERVER then
    local delta = data.bullet.Travelled / (data.bullet.Range / ArcCW.HUToM)
    delta = math.Clamp(delta, 0, 1)
    local dmg = Lerp(delta, data.bullet.DamageMax, data.bullet.DamageMin)

    util.BlastDamage(wep, wep:GetOwner(), data.tr.HitPos, 128, dmg)

    local eff = EffectData()
    eff:SetOrigin(data.tr.HitPos)
    eff:SetMagnitude(4)
    eff:SetScale(0.5)
    eff:SetRadius(4)
    util.Effect("Sparks", eff)
    util.Effect("Explosion", eff)
    util.Decal("Scorch", data.tr.HitPos - data.tr.HitNormal, data.tr.HitPos + data.tr.HitNormal, ents.GetAll())
    end
end

att.Hook_BulletHit = function(wep, data)
    local ent = data.tr.Entity
    if ent:IsValid() and ent:GetClass() == "npc_helicopter" then
        data.dmgtype = DMG_AIRBOAT
    end
end

att.AddPrefix = "HE "
