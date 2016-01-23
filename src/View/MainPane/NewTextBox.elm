module View.MainPane.NewTextBox where

import Signal exposing (Address)
import Action.Main exposing (Action)
import Model.NewText exposing (Model)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import ActionCreators.NewText exposing (updateNewText)
import String exposing (length)
import ActionCreators.TextPosts exposing (addTextPost)

actionForText : Address Action -> String -> Signal.Message
actionForText address str =
  if String.right 1 str == "\n" then addTextPost address str else updateNewText address str

newTextbox : Address Action -> Model -> Html
newTextbox address model =
  section [] [
    div [ class "char-count" ] [
      model.newText
        |> length
        |> ((-) 140)
        |> toString
        |> text
    ],
    h1 [] [
      text "What's happening?"
    ],
    textarea
      [ class "textbox"
      , on "input" targetValue (actionForText address)
      , value model.newText ] [ ]
  ]
