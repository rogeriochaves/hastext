module Update.TextTest where

import Update.Text exposing (..)

import ElmTest exposing (..)
import TestHelpers exposing (..)
import Action.Text as ActionText

tests : Test
tests =
  describe "TextTest" [
    it "returns the same model for NoOp action" <|
      let
        action = ActionText.NoOp
      in
        expect (update action initialModel) toBe initialModel

  , it "updates the text for a UpdateText action" <|
      let
        action = ActionText.UpdateText "bar"
        model = { text = "foo" }
      in
        expect (update action model) toBe { text = "bar" }
  ]
