module Page.UnknownCreed exposing (..)

import Html exposing (..)
import Html.Attributes as A



---- VIEW ----


view : String -> Html msg
view slug =
    div
        [ A.class "flex"
        , A.class "flex-col"
        , A.class "h-full"
        , A.class "justify-center"
        , A.class "items-center"
        , A.class "m-10"
        , A.class "space-y-16"
        ]
        [ h1
            [ A.class "text-4xl" ]
            [ text slug ]
        , h1
            [ A.class "text-2xl" ]
            [ text "Unfortunately we do not currently support this creed." ]
        , h1
            [ A.class "text-lg" ]
            [ text "If you think that we should add this to our library, please email us with a link to the creed on an official website so that we can verify it and add the correct version." ]
        , a
            [ A.href "mailto:duwstiles@pm.me" ]
            [ button
                [ A.class "border-2"
                , A.class "border-slate-300"
                , A.class "text-lg"
                , A.class "p-4"
                , A.class "rounded"
                , A.class "hover:shadow-md"
                ]
                [ text "Send Email" ]
            ]
        ]
