att.PrintName = "Desert Eagle .429 DE Conversion"
att.AbbrevName = ".429 DE"
att.Icon = Material("entities/att/acwatt_ur_deagle_bullets_429.png","smooth mips")
att.Description = "The .429 DE is a .50 AE case that is necked down to accept .429-diameter bullets used in the .44 Magnum. The .429 DE offers increased speed and accuracy over the .50 AE due to its lighter and slimmer projectile at the cost of significantly reduced damage from its small size and overpenetrative nature."

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Predator .429 DE Conversion"
end
-- Todo: alt shoot sound and alt icon

att.AutoStats = true
att.Slot = "ur_deagle_caliber"

att.Mult_AccuracyMOA = 0.75
att.Mult_Range = 1.25
att.Mult_Penetration = 1.25
att.Mult_Precision = 1.25
att.Mult_Damage = 0.85
att.Mult_Recoil = 1.10
att.Mult_MuzzleVelocity = 1.5
att.Mult_MalfunctionMean = 1.05

att.Override_Trivia_Calibre = ".429 DE"
att.Override_ShellModel = "models/weapons/arccw/uc_shells/50ae.mdl"
att.Override_ShellScale = 1.1
