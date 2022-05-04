AddCSLuaFile()
ENT.Type = "anim"
ENT.Base 				= "arccw_uc_40mm_he"
ENT.PrintName 				= "40mm timed charge"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false


if SERVER then
    function ENT:Initialize()
	    local wep = self.Inflictor
        if IsValid(wep) and wep:GetCurrentFiremode() then
            self.FuseTime = wep:GetCurrentFiremode().DetonationDelay or 1
            local pb_vert = 1
            local pb_hor = 1
            self:SetModel(self.Model)
            self:PhysicsInitBox(Vector(-pb_vert, -pb_hor, -pb_hor), Vector(pb_vert, pb_hor, pb_hor))
            local phys = self:GetPhysicsObject()

            if phys:IsValid() then
                phys:Wake()
                phys:SetDragCoefficient(self.DragCoefficient)
                phys:SetBuoyancyRatio(0.1)
            end

            self.SpawnTime = CurTime()
        end
    end

    function ENT:Think()
        if SERVER and CurTime() - self.SpawnTime >= self.FuseTime then
            self:Detonate()
        end
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if data.Speed > 75 then
            self:EmitSound(Sound("physics/metal/metal_grenade_impact_hard" .. math.random(1,3) .. ".wav"))
        elseif data.Speed > 25 then
            self:EmitSound(Sound("physics/metal/metal_grenade_impact_soft" .. math.random(1,3) .. ".wav"))
        end
    end
end