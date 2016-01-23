module ActionCreators.NewText where

import Signal exposing (Signal, Address)
import Action.Main as ActionMain
import Action.NewText as ActionNewText

updateNewText : Address ActionMain.Action -> String -> Signal.Message
updateNewText address =
  (Signal.message address << ActionMain.ActionForNewText << ActionNewText.UpdateNewText)
