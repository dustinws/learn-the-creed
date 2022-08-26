module Page.Contact exposing (..)

import Html exposing (..)
import Html.Attributes as A



---- VIEW ----


view : Html msg
view =
    div
        [ A.class "flex"
        , A.class "flex-col"
        , A.class "items-center"
        , A.class "flex-grow"
        , A.class "space-y-8"
        , A.class "m-6"
        , A.class "overflow-auto"
        ]
        [ h1
            [ A.class "text-4xl"
            , A.class "font-thin"
            , A.class "underline"
            ]
            [ text "Contact" ]
        , p
            [ A.class "m-4"
            , A.class "font-thin"
            ]
            [ text "Currently the best way to contact me is via "
            , a
                [ A.href "mailto:duwstiles@pm.me"
                , A.class "text-blue-500"
                , A.class "underline"
                ]
                [ text "this" ]
            , text " email."
            ]
        ]
