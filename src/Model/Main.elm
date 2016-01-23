module Model.Main where

import Model.NewText
import Model.TextPosts

type alias Model =
  { newText : Model.NewText.Model
  , textPosts : Model.TextPosts.Model
  }

model : Model
model =
  { newText = Model.NewText.model
  , textPosts = Model.TextPosts.model
  }
