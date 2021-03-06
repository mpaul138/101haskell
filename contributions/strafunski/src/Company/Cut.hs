module Company.Cut where

import Company.Data
import Company.Deriving
import Control.Monad.Identity
import Data.Generics.Strafunski.StrategyLib.StrategyPrelude
import Data.Generics.Strafunski.StrategyLib.TraversalTheme

cut :: Company -> Company
cut = runIdentity
    . applyTP (topdown (idTP `adhocTP` updSalary))
  where
    updSalary (Employee n a s) = return (Employee n a (s/2))
