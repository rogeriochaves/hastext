module Action.Main where

import Signal exposing (Signal, Address)
import Action.Text as ActionText

type Action = NoOp
            | ActionForText (ActionText.Action)

actions : Signal.Mailbox Action
actions = Signal.mailbox NoOp
