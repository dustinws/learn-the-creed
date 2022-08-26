module Header exposing (view)

import Html exposing (..)
import Html.Attributes as A
import Html.Events as E



----- VIEW ----


view : msg -> Html msg
view toggleMenu =
    renderHeaderContainer
        [ renderLeftSide
            [ renderLogo
            , renderTagline
            , renderVersion
            ]
        , renderRightSide
            [ renderLink "Home" "/"
            , renderLink "About" "/about"
            , renderLink "Contact" "/contact"
            , renderMenuIcon toggleMenu
            ]
        ]


renderHeaderContainer : List (Html msg) -> Html msg
renderHeaderContainer =
    div
        [ A.class "flex"
        , A.class "w-full"
        , A.class "items-center"
        , A.class "justify-between"
        , A.class "h-16"
        , A.class "px-4"
        , A.class "bg-indigo-100"
        ]


renderLeftSide : List (Html msg) -> Html msg
renderLeftSide =
    div
        [ A.class "flex"
        , A.class "items-center"
        ]


renderRightSide : List (Html msg) -> Html msg
renderRightSide =
    div
        [ A.class "flex"
        , A.class "items-center"
        , A.class "space-x-6"
        , A.class "text-lg"
        , A.class "font-thin"
        ]


renderLogo : Html msg
renderLogo =
    a [ A.href "/" ]
        [ img
            [ A.class "h-8"
            , A.src "/seargent.png"
            , A.alt ""
            ]
            []
        ]


renderTagline : Html msg
renderTagline =
    div
        [ A.class "text-xl"
        , A.class "pl-4"
        , A.class "justify-self-center"
        , A.class "hidden"
        , A.class "sm:flex"
        ]
        [ text "Learn the Creed" ]


renderVersion : Html msg
renderVersion =
    div
        [ A.class "font-thin"
        , A.class "px-4"
        ]
        [ text "v0.0.10" ]


renderLink : String -> String -> Html msg
renderLink name url =
    a
        [ A.href url
        , A.class "hidden"
        , A.class "sm:flex"
        ]
        [ text name ]


renderMenuIcon : msg -> Html msg
renderMenuIcon toggleMenu =
    div
        [ A.class "flex"
        , A.class "sm:hidden"
        , E.onClick toggleMenu
        ]
        [ img
            [ A.src "/menu.svg"
            , A.class "h-7"
            , A.class "cursor-pointer"
            ]
            []
        ]
