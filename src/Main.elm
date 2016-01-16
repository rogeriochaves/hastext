module Main (main) where

import Html exposing (Html, div, text)
import Html.Events exposing (..)
import View.Header exposing (header)
import View.MainPane exposing (mainPane)
import Signal exposing (Signal, Address)
import Action.Main exposing (Action, actions)
import Update.Main exposing (Model, model)

main : Signal Html
main =
  Signal.map (view actions.address) model

view : Address Action -> Model -> Html
view address model =
  div [] [
    header,
    mainPane address model
  ]
