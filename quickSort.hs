quickSort :: [Int] -> [Int]
quickSort [] = []
quickSort (x:xs) = let (ys,zs) = splitWith x xs
                   in (quickSort ys) ++ x : (quickSort zs)

splitWith :: Int -> [Int] -> ([Int], [Int])
splitWith x [] = ([],[])
splitWith x (u:us) = let (ys,zs) = splitWith x us
                     in if u <=x then (u:ys,zs) else (ys,u:zs)