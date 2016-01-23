module Update.NewTextTest where

import Update.NewText exposing (..)
import Model.NewText exposing (model)

import ElmTestBDDStyle exposing (..)
import Check.Investigator exposing (..)
import Action.NewText exposing (..)
import Action.TextPosts exposing (..)
import Action.Main exposing (..)

tests : Test
tests =
  describe "NewTextTest" [
    it "returns the same model for NoOp action" <|
      let
        action = Action.Main.NoOp
      in
        expect (update action model) toBe model

  , itAlways "updates the newNewText passed on the UpdateNewText action" <|
      expectThat
        (\str -> update (ActionForNewText (UpdateNewText str)) { newText = "" })
      isTheSameAs
        (\str -> { newText = str })
      forEvery
        string

  , it "clears the newText when AddTextPost happens" <|
      let
        action = ActionForTextPosts (AddTextPost { text = "bla bla" })
        model = { newText = "foo bar" }
      in
        expect (update action model) toBe { newText = "" }
  ]
