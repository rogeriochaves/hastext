module Update.Main where

import Action.Main exposing (..)
import Model.Main exposing (Model)
import Update.NewText exposing (update)

update : Action -> Model -> Model
update actionFor model =
  case actionFor of
    NoOp ->
      model
    ActionForNewText action ->
      { model | newText = Update.NewText.update action model.newText }
