Advanced Algroithm and Data Structure notes:

The type of the function maxSub says that
maxSub is a function that maps a list to a triple (i,j,s)

• i is the index of the first element of the sublist 

• j is the index of the last element of the sublist
 
 • s is the sum of the sublist
 
 If the input is a singleton list [x]
 then the singleton is the maximum list
 
 • 0: index of x, first element of the sublist 
 
 • 0: x is also the last element of the sublist 
 
 • x: thesumof[x]isx
 
 For longer lists we split the computation in two parts
 
 • Sublists that contain the first element of xs let (0, j0, s0) be the maximum of them
 
 
 • Sublists that do not contain the first element
 Then they are sublists of (tail xs)
 let (i, j, s) be the recursive max sublist of (tail xs)
 
 • Choose the larger of the two
 
 Auxiliary functions:
 • sums computes the progressive sums of lists starting at the beginning sums [1,-2,3,5] = [(0,1),(1,-1),(2,2),(3,7)] because
 
 • thesumof[1](indices0and0)is1 ⇒(0,1)
 
 • the sum of [1,-2] (indices 0 and 1) is −1 ⇒ (1, −1) • the sum of [1,-2,3] (indices 0 and 2) is 2 ⇒ (2, 2)
 
 • the sum of [1,-2,3,5] (indices 0 and 3) is 7 ⇒ (3, 7)
 
 • argMax snd selects the element
 with the maximum second component (the sum)