att.PrintName = "No Rear Sight"
att.Icon = Material("entities/att/acwatt__no_scope.png", "mips smooth")
att.Description = "Remove rear sight completely. Could be useful in combination with laser sights."

att.SortOrder = 1000

att.Desc_Pros = {
}
att.Desc_Cons = {
    "con.noscope"
}
att.AutoStats = true
att.Slot = "ud_m16_rs"

att.Free = true

att.AdditionalSights = {
    {
        Pos = Vector(0, 15, -1),
        Ang = Angle(0, 0, 0),
        Magnification = 1.15,
        IgnoreExtra = true
    },
}

att.Mult_SightTime = 0.9
att.Mult_AccuracyMOA = 1.05
att.Mult_SightedSpeedMult = 1.05