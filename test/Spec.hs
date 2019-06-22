module Main where

import qualified Problem01Test (test)
import qualified Problem02Test (test)
import qualified Problem03Test (test)
import qualified Problem04Test (test)
import qualified Problem05Test (test)
import qualified Problem06Test (test)
import qualified Problem07Test (test)
import qualified Problem08Test (test)
import qualified Problem09Test (test)
import qualified Problem10Test (test)
import qualified Problem11Test (test)
import qualified Problem12Test (test)
import qualified Problem13Test (test)
import qualified Problem14Test (test)
import qualified Problem15Test (test)
import qualified Problem16Test (test)
import qualified Problem17Test (test)
import qualified Problem18Test (test)
import qualified Problem19Test (test)
import qualified Problem20Test (test)
import qualified Problem21Test (test)
import qualified Problem22Test (test)
import qualified Problem23Test (test)
import qualified Problem24Test (test)
import qualified Problem25Test (test)
import qualified Problem26Test (test)
import           Test.HUnit    (Counts, Test (TestList), runTestTT)

main :: IO Counts
main = runTestTT testCases

testCases =
  TestList
    [ Problem01Test.test
    , Problem02Test.test
    , Problem03Test.test
    , Problem04Test.test
    , Problem05Test.test
    , Problem06Test.test
    , Problem07Test.test
    , Problem08Test.test
    , Problem09Test.test
    , Problem10Test.test
    , Problem11Test.test
    , Problem12Test.test
    , Problem13Test.test
    , Problem14Test.test
    , Problem15Test.test
    , Problem16Test.test
    , Problem17Test.test
    , Problem18Test.test
    , Problem19Test.test
    , Problem20Test.test
    , Problem21Test.test
    , Problem22Test.test
    , Problem23Test.test
    , Problem24Test.test
    , Problem25Test.test
    , Problem26Test.test
    ]
