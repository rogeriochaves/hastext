module Main (main) where

import Html exposing (Html)
import Signal exposing (Signal)
import StartApp.Simple as StartApp
import Update.Main exposing (initialModel, update)
import View.Main exposing (view)

main : Signal Html
main =
  StartApp.start { model = initialModel, view = view, update = update }
