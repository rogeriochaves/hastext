module Update.Main where

import Action.Main exposing (..)
import Model.Main exposing (Model)
import Update.Text exposing (update)

update : Action -> Model -> Model
update actionFor model =
  case actionFor of
    NoOp ->
      model
    ActionForText action ->
      { model | text = Update.Text.update action model.text }
