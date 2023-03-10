att.PrintName = "0\" No Barrel"
att.Description = "As a wise man said, \"if you forgot, then it wasn't important.\"\nWithout a gas system, this weapon cannot cycle automatically."
att.Desc_Cons = {
    "uc.manual"
}
att.AutoStats = true

att.Slot = {"ud_m16_blen"}

att.Hook_ModifyBodygroups = function(wep,data)
    local vm = data.vm

    vm:SetBodygroup(4,5)
    vm:SetBodygroup(5,9)
    vm:SetBodygroup(6,5)
    vm:SetBodygroup(11,0)
end

att.Mult_AccuracyMOA = 51

att.LHIKHide = true
att.Override_HoldtypeActive = "pistol"
att.Override_HoldtypeSights = "revolver"
att.Override_HoldtypeHolstered = "normal"

att.Override_Firemodes = {
    {
        Mode = 1,
        PrintName = "fcg.bolt",
    },
    {
        Mode = 0
    }
}

att.Hook_TranslateAnimation = function(wep, anim)
    if (anim == "fire" || anim == "fire_empty") then
        return "fire_cycle"
    end
end

att.Override_ManualAction = true

att.GivesFlags = {"sd"}