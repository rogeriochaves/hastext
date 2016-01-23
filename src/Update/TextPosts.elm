module Update.TextPosts where

import Action.Main exposing (..)
import Action.TextPosts exposing (..)
import Model.TextPosts exposing (Model)

update : Action.Main.Action -> Model -> Model
update action model =
  case action of
    ActionForTextPosts (AddTextPost textPost) ->
      textPost :: model
    _ ->
      model
