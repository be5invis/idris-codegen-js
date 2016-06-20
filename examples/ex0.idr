module Main

import Js.Browser

upd : String -> String -> (String, ASync String)
upd x y = (y, never)

vw : String -> View String
vw s = textinput' ++ text s


page : SimpleApp String String
page = MkSimpleApp
          ""
          vw
          upd


main : JS_IO ()
main = do
  runApp page
