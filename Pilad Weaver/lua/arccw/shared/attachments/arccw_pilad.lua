att.PrintName = "VOMZ Pilad P1x42 Weaver (RDS)"
att.Icon = Material("entities/arccw_pilad.png")
att.Description = "Open type reflex sight designed by VOMZ (Vologodskiy Optiko-Mekhanicheskiy Zavod) for precision aiming of sport and hunting weapons."

att.SortOrder = 1

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/weapons/arccw/optic_pilad.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -1.15),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
		HolosightBone = "holosight",
        HolosightData = {
		 Holosight = true,
			HolosightMagnification = 1,
            HolosightReticle = Material("hud/holosight/arccw_pilad.png", "mips smooth"),
            HolosightNoFlare = true,
            HolosightSize = 1,
            HolosightBlackbox = false,
            Colorable = true
			 },
        IgnoreExtra = true,
    },
	    {
        Pos = Vector(0, 10, -1.15),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
		HolosightBone = "holosight",
        HolosightData = {
		 Holosight = true,
			HolosightMagnification = 1,
            HolosightReticle = Material("hud/holosight/arccw_pilad2.png", "mips smooth"),
            HolosightNoFlare = true,
            HolosightSize = 1,
            HolosightBlackbox = false,
            Colorable = true
			 },
        IgnoreExtra = true,
    },
	    {
        Pos = Vector(0, 10, -1.15),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
		HolosightBone = "holosight",
        HolosightData = {
		 Holosight = true,
			HolosightMagnification = 1,
            HolosightReticle = Material("hud/holosight/arccw_pilad3.png", "mips smooth"),
            HolosightNoFlare = true,
            HolosightSize = 1,
            HolosightBlackbox = false,
            Colorable = true
			 },
        IgnoreExtra = true,
    },

att.ModelOffset = Vector(-1, 0, 0)

att.Mult_SightTime = 0.9

att.Colorable = true
