-- z̵̡͕̤̣̽̉̑͒̋́̑̿͂͒̋́͘̕a̶̫̬͍̋̕l̸̡͖̖̺̭̝̙͇̎g̶̲̬͎̰̫͕̻͆̀͒͌̀͌̈́̃͗̚̚͜͝͠͝ỏ̷͇͍̬̻̺͍̯͙̯̪͇̲̘̬
-- https://en.wikipedia.org/wiki/Combining_Diacritical_Marks#Character_table
-- [768..879]
import System.IO
import Data.Char
import System.Random
import Control.Monad

zalgoChar :: RandomGen g => Char -> g -> (String,g)
zalgoChar c g = ([c,z],ng)
    where (i,ng) = randomR (0, 879-768) g
          z = chr ([768..879] !! i)

zalgoChars :: RandomGen g => String -> g -> String
zalgoChars (c:[]) g = fst $ zalgoChar c g
zalgoChars (c:cs) g = z ++ zalgoChars cs ng
    where (z,ng) = zalgoChar c g

main = do
    g <- newStdGen
    c <- getChar
    putStr $ fst (zalgoChar c g)
    eof <- isEOF
    unless eof main
