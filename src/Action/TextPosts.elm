module Action.TextPosts where

import Model.TextPosts exposing (TextPost)

type Action = NoOp
            | AddTextPost TextPost
