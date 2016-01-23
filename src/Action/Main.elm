module Action.Main where

import Action.Text as ActionText

type Action = NoOp
            | ActionForText (ActionText.Action)
