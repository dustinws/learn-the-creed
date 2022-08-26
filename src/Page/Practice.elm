module Page.Practice exposing (Model, Msg, init, update, view)

import Data exposing (Creed)
import Html exposing (..)
import Html.Attributes as A
import Html.Events as E
import Html.Lazy as L
import Regex
import Session exposing (Session)



---- MODEL ----


type Status
    = Writing
    | Incorrect
    | Correct


type alias Model =
    { session : Session
    , creed : Creed
    , input : String
    , status : Status
    , selectedStanza : Maybe String
    }


init : Session -> Creed -> Model
init session creed =
    Model session creed "" Writing Nothing



---- UPDATE ----


type Msg
    = ChangedInput String
    | SelectStanza String


update : Msg -> Model -> Model
update msg model =
    case msg of
        ChangedInput input ->
            (setInput input >> updateStatus) model

        SelectStanza stanza ->
            if stanza == "Entire Creed" then
                { model | selectedStanza = Nothing }

            else
                { model | selectedStanza = Just stanza }


setInput : String -> Model -> Model
setInput input model =
    { model | input = input }


removeLines : String -> String
removeLines value =
    "[\\n|\\s]"
        |> Regex.fromString
        |> Maybe.withDefault Regex.never
        |> (\re -> Regex.replace re (always "") value)


removeCharacters : String -> String
removeCharacters value =
    "[^\\w|\\s]"
        |> Regex.fromString
        |> Maybe.withDefault Regex.never
        |> (\re -> Regex.replace re (always "") value)


normalizeText : String -> String
normalizeText =
    removeLines >> removeCharacters >> String.toLower


takeUntil : String -> String -> String
takeUntil short long =
    String.slice 0 (String.length short) long


updateStatus : Model -> Model
updateStatus model =
    let
        normalizedInput : String
        normalizedInput =
            normalizeText model.input

        entireCreed : String
        entireCreed =
            String.join " " model.creed.stanzas

        normalizedCreed : String
        normalizedCreed =
            model.selectedStanza
                |> Maybe.withDefault entireCreed
                |> normalizeText

        normalizedCreedSoFar : String
        normalizedCreedSoFar =
            takeUntil normalizedInput normalizedCreed

        isFinished : Bool
        isFinished =
            normalizedCreed == normalizedCreedSoFar

        hasErrors : Bool
        hasErrors =
            normalizedInput /= normalizedCreedSoFar

        status : Status
        status =
            if isFinished then
                Correct

            else if hasErrors then
                Incorrect

            else
                Writing
    in
    { model | status = status }


getBgColor : Status -> String
getBgColor status =
    case status of
        Writing ->
            "bg-white"

        Incorrect ->
            "bg-red-100"

        Correct ->
            "bg-green-100"



---- VIEW ----


view : Model -> Html Msg
view ({ creed } as model) =
    renderPageContainer
        [ L.lazy renderBackButton creed.slug
        , div [ A.class "flex", A.class "items-center" ]
            [ renderCreedName creed.name
            , renderStanzaSelector creed.stanzas
            ]
        , renderRules
        , renderPracticeWindow model.status model.input
        ]


renderPageContainer : List (Html Msg) -> Html Msg
renderPageContainer =
    div
        [ A.class "flex"
        , A.class "flex-col"
        , A.class "px-6"
        , A.class "py-4"
        , A.class "space-y-4"
        , A.class "justify-center"
        , A.class "flex-grow"
        ]


renderBackButton : String -> Html msg
renderBackButton slug =
    a [ A.href ("/review/" ++ slug) ]
        [ button
            [ A.class "border-2"
            , A.class "p-2"
            , A.class "rounded"
            , A.class "border-slate-400"
            , A.class "hover:shadow-md"
            ]
            [ text "Back To Creed" ]
        ]


renderCreedName : String -> Html msg
renderCreedName name =
    div
        [ A.class "m-6"
        , A.class "text-2xl"
        ]
        [ text name ]


renderStanzaSelector : List String -> Html Msg
renderStanzaSelector stanzas =
    let
        defaultOption =
            option [] [ text "Entire Creed" ]

        generatedOptions =
            List.indexedMap renderStanzaOption stanzas
    in
    select
        [ E.onInput SelectStanza ]
        (defaultOption :: generatedOptions)


renderStanzaOption : Int -> String -> Html msg
renderStanzaOption index stanza =
    option
        [ A.value stanza ]
        [ text ("Stanza " ++ String.fromInt (index + 1)) ]


renderRules : Html msg
renderRules =
    div
        [ A.class "m-6"
        , A.class "font-thin"
        ]
        [ text "* Punctuation and capitalization does not matter. Only the words." ]


renderPracticeWindow : Status -> String -> Html Msg
renderPracticeWindow status input =
    textarea
        [ A.placeholder "Begin typing here... Can you finish it?"
        , A.class "h-96"
        , A.class "textarea"
        , A.class "shadow-md"
        , A.class "rounded-md"
        , A.class "m-6"
        , A.class "p-6"
        , A.class "text-black"
        , A.class (getBgColor status)
        , A.value input
        , E.onInput ChangedInput
        ]
        []
