module View.MainPane.TextBox where

import Signal exposing (Address)
import Action.Main exposing (Action)
import Update.Text exposing (Model)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import ActionCreators.Text exposing (updateText)
import String exposing (length)

textbox : Address Action -> Model -> Html
textbox address model =
  section [] [
    div [ class "char-count" ] [
      model.text
        |> length
        |> ((-) 140)
        |> toString
        |> text
    ],
    h1 [] [
      text "What's happening?"
    ],
    textarea [ class "textbox", on "input" targetValue (updateText address) ] [
      text model.text
    ]
  ]
