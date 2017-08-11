module Test.Main where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE)
import Test.Data.Function.Pipe (main) as Test

main ∷ ∀ e. Eff (console ∷ CONSOLE | e) Unit
main = Test.main
