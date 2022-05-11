att.PrintName = "AK-19 5.56x45mm Receiver"
att.AbbrevName = "AK-19 Receiver"
att.Icon = Material("entities/att/ur_ak/recievers/ak12.png", "mips smooth")
att.Description = "Modern stamped receiver derived from the AK-12/400 rifle though without the option of 3 round burst. The development of the AK-19 ran alongside the AK-12, however the AK-19 is chambered in 5.56x45mm, instead of 5.45x39mm."
att.Desc_Neutrals = {
    "uc.cosmetic"
}
att.Slot = {"ur_ak_cal"}
att.AutoStats = true

att.SortOrder = 10

att.Override_Ammo = "smg1"
att.Override_Trivia_Calibre = "5.56x45mm NATO"

att.Mult_Range = 1.5
att.Mult_SightedSpeedMult = 1.05
att.Mult_ReloadTime = 0.95
att.Mult_Recoil = 0.65
att.Mult_AccuracyMOA = 0.6
att.Mult_HipDispersion = .75

att.Mult_Penetration = 12 / 16
att.Mult_DamageMin = 20 / 25
att.Mult_Damage = 34 / 50

att.Override_Trivia_Country = "Russia"

att.ShootPitchVariation = 1
att.Override_ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
att.Override_ShellScale = 1
att.GivesFlags = {"cal_556"}

att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0,
    },
}

att.ActivateElements = {"reciever_ak12"}
att.GivesFlags = {"receiver_ak12"}

att.Hook_GetDefaultAttName = function(wep, slot)
    if slotinfo[slot] then
        return GetConVar("arccw_truenames"):GetBool() and slotinfo[slot][2] or slotinfo[slot][1]
    end
end
att.Hook_GetDefaultAttIcon = function(wep, slot)
    if slotinfo[slot] then
        return slotinfo[slot][3]
    end
end