att.PrintName = "AMCAR-NG Navy Receiver"
att.AbbrevName = "Navy Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M4A1 SAB Receiver"
end

att.Description = "A receiver that allows burst fire and automatic fire. Extremely versatile, but the complicated internals adds weapon weight."

att.Icon = Material("entities/att/acwatt_ud_m16_receiver_auto.png", "smooth mips")
att.Desc_Pros = {
    "Semi-automatic, fully automatic and 3-round burst.",
    --"ud.flattop"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_receiver"
--att.InvAtt = "ud_m16_receiver_auto"

att.AutoStats = true
att.SortOrder = 5

att.Mult_AccuracyMOA = 1.25
att.Mult_RPM = 0.85
att.Mult_HipDispersion = 1.125
att.Mult_ShootSpeedMult = 0.85
att.Mult_Sway = 1.10
att.Mult_SightedSpeedMult = 0.9


att.Override_Firemodes = {
   {
        Mode = 2,
    },
     {
        Mode = -3,
        PostBurstDelay = 0.08,
        Mult_Recoil = 0.9,
        RunawayBurst = false,
    },    
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

att.GivesFlags = {"m16_auto"}
att.ExcludeFlags = {"m16_noauto"}
-- att.ActivateElements = {"ud_m16_upper_flat"}
