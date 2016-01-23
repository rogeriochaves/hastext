module View.MainPane where

import Signal exposing (Address)
import Action.Main exposing (Action)
import Model.Main exposing (Model)
import Html exposing (..)
import Html.Attributes exposing (..)
import View.MainPane.NewTextBox exposing (newTextbox)
import View.MainPane.Sidebar exposing (sidebar)

mainPane : Address Action -> Model -> Html
mainPane address model =
  div [ class "main-pane" ] [
    section [ class "timeline" ] [
      newTextbox address model.newText
    ],
    sidebar
  ]
