module View.Main where

import Html exposing (Html, div, text)
import Signal exposing (Address)
import View.Header exposing (header)
import View.MainPane exposing (mainPane)
import Update.Main exposing (Model)
import Action.Main exposing (Action)

view : Address Action -> Model -> Html
view address model =
  div [] [
    header,
    mainPane address model
  ]
