maxSub :: [Int] -> (Int,Int,Int)
maxSub [x] = (0,0,x)
maxSub xs = if s0>=s then (0,j0,s0)
                     else (i+1, j+1, s)
     where (j0,s0) = argMax and (sums xs)
           (i,j,s) = maxSub (tail xs)