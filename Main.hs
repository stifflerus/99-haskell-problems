module Main where

import Test.HUnit (Test(TestList), runTestTT, Counts)
import qualified Problem1 (test)
import qualified Problem2 (test)
import qualified Problem3 (test)
import qualified Problem4 (test)
import qualified Problem5 (test)
import qualified Problem6 (test)
import qualified Problem7 (test)
import qualified Problem8 (test)
import qualified Problem9 (test)
import qualified Problem10 (test)

main :: IO Counts
main = runTestTT testCases

testCases = TestList
  [ Problem1.test 
  , Problem2.test
  , Problem3.test
  , Problem4.test
  , Problem5.test 
  , Problem6.test 
  , Problem7.test
  , Problem8.test
  , Problem9.test
  , Problem10.test ]

