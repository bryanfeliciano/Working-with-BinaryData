module Glitcher where

import System.Environment
import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as BC
import Random

intToChar :: Int -> Char
intToChar int = toEnum safeInt
   where 
       safeInt = int `mod` 255

intToBC :: Int -> BC.ByteString
intToBC int = BC.pack [intToChar int]

replaceByte :: Int -> Int -> BC.ByteString -> ByteString
replaceByte loc charVal bytes = mconcat [before,newChar,after]
   where
       (before,rest) = BC.splitAt loc bytes
       after = BC.drop 1 rest
       newChar = intToBC charVal
