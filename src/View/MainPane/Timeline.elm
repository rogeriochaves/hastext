module View.MainPane.Timeline where

import Html exposing (..)
import Html.Attributes exposing (..)
import View.MainPane.Timeline.TextPost exposing (textPost)
import Model.TextPosts exposing (Model)

timeline : Model -> Html
timeline textPosts =
  ul [class "timeline"]
    (List.map textPost textPosts)
