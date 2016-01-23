module Update.Main where

import Action.Main exposing (..)
import Model.Main exposing (Model)
import Update.NewText
import Update.TextPosts

update : Action -> Model -> Model
update action model =
  { model |
      newText   = Update.NewText.update action model.newText,
      textPosts = Update.TextPosts.update action model.textPosts
  }
