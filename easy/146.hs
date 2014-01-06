import Text.Printf
import System.Environment

polygon :: Floating a => a -> a -> a
polygon n r = 2 * r * sin((pi/n)) * n

main :: IO()
main = do
    [sides,radius] <- getArgs
    printf "%.3f" $ polygon ( read sides :: Float ) ( read radius :: Float )
