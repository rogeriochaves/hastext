module ActionCreators.TextPosts where

import Signal exposing (Signal, Address)
import Action.Main as ActionMain
import Action.TextPosts as ActionTextPosts

addTextPost : Address ActionMain.Action -> String -> Signal.Message
addTextPost address text =
  Signal.message address <| ActionMain.ActionForTextPosts <| ActionTextPosts.AddTextPost {text = text}
