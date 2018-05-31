module Main where

import Test.HUnit (Test(TestList), runTestTT, Counts)
import qualified Problem01 (test)
import qualified Problem02 (test)
import qualified Problem03 (test)
import qualified Problem04 (test)
import qualified Problem05 (test)
import qualified Problem06 (test)
import qualified Problem07 (test)
import qualified Problem08 (test)
import qualified Problem09 (test)
import qualified Problem10 (test)

main :: IO Counts
main = runTestTT testCases

testCases = TestList
  [ Problem01.test 
  , Problem02.test
  , Problem03.test
  , Problem04.test
  , Problem05.test 
  , Problem06.test 
  , Problem07.test
  , Problem08.test
  , Problem09.test
  , Problem10.test ]

