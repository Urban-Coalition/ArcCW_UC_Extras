att.PrintName = "AMCAR-GRENDEL Receiver"
att.AbbrevName = "6.5 Grendel Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AR-15 6.5 Grendel Receiver"
end

att.Description = "A semi-automatic upper receiver that rechambers your rifle in 6.5 Grendel. Classed as a good "middle ground" between the 5.56×45mm NATO and the 7.62×51mm NATO, the round has more kinetic energy, better body armor penetration and is more accurate than the standard 5.56x45mm but suffers from beefier recoil and slightly slower muzzle velocity."

att.Icon = Material("entities/att/acwatt_ud_m16_receiver_semi.png", "smooth mips")
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.semionly"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"

att.AutoStats = true
att.SortOrder = -1

att.Mult_RPM = 500 / 800
att.Mult_Recoil = 1.15
att.Mult_RecoilSide = 0.85
att.Mult_AccuracyMOA = 0.75
att.Mult_Range = 1.15
att.Mult_Penetration = 2.5
att.Mult_ShootVol = 1.1
att.Mult_ClipSize = 0.8666666666

att.Mult_PhysBulletMuzzleVelocity = 1.15

att.Override_Firemodes_Priority = 0.5
att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}
