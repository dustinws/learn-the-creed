module Main exposing (main)

import Browser
import Browser.Navigation as Nav
import Data exposing (Creed)
import Dict
import Header
import Html exposing (Html)
import Html.Attributes as A
import Menu
import Page.About
import Page.Contact
import Page.Landing
import Page.Practice
import Page.Review
import Page.UnknownCreed
import Route
import Session exposing (Session)
import Url



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.application
        { init = init
        , update = update
        , view = view
        , subscriptions = always Sub.none
        , onUrlChange = ChangedUrl
        , onUrlRequest = ClickedLink
        }



---- MODEL ----


type alias Slug =
    String


type Model
    = Redirect Session
    | NotFound Session
    | ShowingMenu Model
    | Landing Session
    | About Session
    | Contact Session
    | Review Creed Session
    | Practice Creed Page.Practice.Model
    | UnknownCreed Slug Session


init : () -> Url.Url -> Nav.Key -> ( Model, Cmd Msg )
init _ url navKey =
    changeRouteTo url (Redirect { navKey = navKey, route = Route.fromUrl url })



---- UPDATE ----


changeRouteTo : Url.Url -> Model -> ( Model, Cmd Msg )
changeRouteTo url model =
    let
        session : Session
        session =
            toSession model
    in
    case Route.fromUrl url of
        Route.Landing ->
            ( Landing session, Cmd.none )

        Route.About ->
            ( About session, Cmd.none )

        Route.Contact ->
            ( Contact session, Cmd.none )

        Route.Review slug ->
            case Dict.get slug Data.creeds of
                Nothing ->
                    ( UnknownCreed slug session, Cmd.none )

                Just creed ->
                    ( Review creed session, Cmd.none )

        Route.Practice slug ->
            case Dict.get slug Data.creeds of
                Nothing ->
                    ( UnknownCreed slug session, Cmd.none )

                Just creed ->
                    ( Practice creed (Page.Practice.init session creed), Cmd.none )

        Route.NotFound ->
            ( NotFound session, Cmd.none )


toSession : Model -> Session
toSession model =
    case model of
        Redirect session ->
            session

        NotFound session ->
            session

        ShowingMenu prevModel ->
            toSession prevModel

        Landing session ->
            session

        About session ->
            session

        Contact session ->
            session

        Review _ session ->
            session

        Practice _ { session } ->
            session

        UnknownCreed _ session ->
            session


type Msg
    = ChangedUrl Url.Url
    | ClickedLink Browser.UrlRequest
    | ToggleMenu
    | GotPracticeMsg Page.Practice.Msg


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    let
        session =
            toSession model
    in
    case ( model, msg ) of
        ( _, ChangedUrl url ) ->
            changeRouteTo url model

        ( _, ClickedLink (Browser.Internal url) ) ->
            ( model, Nav.pushUrl session.navKey (Url.toString url) )

        ( _, ClickedLink (Browser.External href) ) ->
            ( model, Nav.load href )

        ( ShowingMenu prevModel, ToggleMenu ) ->
            ( prevModel, Cmd.none )

        ( _, ToggleMenu ) ->
            ( ShowingMenu model, Cmd.none )

        ( Practice creed state, GotPracticeMsg subMsg ) ->
            ( Practice creed (Page.Practice.update subMsg state), Cmd.none )

        _ ->
            ( model, Cmd.none )



---- VIEW ----


view : Model -> Browser.Document Msg
view model =
    { title = "Learn the Creed"
    , body =
        [ renderLayout
            [ Header.view ToggleMenu
            , renderPage model
            ]
        ]
    }


renderLayout : List (Html Msg) -> Html Msg
renderLayout =
    Html.div
        [ A.class "h-full"
        , A.class "min-h-screen"
        , A.class "w-screen"
        ]


renderPage : Model -> Html Msg
renderPage model =
    case model of
        Redirect _ ->
            Html.text ""

        NotFound _ ->
            Html.text "404 Not Found"

        ShowingMenu _ ->
            Menu.view

        Landing _ ->
            Page.Landing.view

        About _ ->
            Page.About.view

        Contact _ ->
            Page.Contact.view

        Review creed _ ->
            Page.Review.view creed

        Practice _ state ->
            Html.map GotPracticeMsg (Page.Practice.view state)

        UnknownCreed slug _ ->
            Page.UnknownCreed.view slug
