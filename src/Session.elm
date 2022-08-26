module Session exposing (..)

import Browser.Navigation as Nav
import Route


type alias Session =
    { navKey : Nav.Key
    , route : Route.Route
    }
