module TestHelpers where

import ElmTest exposing (..)

describe : String -> List Test -> Test
describe = suite

it : String -> Assertion -> Test
it = test

toBe : a -> a -> Bool
toBe = (==)

expect : a -> (a -> b -> Bool) -> b -> Assertion
expect actual matchs expected = assert <| actual `matchs` expected
