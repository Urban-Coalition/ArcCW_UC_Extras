att.PrintName = "\"HE\" High-Explosive Rounds"
att.AbbrevName = "\"HE\" High-Explosive"
att.Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
att.Description = "A bullet shaped from a high-explosive compound. Sacrifice velocity, precision and penetration for explosions on hit."
att.Desc_Pros = { "uce.megamin"
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

local ammoToRadius = {
    ["plinking"] = 48,
    ["pistol"] = 60,
    ["smg1"] = 84,
    ["ar2"] = 96,
    ["357"] = 104,
    ["SniperPenetratedRound"] = 128,
}

att.Hook_PhysBulletHit = function(wep, data)
    if SERVER then
        local radius = ammoToRadius[wep.Primary.Ammo] or 32
        
        local delta = data.bullet.Travelled / (data.bullet.Range / ArcCW.HUToM)
        delta = math.Clamp(delta, 0, 1)
        local dmg = Lerp(delta, data.bullet.DamageMax, data.bullet.DamageMin)
        
        local attacker = IsValid(wep:GetOwner()) and wep:GetOwner() or nil
        util.BlastDamage(wep, attacker, data.tr.HitPos, radius, dmg)

        local eff = EffectData()
        eff:SetOrigin(data.tr.HitPos)
        eff:SetMagnitude(4 * radius / 128)
        eff:SetScale(0.5 * radius / 128)
        eff:SetRadius(4 * radius / 128)
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
att.NotForNPCs = true
att.AddPrefix = "HE "
