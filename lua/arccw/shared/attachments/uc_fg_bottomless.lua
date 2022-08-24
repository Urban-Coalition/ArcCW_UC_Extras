att.PrintName = "\"Doomer\" Bottomless Clip Conversion Ritual"
att.AbbrevName = "Bottomless Clip"
att.Icon = Material("entities/att/arccw_uc_tp_fieldstrip.png", "smooth mips")
att.SortOrder = 20
att.Description = "Urbanmancy™ at its logical endpoint: an altered magazine that lets you magically cram your entire ammo reserve inside. Unfortunately, this gets heavy and unreliable very quickly."
att.Desc_Pros = {"uce.bottomless"}
att.Desc_Cons = {"uc.jam"}

att.Slot = {"uc_fg","uc_fg_singleshot"}

att.AutoStats = true


att.Override_BottomlessClip = true

att.Mult_SightTime = 1.6
att.Mult_SpeedMult = .75
att.Override_Malfunction = true
att.Mult_MalfunctionMean = .75

att.NotForNPCs = true

att.AttachSound = "arccw_uc/common/gunsmith/internal_modification.ogg"