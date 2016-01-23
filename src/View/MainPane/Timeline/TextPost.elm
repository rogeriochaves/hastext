module View.MainPane.Timeline.TextPost where

import Html exposing (..)
import Html.Attributes exposing (..)
import Model.TextPosts exposing (TextPost)

textPost : TextPost -> Html
textPost textPost =
  li [class "timeline-text"] [
    text textPost.text
  ]
