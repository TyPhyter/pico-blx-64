function init_cols() 
  cols = {}
  for i=1, 7 do
    local col_blx = create_blx(2,i)
    col = {}
    col.blx = col_blx
    add(cols, col)
  end 
end

function draw_cols()

  foreach(cols, function(col)

    foreach(col.blx, function(b)

      x=5+(8*(b.column-1))
      y=b.y
      rectfill(x,y,x+5,y+5,b.color)
    
      spr(5+b.frame,x,y)
    end)
  end)
end

function update_cols()

  animTimer+=.0125
  if animTimer >= 1 then
    animTimer=0
    foreach(cols, function(col)
      foreach(col.blx, function(b)
        b.y+=5
        if(rnd(1) > .65) b.frame=flr(rnd(3))
      end)
    end)
  end
end