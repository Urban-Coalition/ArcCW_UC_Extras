att.PrintName = "40mm Timed Explosive Charge"
att.AbbrevName = "Timed Charge"
att.Icon = Material("entities/att/arccw_uc_40mm_generic.png", "mips smooth")
att.Description = "A high explosive grenade with configurable timed fuse and carrying a heavier payload. Does not detonate on impact. Useful when shooting around corners."
att.Desc_Pros = {
    "uce.timed1",
    "Larger explosion radius"
}
att.Desc_Cons = {
    "uce.timed2",
    "Slower projectile speed"
}
att.Desc_Neutrals = {
}
att.SortOrder = 4
att.AutoStats = false

att.Slot = "uc_40mm"

att.Mult_Damage = 1.55
att.Mult_DamageMin = 1.55
att.Mult_MuzzleVelocity = 0.75

att.Override_ShootEntity = "arccw_uc_40mm_timed"
att.Override_Firemodes_Priority = 1000
att.Override_Firemodes = {
    {
        Mode = 1,
        PrintName = "0.5s",
        DetonationDelay = 0.5
    },
    {
        Mode = 1,
        PrintName = "0.75s",
        DetonationDelay = 0.75
    },
    {
        Mode = 1,
        PrintName = "1.5s",
        DetonationDelay = 1.5
    },
    {
        Mode = 1,
        PrintName = "3s",
        DetonationDelay = 3
    },
    {
        Mode = 0
    }
}
