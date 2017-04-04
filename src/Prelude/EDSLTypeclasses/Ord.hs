{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE RebindableSyntax #-}
{-# LANGUAGE UndecidableInstances #-}

module Prelude.EDSLTypeclasses.Ord
    ( Ord (..)
    ) where

import Prelude (Ordering)
import qualified Prelude

import Prelude.EDSLTypeclasses.BoolC
import Prelude.EDSLTypeclasses.OrderingC

import Prelude.EDSLTypeclasses.Eq

class (Eq a, OrderingC (OrdOrdering a)) => Ord a where

    type OrdOrdering a

    {-# MINIMAL (<=) | compare #-}

    infix 4 <, <=, >=, >

    compare :: a -> a -> OrdOrdering a
    compare x y = if x == y then eq else if x <= y then lt else gt

    (<) :: a -> a -> EqBool a
    x < y = x `compare` y == lt

    (>) :: a -> a -> EqBool a
    x > y = x `compare` y == gt

    (<=) :: a -> a -> EqBool a
    x <= y = x `compare` y /= gt

    (>=) :: a -> a -> EqBool a
    x >= y = x `compare` y /= lt

    max :: a -> a -> a
    max x y = if x <= y then y else x

    min :: a -> a -> a
    min x y = if x <= y then x else y

instance Prelude.Ord a => Ord a where

    type OrdOrdering a = Ordering

    compare = Prelude.compare

    (<) = (Prelude.<)

    (>) = (Prelude.>)

    (<=) = (Prelude.<=)

    (>=) = (Prelude.>=)

    max = Prelude.max

    min = Prelude.min
