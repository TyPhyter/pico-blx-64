
-- (casualeffects) optimized
-- heap sort, based on the
-- graphicscodex.com
-- implementation. current
-- fastest pico-8 sort
function ce_heap_sort(data)
  local n = #data
 
  -- form a max heap
  for i = flr(n / 2) + 1, 1, -1 do
   -- m is the index of the max child
   local parent, value, m = i, data[i], i + i
   local key = value.key 
   
   while m <= n do
    -- find the max child
    if ((m < n) and (data[m + 1].key > data[m].key)) m += 1
    local mval = data[m]
    if (key > mval.key) break
    data[parent] = mval
    parent = m
    m += m
   end
   data[parent] = value
  end 
 
  -- read out the values,
  -- restoring the heap property
  -- after each step
  for i = n, 2, -1 do
   -- swap root with last
   local value = data[i]
   data[i], data[1] = data[1], value
 
   -- restore the heap
   local parent, terminate, m = 1, i - 1, 2
   local key = value.key 
   
   while m <= terminate do
    local mval = data[m]
    local mkey = mval.key
    if (m < terminate) and (data[m + 1].key > mkey) then
     m += 1
     mval = data[m]
     mkey = mval.key
    end
    if (key > mkey) break
    data[parent] = mval
    parent = m
    m += m
   end  
   
   data[parent] = value
  end
end
 