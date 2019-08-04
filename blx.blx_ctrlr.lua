-- function draw_blx()

--   foreach(blx, function(b)
--     x=5+(8*(b.column-1))
--     y=b.y
--     rectfill(x,y,x+5,y+5,b.color)
  
--     spr(5+b.frame,x,y)
--   end)
-- end

function create_blx(cnt, col)
  local obj = {}
  for i=1,cnt do
    local block = {}
    block.id = 5
    block.color = flr(1+rnd(5))
    block.column = col
    block.y = 0 + (i - 1) * 5
    block.frame = 0
    add(obj,block)
  end
  return obj
end