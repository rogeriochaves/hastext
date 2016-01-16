module View.MainPane where

import Signal exposing (Address)
import Action.Main exposing (Action)
import Update.Main exposing (Model)
import Html exposing (..)
import Html.Attributes exposing (..)
import View.MainPane.TextBox exposing (textbox)
import View.MainPane.Sidebar exposing (sidebar)

mainPane : Address Action -> Model -> Html
mainPane address model =
  div [ class "main-pane" ] [
    section [ class "timeline" ] [
      textbox address model.text
    ],
    sidebar
  ]
