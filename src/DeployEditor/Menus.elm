module DeployEditor.Menus exposing (Menu(..), decodeMenu, encodeMenu, menus, toString)

import Json.Decode as Decode
import Json.Encode as Encode


type Menu
    = Deploy
    | Domain


toString menu =
    case menu of
        Deploy ->
            "Deploy"

        Domain ->
            "Domain"



-- if you want to change menu's order, change here:


menus =
    [ Deploy
    , Domain
    ]



-- encode and decode
-- useless to keep in spec
-- @@TODO: validate
-- this will be the default menu to open


decodeMenu =
    Deploy
        |> Decode.succeed


encodeMenu _ =
    Encode.null
