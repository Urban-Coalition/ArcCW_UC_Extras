att.PrintName = "USP .460 Rowland Conversion"
att.AbbrevName = ".460 Rowland"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AMAS-R .460 Conversion"
end

att.SortOrder = 70
att.Icon = Material("entities/att/acwatt_ud_glock_caliber.png", "smooth mips")
att.Description = "Convert barrel to take .460 Rowland, a proprietary cartridge which attains true .44 Magnum level velocities."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_usp_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = ".460 Rowland"

att.Mult_AccuracyMOA = 0.75
att.Mult_Penetration = 1.11111111111
att.Mult_Range = 1.25
att.Mult_Precision = 1.25
att.Mult_Recoil = 1.4
att.Mult_MalfunctionMean = 1.05
att.Override_PhysBulletMuzzleVelocity = 480