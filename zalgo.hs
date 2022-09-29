-- z̵̡͕̤̣̽̉̑͒̋́̑̿͂͒̋́͘̕a̶̫̬͍̋̕l̸̡͖̖̺̭̝̙͇̎g̶̲̬͎̰̫͕̻͆̀͒͌̀͌̈́̃͗̚̚͜͝͠͝ỏ̷͇͍̬̻̺͍̯͙̯̪͇̲̘̬
-- https://en.wikipedia.org/wiki/Combining_Diacritical_Marks#Character_table
-- [768..879]
import System.IO
import Data.Char
import System.Random
import Data.Int

zalgoChar :: RandomGen g => Char -> g -> (String,g)
zalgoChar c g = ([c,z],g)
    where i = fst $ randomR (0, 879-768) g
          z = chr ([768..879] !! i)

main = do
    g <- newStdGen
    c <- getChar
    putStr $ fst (zalgoChar c g)
    main
