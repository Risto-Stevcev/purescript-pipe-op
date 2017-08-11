module Test.Data.Function.Pipe where

import Prelude
import Data.Array (filter)
import Data.Foldable (foldl)
import Data.Function.Pipe ((<|), (|>))
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)

main ∷ ∀ e. Eff (console ∷ CONSOLE | e) Unit
main = do
  [1,2,3,4] |> map ((+) 2) |> filter ((>) 6) |> foldl (+) 0 |> show |> log
  log <| show 123
