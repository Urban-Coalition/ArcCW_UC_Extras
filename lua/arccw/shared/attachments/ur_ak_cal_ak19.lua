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

att.ActivateElements = {"reciever_ak12", "mag_556_30"}
att.GivesFlags = {"receiver_ak12", "cal_556"}
local path = ")^weapons/arccw_ur/ak/556/"
local path1 = ")^weapons/arccw_ur/ak/"

att.Hook_GetShootSound = function(wep, fsound)
    --[[if fsound == wep.FirstShootSound or fsound == wep.FirstShootSound then return {
        path .. "stalol/fire_545_1.wav",
     } end]]
    if fsound == wep.ShootSound or fsound == wep.FirstShootSound then return {path .. "fire-01.ogg", path .. "fire-02.ogg", path .. "fire-03.ogg", path .. "fire-04.ogg", path .. "fire-05.ogg", path .. "fire-06.ogg"} end
    if fsound == wep.ShootSoundSilenced then return path .. "fire_supp.ogg" end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then return {path .. "fire-dist-01.ogg", path .. "fire-dist-02.ogg", path .. "fire-dist-03.ogg", path .. "fire-dist-04.ogg", path .. "fire-dist-05.ogg", path .. "fire-dist-06.ogg"} end
end

local slotinfo = {
    [5] = {"30-Round Mag", "30-Round Mag", Material("entities/att/ur_ak/magazines/545_30.png", "mips smooth")},
}