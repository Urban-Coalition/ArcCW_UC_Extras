att.PrintName = "\"SS\" Snakeshot Rounds"
att.AbbrevName = "\"SS\" Snakeshot"
att.SortOrder = 2
att.Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
att.Description = "Snake shot refers to handgun and rifle cartridges loaded with small lead shot. It is generally used for shooting snakes, rodents, birds, and other pests at very close range."
att.Desc_Pros = {
    "uce.snakeshot.1",
    -- "pro.invistracers",
    -- "uc.subsonic"
}
att.Desc_Cons = {
    "uce.snakeshot.2"
}
att.Desc_Neutrals = {
}
att.Slot = {"uc_ammo"}

att.AutoStats = true

att.Override_Num = 4
att.Add_AccuracyMOA = 60
att.Override_AccuracyMOA_Priority = 0

att.Override_HullSize = 0.1
att.Override_BodyDamageMults = ArcCW.UC.BodyDamageMults_Shotgun
att.Override_Penetration = 1

att.Mult_Damage = 70 / 60

att.Mult_Range = 0.4
att.Mult_RangeMin = 2

att.Mult_PhysBulletMuzzleVelocity = 0.6

-- att.Override_PhysTracerProfile = 7
-- att.Override_TracerNum = 0

-- att.GivesFlags = {"cal_subsonic"}
-- att.ExcludeFlags = {"powder_subsonic"}

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
