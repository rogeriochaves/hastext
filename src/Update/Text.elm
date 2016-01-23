module Update.Text where

import Signal exposing (Signal)
import Action.Text as ActionText

type alias Model =
  { text : String }

model : Model
model =
  { text = "" }

update : ActionText.Action -> Model -> Model
update action model =
  case action of
    ActionText.NoOp ->
      model
    ActionText.UpdateText str ->
      { model | text = str }
