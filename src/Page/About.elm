module Page.About exposing (..)

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
            [ text "About" ]
        , p
            [ A.class "m-4"
            , A.class "font-thin"
            ]
            [ text "This website was originally created so that I could use it to study for my own board. I made it public so that others might use it too." ]
        , h1
            [ A.class "text-4xl"
            , A.class "font-thin"
            ]
            [ text "Adding Creeds / Features" ]
        , p
            [ A.class "m-4"
            , A.class "font-thin"
            ]
            [ text "If you would like to add a creed or propose an idea for a new feature, feel free to send me an email. If it seems like something that other people could use as well, then I would be happy to add it." ]
        , div
            [ A.class "m-4", A.class "font-thin" ]
            [ text "Head over to the "
            , a
                [ A.href "/contact"
                , A.class "text-blue-500"
                , A.class "underline"
                ]
                [ text "contact" ]
            , text " page to send me an email."
            ]
        ]
