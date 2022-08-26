module Page.Landing exposing (..)

import Data exposing (Creed)
import Dict
import Html exposing (..)
import Html.Attributes as A



---- VIEW ----


view : Html msg
view =
    div
        [ A.class "flex"
        , A.class "flex-col"
        , A.class "m-10"
        , A.class "h-screen"
        , A.class "space-y-10"
        , A.class "items-center"
        ]
        (List.map renderCreed (Dict.values Data.creeds))


renderCreed : Creed -> Html msg
renderCreed creed =
    a
        [ A.href ("/review/" ++ creed.slug)
        , A.class "flex"
        , A.class "flex-col"
        , A.class "items-center"
        , A.class "justify-center"
        , A.class "shadow-md"
        , A.class "rounded"
        , A.class "border-2"
        , A.class "hover:shadow-lg"
        , A.class "w-96"
        , A.class "h-16"
        ]
        [ span [ A.class "text-xl" ] [ text creed.name ]
        , span [ A.class "font-thin" ] [ text creed.description ]
        ]
