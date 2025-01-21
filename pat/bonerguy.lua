local bonerguy = {
  isBonerGuy = false,
  checkTicks = 0,
  drawable = {image = "/pat/bonerguy.png", position = {0, 6.5}, fullbright = true, centered = true, scale = 0.5}
}
pat_bonerguy = bonerguy

function bonerguy:update(dt)
  if self.isBonerGuy then
    return localAnimator.addDrawable(self.drawable, "player-100")
  end

  if self.checkTicks > 0 then
    self.checkTicks = self.checkTicks - 1
    return
  end
  self.checkTicks = 100

  if player.playTime() > 1814400 then
    self.isBonerGuy = true
    if player.setName then player.setName("boner guy") end
  end
end

local _update = update
function update(dt)
  _update(dt)
  bonerguy:update(dt)
end
