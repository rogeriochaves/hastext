module Model.Main where

import Model.Text

type alias Model =
  { text : Model.Text.Model }

model : Model
model =
  { text = Model.Text.model }
