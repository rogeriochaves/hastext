module Action.Main where

import Action.NewText
import Action.TextPosts

type Action = NoOp
            | ActionForNewText (Action.NewText.Action)
            | ActionForTextPosts (Action.TextPosts.Action)
