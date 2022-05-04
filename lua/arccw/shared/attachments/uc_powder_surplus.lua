att.PrintName = "Surplus"
att.Icon = Material("entities/att/acwatt_uce_powder_surplus.png", "mips smooth")
att.Description = "Mass-produced, poor-quality ammunition auctioned off following obsolesence. The inconsistent, randomized powder loads have more power on average, but can lead to atrocious reliability problems."
att.Slot = "uc_powder"
att.AutoStats = true
att.Desc_Pros = {"uce.surplus1"}
att.Desc_Cons = {"uce.surplus2","uce.surplus3"}

att.Override_Malfunction = true
att.Mult_MalfunctionMean = .35
att.Mult_AccuracyMOA = 1.15

att.Hook_BulletHit = function(wep,data)
    data.damage = data.damage * math.random(85,120) / 100
end