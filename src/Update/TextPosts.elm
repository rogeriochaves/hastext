module Update.TextPosts where

import Action.TextPosts exposing (..)
import Model.TextPosts exposing (Model)

update : Action -> Model -> Model
update action model =
  case action of
    NoOp ->
      model
    AddTextPost textPost ->
      textPost :: model
