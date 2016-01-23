module Update.NewText where

import Action.NewText exposing (..)
import Model.NewText exposing (Model)

update : Action -> Model -> Model
update action model =
  case action of
    NoOp ->
      model
    UpdateNewText str ->
      { model | newText = str }
