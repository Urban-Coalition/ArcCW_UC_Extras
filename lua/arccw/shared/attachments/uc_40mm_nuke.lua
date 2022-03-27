att.PrintName = "40mm Tiny Tot"
att.AbbrevName = "Tiny Tot"
att.Icon = Material("entities/att/arccw_uc_40mm_generic.png", "mips smooth")
att.Description = [[Unusual homemade grenade with a small nuclear warhead that inflicts massive damage over a massive area. The heavyweight payload significantly hinders the projectile's aerodynamics and handling.
Handle with extreme care.]]
att.Desc_Pros = {
    "uce.fattnutt"
}
att.Desc_Cons = {
    "uc.40mm.drag.high"
}
att.Desc_Neutrals = {
}
att.Slot = "uc_40mm"

att.Override_ShootEntity = "arccw_uc_40mm_nuke"

att.AutoStats = true

att.Mult_Damage = 33
att.Mult_DamageMin = 33

att.Mult_MuzzleVelocity = .6

att.Mult_ShootPitch = .69
att.Mult_ReloadTime = 1.55
att.Mult_SightTime = 1.25
att.Override_DamageType = DMG_AIRBOAT

att.NotForNPCs = true -- They can't be trusted with this power
