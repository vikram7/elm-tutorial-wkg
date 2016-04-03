module Main (..) where

import Html exposing (Html)
import Mouse

view : Int -> Html
view x =
  Html.text (toString x)

main : Signal.Signal Html
main =
  Signal.map view doubleSignal

double : Int -> Int
double x = 
  x * 2

doubleSignal : Signal Int
doubleSignal =
  Signal.map double Mouse.x
