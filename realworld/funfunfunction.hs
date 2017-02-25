foo x = let now  = "something" ++ past
            past = "else"
        in (now, x)

main = print (foo "Balls")