module View.MainPane.Sidebar where

import Html exposing (..)
import Html.Attributes exposing (..)

sidebar : Html
sidebar =
  aside [class "sidebar"] [
    text "yourname"
  ]
