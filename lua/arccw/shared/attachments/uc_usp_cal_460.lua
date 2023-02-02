att.PrintName = "USP .460 Rowland Conversion"
att.AbbrevName = ".460 Rowland"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AMAS-R .460 Conversion"
end

att.SortOrder = 70
att.Icon = Material("entities/att/acwatt_uc_cal_460.png", "smooth mips")
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
att.Mult_ShootPitch = 1.15
att.Override_PhysBulletMuzzleVelocity = 480

local path = "/arccw_uc/common/"
att.Hook_GetDistantShootSoundIndoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return {
            path .. "fire-dist-int-pistol-heavy-01.ogg",
            path .. "fire-dist-int-pistol-heavy-02.ogg",
            path .. "fire-dist-int-pistol-heavy-03.ogg",
            path .. "fire-dist-int-pistol-heavy-04.ogg",
            path .. "fire-dist-int-pistol-heavy-05.ogg",
            path .. "fire-dist-int-pistol-heavy-06.ogg"
        }
    end
end