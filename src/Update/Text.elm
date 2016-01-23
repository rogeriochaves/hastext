module Update.Text where

import Action.Text exposing (..)
import Model.Text exposing (Model)

update : Action -> Model -> Model
update action model =
  case action of
    NoOp ->
      model
    UpdateText str ->
      { model | text = str }
