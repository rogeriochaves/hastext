module Action.Main where

import Action.NewText

type Action = NoOp
            | ActionForNewText (Action.NewText.Action)
