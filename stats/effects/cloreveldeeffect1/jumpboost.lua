function init()
  local bounds = mcontroller.boundBox()
  animator.setParticleEmitterOffsetRegion("jumpparticles", {bounds[1], bounds[2] + 0.1, bounds[3], bounds[2] + 0.2})
  effect.addStatModifierGroup({
    {stat = "jumpModifier", amount = 0.2}
  })
end

function update(dt)
  animator.setParticleEmitterActive("jumpparticles", config.getParameter("particles", true) and mcontroller.jumping())
  mcontroller.controlModifiers({
      airJumpModifier = 1.1    })
end

function uninit()
  
end
