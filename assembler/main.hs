import Parse



main :: IO ()
main = do
 print $ fullParse program

program :: String
program = "'c'i  krz f0 f5 + 4 @  krz f1 0  krz f2 1  fi f0 0 clo  l' is  malkrz xx ka   nta f0 1  krz f3 f1  ata f3 f2  inj f1 f2 f3  krz xx is  krz f0 f1  l' ka  krz xx f5@"
