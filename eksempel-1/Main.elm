module Main exposing (..)

import Html exposing (Html, beginnerProgram, text, div, button)
import Html.Events exposing (onClick)
import Http


type alias Model =
    Int


type Msg
    = Increase
    | Decrease
    | Reset
    | FileDownloaded (Result Http.Error String)


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increase ->
            model + 1

        Decrease ->
            model - 1

        Reset ->
            0

        FileDownloaded (Ok file) ->
            model

        FileDownloaded (Err errorMessage) ->
            Debug.log (toString errorMessage) model


view : Int -> Html Msg
view model =
    div []
        [ text <| "Tallet er " ++ toString model
        , button [ onClick Increase ] [ text "+" ]
        , button [ onClick Decrease ] [ text "-" ]
        , button [ onClick Reset ] [ text "Reset" ]
        ]


main : Program Never Model Msg
main =
    beginnerProgram
        { model = 0
        , view = view
        , update = update
        }
