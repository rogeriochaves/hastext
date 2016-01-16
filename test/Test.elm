module Main where

import Task

import Console exposing (..)
import ElmTest exposing (consoleRunner)

import Update.TextTest as TextTest

tests : IO ()
tests =
    consoleRunner TextTest.tests

port runner : Signal (Task.Task x ())
port runner =
    Console.run tests
