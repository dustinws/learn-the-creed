module Menu exposing (..)

import Html exposing (..)
import Html.Attributes as A



---- VIEW ----


view : Html msg
view =
    div
        [ A.class "flex"
        , A.class "flex-col"
        , A.class "space-y-4"
        , A.class "text-4xl"
        , A.class "p-4"
        , A.class "font-thin"
        ]
        [ a
            [ A.href "/" ]
            [ text "Home" ]
        , hr [] []
        , a
            [ A.href "/about" ]
            [ text "About" ]
        , hr [] []
        , a
            [ A.href "/contact" ]
            [ text "Contact" ]
        ]
