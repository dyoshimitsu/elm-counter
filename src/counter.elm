module Main exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }



-- MODEL


type alias Model =
    Int


init : Model
init =
    0



-- UPDATE


type Msg
    = Incliment
    | Decliment


update : Msg -> Model -> Model
update msg model =
    case msg of
        Incliment ->
            model + 1

        Decliment ->
            model - 1



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Decliment ] [ text "-" ]
        , div [] [ text (String.fromInt model) ]
        , button [ onClick Incliment ] [ text "+" ]
        ]
