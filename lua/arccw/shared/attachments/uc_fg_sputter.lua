att.PrintName = "Sputter"

att.Icon = Material("entities/att/arccw_uc_forcedresettrigger.png", "mips smooth")
att.Description = "Trigger system that fires until empty when the trigger is pulled. Originally designed to bypass assault weapon restrictions."
att.Desc_Pros = {
    "Fires until the magazine is empty"
}
att.Desc_Cons = {
    "No safety"
}
att.Desc_Neutrals = {
}
att.Slot = "uc_fg"
att.AutoStats = true
att.SortOrder = 2

att.Hook_Compatible = function(wep)
    if wep:GetIsManualAction() then return false end

    -- for i, v in pairs(wep.Firemodes) do
    --     if !v then continue end
    --     if !v.Mode then continue end
    --     if v.Mode == 2 then
    --         -- Not available if gun has automatic firemode
    --         return false
    --     -- elseif v.Mode < 0 then
    --     --     -- Use burst variant
    --     --     return false
    --     end
    -- end
end

att.Mult_RPM = 1.5
att.Override_Firemodes_Priority = 100
att.Override_Firemodes = {
    {
        PrintName = "SPUTTER",
        Mode = -999,
        PostBurstDelay = 0.08,
        Mult_Recoil = 0.9,
        RunawayBurst = true,
    }
}

--att.Mult_RPM = 1.25
att.Mult_RecoilSide = 1.25
att.Mult_VisualRecoilMult = 2

att.AttachSound = "arccw_uc/common/gunsmith/internal_modification.ogg"