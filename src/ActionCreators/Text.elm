module ActionCreators.Text where

import Signal exposing (Signal, Address)
import Action.Main as ActionMain
import Action.Text as ActionText

updateText : Address ActionMain.Action -> String -> Signal.Message
updateText address =
  (Signal.message address << ActionMain.ActionForText << ActionText.UpdateText)
