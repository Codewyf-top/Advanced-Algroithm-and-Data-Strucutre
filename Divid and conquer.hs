maxSub :: [Int] -> (Int,Int,Int)
maxSub [x] = (0,0,x)
maxSub xs = let mid = length xs 'div' 2
                    (xs1,xs2) = splitAt mid xs
                    (i1,j1,max1) = maxSub xs1
                    (i2,j2,max2) = maxSub xs2
                    (i3,j2,max3) = maxCross xs1 xs2 
            in if max1 >= max2 && max1 >= max3 
                then (i1,j1,max1)
                else if max2 >= max3
                    then (i2+mid,j2+mid,max2)
                    else (i3,j3+mid,max3)

maxCross is an auxililary functions that finds the maximum corssover sublist, 
with i3 the start index in xs1 and j3 the end index in xs2.
It has linear complexity in the sum of the lengths of xs1 and xs2