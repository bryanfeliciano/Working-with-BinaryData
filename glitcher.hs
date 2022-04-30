module Glitcher where

import System.Environment
import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as BC

intToChar :: Int -> Char
intToChar int = toEnum safeInt
   where 
       safeInt = int `mod` 255