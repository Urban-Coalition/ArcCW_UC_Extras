att.PrintName = "Technician"

att.Icon = Material("entities/att/arccw_uc_technician.png", "mips smooth")
att.Description = "Extensive maintainence of your firearm greatly reduces the likelihood of malfuntions."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_tp"
att.AutoStats = true
att.SortOrder = 3

att.HideIfBlocked = true

att.Mult_MalfunctionMean = 2

--[[]
att.Hook_Compatible = function(wep)
    if wep:GetIsManualAction() then
        return false
    end
end
]]

att.AttachSound = "arccw_uc/common/gunsmith/internal_modification.ogg"

att.GivesFlags = {"technician"}
att.ExcludeFlags = {"lubedparts"}