import Glitcher 

main :: IO()
main = do
    args <- head args
    imageFile <- BC.readFile fileName
    glitched <- return imageFile
    let glitchedFileName = mconcat ["glitched_",fileName]
    BC.writeFile glitchedFileName glitched
    print "all done"