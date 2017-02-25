merge :: (Ord a) => [a] -> [a] -> [a]
merge (x:xs) (z:zs) = if z < x then z:(merge (x:xs) zs) else x:(merge (z:zs) xs)
merge x [] = x
merge [] z = z

splitList :: [x] -> ([x],[x])
splitList [] = ([],[])
splitList xs = splitAt ((length xs) `div` 2) xs



mergeSort :: (Ord a) => [a] -> [a]
mergeSort (x:[]) = [x]
mergeSort xs = merge (mergeSort . fst $ splitList xs) (mergeSort . snd $ splitList xs)

-- mergeSort xs = merge (mergeSort (fst (splitList xs))) (mergeSort (snd (splitList xs)))


zip' :: [a] -> [b] -> [(a,b)]  
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y):zip' xs ys



bmiTell :: (RealFloat a) => a -> String  
bmiTell bmi  
    | bmi <= 18.5 = "You're underweight, you emo, you!"  
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"  
    | otherwise   = "You're a whale, congratulations!"

