local bonerguy, bonercheck = false, 0

local u = update
function update(...) u(...)
  if bonerguy then
    localAnimator.addDrawable({image = "/pat/bonerguy.png", position = {0, 6.5}, fullbright = true, centered = true, scale = 0.5}, "player-100")
  else
    if bonercheck == 0 then
      bonercheck = 100
      if player.playTime() > 1814400 then
        bonerguy = true
        if starExtensions then player.setName("boner guy") end
      end
    else
      bonercheck = bonercheck - 1
    end
  end
end