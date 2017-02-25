maxx :: (Ord a) => [a] -> a
maxx [] = error "you gave me dumb stuff"
maxx [x] = x
maxx (x:xs)