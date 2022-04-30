module Random where

randomReplaceByte :: BC.ByteString -> IO BC.ByteString
randomReplaceByte bytes = do
    let bytesLength = BC.length bytes
    location <- randomRIO (1,bytesLength)
    charVal <- randomRIO (0,255)
    return (replaceByte location charVal bytes)
