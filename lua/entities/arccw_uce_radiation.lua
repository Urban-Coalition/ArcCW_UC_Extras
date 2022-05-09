AddCSLuaFile()

ENT.Base = "base_anim"
ENT.Type = "anim"

function ENT:Initialize()
    self:SetNoDraw(true)
    self:DrawShadow(false)

    if SERVER then
        self.dmg = DamageInfo()
        self.dmg:SetDamage(1)
        self.dmg:SetAttacker(self.Creator or self)
        self.dmg:SetInflictor(self)
        self.dmg:SetDamageType(DMG_RADIATION)
    end
end

function ENT:Think()
    if SERVER then
        for _,ent in pairs(ents.FindInSphere(self:GetPos(),1200)) do
            if ent:IsPlayer() and ent:Alive() then
                ent:ViewPunch(AngleRand() / 120)
                ent:ScreenFade(SCREENFADE.IN,Color(255,255,255,32),.25,0)
                --ent:TakeDamageInfo(self.dmg)
                ent:TakeDamage(1,self.Creator,self)
            elseif ent:IsNPC() then
                --ent:TakeDamageInfo(self.dmg)
                ent:TakeDamage(1,self.Creator,self)
            end
        end

        if CurTime() > self:GetCreationTime() + (self.Duration or 25) and self:IsValid() then
            self:Remove()
        end

        self:NextThink(CurTime() + .75)
    else
        if LocalPlayer():GetPos():DistToSqr(self:GetPos()) <= 1440000 then -- 1200 squared
            surface.PlaySound("player/geiger"..math.random(1,3)..".wav")
        end

        self:SetNextClientThink(CurTime() + math.random(1,3) * .1)
    end

    return true
end