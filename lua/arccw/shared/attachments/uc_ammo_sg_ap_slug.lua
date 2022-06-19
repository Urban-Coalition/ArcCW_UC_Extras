att.PrintName = "\"AP SLUG\" Armour-Piercing Full-Bore Slug"

att.SortOrder = 1
att.Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
att.Description = [[A single heavy projectile with a penetrator of hardened steel, tungsten, or tungsten carbide. Comparable in performance to a high-caliber rifle cartridge at close to medium range.\nUpon impact on a hard target, the case is destroyed, but the penetrator continues its motion and penetrates the target.
Applicable in situations that require marksmanship and minimal collateral damage.]]
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "uc.oneprojectile"
}
att.Slot = {"ud_ammo_shotgun","uc_ammo"}

att.AutoStats = true

att.Override_Num = 1
att.Override_Num_Priority = 2
att.Mult_Damage = .5
att.Mult_DamageMin = .25
att.Mult_AccuracyMOA = .3
att.Add_Penetration = 35
att.Mult_RangeMin = 2
att.Mult_Range = 4.5
att.Mult_HipDispersion = 2

att.Override_HullSize = 0

att.Override_UC_ShellColor = Color(0.2*255, 0.45*255, 0.2*255)
att.GivesFlags = {"uc_slug"}

att.Hook_Compatible = function(wep)
    if !wep:GetIsShotgun() then
        return false
    end
end