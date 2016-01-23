module Update.NewText where

import Action.Main exposing (..)
import Action.NewText exposing (..)
import Model.NewText exposing (Model)

update : Action.Main.Action -> Model -> Model
update action model =
  case action of
    ActionForNewText (UpdateNewText str) ->
      { model | newText = str }
    _ ->
      model
