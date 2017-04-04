module Prelude.EDSLTypeclasses.OrderingC
    ( OrderingC (..)
    ) where

import Prelude (Ordering (..))

import Prelude.EDSLTypeclasses.Eq

class Eq a => OrderingC a where

    lt :: a

    eq :: a

    gt :: a

instance OrderingC Ordering where

    lt = LT

    eq = EQ

    gt = GT
