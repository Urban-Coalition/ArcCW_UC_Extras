att.PrintName = "\"SS\" Snake-Shot Rounds"
att.AbbrevName = "\"SS\" Snake-Shot"
att.SortOrder = 1
att.Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
att.Description = "Snake shot refers to handgun and rifle cartridges loaded with small lead shot. It is generally used for shooting snakes, rodents, birds, and other pests at very close range."
att.Desc_Pros = {
    "Fires rifled shotshells",
    "pro.invistracers",
    "uc.subsonic"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = {"ud_ammo_shotgun","uc_ammo"}

att.AutoStats = true

att.Mult_Range = 0.1
att.Mult_RangeMin = 0.25
att.Override_Num = 10
att.Override_AccuracyMOA = 25
att.Override_PhysBulletMuzzleVelocity = 275
att.Override_HipDispersion = 10
att.Override_SightsDispersion = 10
att.Mult_Recoil = 0.5

att.ShotgunSpreadDispersion = true

att.Mult_Damage = 1.9
att.Mult_DamageMin = 0.2
att.Mult_RPM = 0.4

att.Override_PhysTracerProfile = 7
att.Override_TracerNum = 0

att.GivesFlags = {"cal_subsonic"}
att.ExcludeFlags = {"powder_subsonic"}

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSoundSilenced then
        return false
    end
end

att.Hook_Compatible = function(wep)
    if wep:GetIsShotgun() then
        return false
    end
end
