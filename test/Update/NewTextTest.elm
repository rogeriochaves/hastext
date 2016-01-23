module Update.NewTextTest where

import Update.NewText exposing (..)
import Model.NewText exposing (model)

import ElmTestBDDStyle exposing (..)
import Check.Investigator exposing (..)
import Action.NewText as ActionNewText

tests : Test
tests =
  describe "NewTextTest" [
    it "returns the same model for NoOp action" <|
      let
        action = ActionNewText.NoOp
      in
        expect (update action model) toBe model

  , itAlways "updates the newNewText passed on the UpdateNewText action" <|
      expectThat
        (\str -> update (ActionNewText.UpdateNewText str) { newText = "" })
      isTheSameAs
        (\str -> { newText = str })
      forEvery
        string
  ]
