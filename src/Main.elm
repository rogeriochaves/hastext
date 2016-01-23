module Main (main) where

import Html exposing (Html)
import Signal exposing (Signal)
import StartApp.Simple as StartApp
import Model.Main exposing (model)
import View.Main exposing (view)
import Update.Main exposing (update)

main : Signal Html
main =
  StartApp.start { model = model, view = view, update = update }
