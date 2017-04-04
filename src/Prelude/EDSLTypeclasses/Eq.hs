{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE UndecidableInstances #-}

module Prelude.EDSLTypeclasses.Eq
    ( Eq (..)
    ) where

import Prelude (Bool, ($))
import qualified Prelude

import Prelude.EDSLTypeclasses.BoolC

class BoolC (EqBool a) => Eq a where

    type EqBool a

    {-# MINIMAL (==) | (/=) #-}

    (==) :: a -> a -> EqBool a
    x == y = not $ x /= y

    (/=) :: a -> a -> EqBool a
    x /= y = not $ x == y

instance Prelude.Eq a => Eq a where

    type EqBool a = Bool

    (==) = (Prelude.==)

    (/=) = (Prelude./=)
