module Model.TextPosts where

type alias TextPost = { text : String }

type alias Model = List TextPost

model : Model
model = []
