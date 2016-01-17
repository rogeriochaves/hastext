module Update.TextTest where

import Update.Text exposing (..)

import ElmTestBDDStyle exposing (..)
import Check.Investigator exposing (..)
import Action.Text as ActionText

tests : Test
tests =
  describe "TextTest" [
    it "returns the same model for NoOp action" <|
      let
        action = ActionText.NoOp
      in
        expect (update action initialModel) toBe initialModel

  , itAlways "updates the text passed on the UpdateText action" <|
      expectEach
        (\str -> update (ActionText.UpdateText str) { text = "" })
      toBeTheSameAs
        (\str -> { text = str })
      forEvery
        string
  ]
