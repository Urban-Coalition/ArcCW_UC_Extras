att.PrintName = "40mm Timed Explosive Charge"
att.AbbrevName = "Timed Charge"
att.Icon = Material("entities/att/arccw_uc_40mm_generic.png", "mips smooth")
att.Description = "A high explosive grenade with configurable timed fuse and carrying a heavier payload. Does not detonate on impact. Useful when shooting around corners."
att.Desc_Pros = {
    "uce.timed1"
}
att.Desc_Cons = {
    "uce.timed2"
}
att.Desc_Neutrals = {
}
att.SortOrder = 4
att.AutoStats = true

att.Slot = "uc_40mm"

att.Mult_MuzzleVelocity = 0.4

att.Override_ShootEntity = "arccw_uc_40mm_timed"
att.Override_Firemodes_Priority = 1000
att.Override_Firemodes = {
    {
        Mode = 1,
        PrintName = "2s",
        DetonationDelay = 2
    },
    {
        Mode = 1,
        PrintName = "3s",
        DetonationDelay = 3
    },
    {
        Mode = 1,
        PrintName = "5s",
        DetonationDelay = 5
    },
    {
        Mode = 1,
        PrintName = "10s",
        DetonationDelay = 10
    },
    {
        Mode = 0
    }
}
