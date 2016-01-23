module View.MainPane.Timeline.TextPost where

import Html exposing (..)
import Html.Attributes exposing (..)

textPost : String -> Html
textPost value =
  li [class "timeline-text"] [
    text value
  ]
