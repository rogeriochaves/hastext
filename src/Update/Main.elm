module Update.Main where

import Action.Main exposing (..)
import Update.Text as UpdateText

type alias Model =
  { text : UpdateText.Model }

model : Model
model =
  { text = UpdateText.model }

update : Action -> Model -> Model
update actionFor model =
  case actionFor of
    NoOp ->
      model
    ActionForText action ->
      { model | text = UpdateText.update action model.text }
