att.PrintName = "40mm Fat Man"
att.AbbrevName = "Fat Man"
att.Icon = Material("entities/att/arccw_uc_40mm_generic.png", "mips smooth")
att.Description = [[Unusual homemade grenade with a small nuclear warhead that inflicts massive damage over a massive area. The heavyweight payload significantly hinders the projectile's aerodynamics and handling.
Handle with extreme care.]]
att.Desc_Pros = {
    "Greatly increased blast radius"
}
att.Desc_Cons = {
    "uc.40mm.drag.high"
}
att.Desc_Neutrals = {
}
att.Slot = "uc_40mm"

att.Override_ShootEntity = "arccw_uc_40mm_nuke"

att.AutoStats = true

att.Mult_Damage = 51
att.Mult_DamageMin = 51

att.Mult_MuzzleVelocity = .65

att.Mult_ShootPitch = .85
att.Mult_ReloadTime = 1.5
att.Mult_SightTime = 1.15