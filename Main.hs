{-# LANGUAGE LambdaCase #-}
module Main where

import System.Environment
import Control.Monad.Reader
import Resume
import TeX (Mode (..))

main :: IO ()
main = getArgs >>= \case
  ["cn"]   -> f Chinese
  ["en"]   -> f English
  _        -> putStrLn $ unlines
    [ "Usage: <program> MODE"
    , "MODE can be cn, en"
    ]
  where f = putStrLn . runReader resume
