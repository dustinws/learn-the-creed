module Page.Review exposing (..)

import Data exposing (Creed)
import Html exposing (..)
import Html.Attributes as A



---- VIEW ----


view : Creed -> Html msg
view creed =
    div
        [ A.class "flex"
        , A.class "flex-col"
        , A.class "items-center"
        , A.class "flex-grow"
        , A.class "space-y-8"
        , A.class "m-6"
        , A.class "overflow-auto"
        ]
        [ renderBackButton
        , renderCreedName creed.name
        , div
            [ A.class "font-thin" ]
            (List.map renderStanza creed.stanzas)
        , renderPracticeButton creed.slug
        ]


renderBackButton : Html msg
renderBackButton =
    a [ A.href "/" ]
        [ button [] [ text "Back To Main" ] ]


renderCreedName : String -> Html msg
renderCreedName name =
    h1
        [ A.class "text-4xl"
        , A.class "font-thin"
        ]
        [ text ("The " ++ name) ]


renderStanza : String -> Html msg
renderStanza stanza =
    div
        [ A.class "m-4"
        ]
        [ p [] [ text stanza ] ]


renderPracticeButton : String -> Html msg
renderPracticeButton slug =
    a
        [ A.href ("/practice/" ++ slug)
        ]
        [ button
            [ A.class "p-2"
            , A.class "rounded"
            , A.class "border-2"
            , A.class "border-black"
            , A.class "w-full"
            ]
            [ text "Practice" ]
        ]
