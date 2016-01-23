module View.MainPane.Timeline where

import Html exposing (..)
import Html.Attributes exposing (..)
import View.MainPane.Timeline.TextPost exposing (textPost)

timeline : Html
timeline =
  ul [class "timeline"]
    (List.map textPost [ "foo", "bar" ])
