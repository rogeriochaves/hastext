module View.MainPane.NewTextBox where

import Signal exposing (Address)
import Action.Main exposing (Action)
import Model.NewText exposing (Model)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import ActionCreators.NewText exposing (updateNewText)
import String exposing (length)
import Json.Decode as Json
import ActionCreators.TextPosts exposing (addTextPost)

onEnter : Address Action -> String -> Attribute
onEnter address value =
    on "keydown"
      (Json.customDecoder keyCode is13)
      (\_ -> addTextPost address value)

is13 : Int -> Result String ()
is13 code =
  if code == 13 then Ok () else Err "not the right key code"

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
    textarea [ class "textbox", on "input" targetValue (updateNewText address), onEnter address model.newText ] [
      text model.newText
    ]
  ]
