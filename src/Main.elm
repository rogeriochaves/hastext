module Main (main) where

import Html exposing (Html)
import Signal exposing (Signal)
import StartApp.Simple as StartApp
import Update.Main exposing (model, update)
import View.Main exposing (view)

main : Signal Html
main =
  StartApp.start { model = model, view = view, update = update }
