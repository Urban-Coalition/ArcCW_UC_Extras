att.PrintName = "GUN GENIE Firearm Enhancer"

att.Icon = Material("entities/att/arccw_uc_forcedresettrigger.png", "mips smooth")
att.Description = "The notorious AliBubba strikes again."
att.Desc_Pros = {
    "uc.auto"
}
att.Desc_Cons = {
    "uc.frcd_visrec"
}
att.Desc_Neutrals = { "uce.wip", "uce.uno"
}
att.Slot = "uc_fg"
att.AutoStats = true
att.SortOrder = 3

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

att.Override_Firemodes_Priority = 100
att.Override_Firemodes = {
    {
        PrintName = "GENIE",
        Mode = 2,
    },
    {
        Mode = 0
    }
}

att.Mult_RPM = 1.666
att.Mult_RecoilSide = 4.20
att.Mult_VisualRecoilMult = 2
att.Mult_MalfunctionMean = .666

att.AttachSound = "arccw_uc/common/gunsmith/internal_modification.ogg"
