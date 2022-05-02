att.PrintName = "AK-9 9x39mm Receiver"
att.AbbrevName = "9x39mm Receiver"
att.Icon = Material("entities/att/ur_ak/recievers/545.png", "mips smooth")
att.Description = "Conversion to the smaller 9x39mm intermediate cartridge. As a subsonic cartridge, it is much more controllable and quiet at the cost of range and damage. This variant uses custom made 30 round magazines."
att.Slot = {"ur_ak_cal"}
att.AutoStats = true

att.SortOrder = 10

att.Override_Ammo = "smg1"
att.Override_Trivia_Calibre = "9x39mm"

att.Mult_Range = 0.8
att.Mult_AccuracyMOA = 1.5
att.Mult_RPM = 1.25
att.Mult_RangeMin = 0.8
att.Mult_DamageMin = 1.15
att.Mult_HipDispersion = 1.2
att.Mult_ShootSpeedMult = 1.2

att.Mult_Damage = 1.17
att.Mult_Penetration = 0.9
att.Mult_ShootVol = 105 / 120
att.Mult_Recoil = 0.7

att.Mult_HeatDissipation = 1.5

att.Override_Trivia_Country = "Russia"

att.ShootPitchVariation = 1
att.Override_ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
att.Override_ShellScale = 1
att.GivesFlags = {"cal_556" and "cal_subsonic"}

att.ActivateElements = {"mag_556_30"}
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

att.ExcludeFlags = {"powder_subsonic"}