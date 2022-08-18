module Main exposing (..)

import Browser
import Creed
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Input as Input
import Html exposing (Html)



---- MODEL ----


type alias Model =
    { showCreed : Bool
    , editor : String
    }


init : ( Model, Cmd Msg )
init =
    ( { showCreed = True, editor = "" }, Cmd.none )



---- UPDATE ----


type Msg
    = ShowPracticeEditor
    | ShowCreed
    | UpdateEditor String


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ShowPracticeEditor ->
            ( { model | showCreed = False }, Cmd.none )

        ShowCreed ->
            ( { model | showCreed = True, editor = "" }, Cmd.none )

        UpdateEditor val ->
            ( { model | editor = val }, Cmd.none )


normalizeCreed : String -> String
normalizeCreed creed =
    creed
        |> String.trim
        |> String.replace " " ""
        |> String.replace "\"" ""
        |> String.replace "'" ""


practiceCreedIsCorrect : String -> String -> Bool
practiceCreedIsCorrect creed val =
    normalizeCreed creed == normalizeCreed val


getColors : String -> String -> ( Color, Color )
getColors creed val =
    let
        normalizedCreed =
            normalizeCreed creed

        normalizedPracticeVal =
            normalizeCreed val

        valSoFar =
            String.dropRight (String.length normalizedCreed - String.length normalizedPracticeVal) normalizedCreed

        _ =
            Debug.log "creed" normalizedCreed

        _ =
            Debug.log "val so far" valSoFar
    in
    if normalizedCreed == normalizedPracticeVal then
        ( rgb 0 1 0, rgb 0 1 0 )

    else if valSoFar == normalizedPracticeVal then
        ( rgb 0 0 0, rgb 1 1 1 )

    else
        ( rgb 1 0 0, rgb 1 0 0 )



---- VIEW ----


view : Model -> Html Msg
view model =
    let
        ( borderColor, bgColor ) =
            getColors Creed.ncoCreed model.editor
    in
    layout [] <|
        column
            [ centerX
            , centerY
            , spacing 25
            ]
            [ if model.showCreed then
                text Creed.ncoCreed

              else
                Input.multiline
                    [ width (px 800)
                    , height (px 800)
                    , Background.color bgColor
                    , Border.color borderColor
                    ]
                    { text = model.editor
                    , onChange = UpdateEditor
                    , placeholder = Nothing
                    , label = Input.labelHidden "Editor"
                    , spellcheck = True
                    }
            , if model.showCreed then
                Input.button
                    []
                    { label = text "Practice"
                    , onPress = Just ShowPracticeEditor
                    }

              else
                Input.button
                    []
                    { label = text "View Creed"
                    , onPress = Just ShowCreed
                    }
            ]



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
