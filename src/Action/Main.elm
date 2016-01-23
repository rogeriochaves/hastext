module Action.Main where

import Action.NewText as ActionNewText

type Action = NoOp
            | ActionForNewText (ActionNewText.Action)
