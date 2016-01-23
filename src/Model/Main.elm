module Model.Main where

import Model.NewText

type alias Model =
  { newText : Model.NewText.Model }

model : Model
model =
  { newText = Model.NewText.model }
