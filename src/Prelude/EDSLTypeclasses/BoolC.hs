{-# LANGUAGE RebindableSyntax #-}

module Prelude.EDSLTypeclasses.BoolC
    ( BoolC (..)
    ) where

import Prelude (Bool (..))

class BoolC a where

    infixr 3 &&
    infixr 2 ||

    true :: a

    false :: a

    ifThenElse :: a -> b -> b -> b

    (&&) :: a -> a -> a
    x && y = if x then y else false

    (||) :: a -> a -> a
    x || y = if x then true else y

    not :: a -> a
    not x = if x then false else true
    
    otherwise :: a
    otherwise = true

instance BoolC Bool where

    true = True

    false = False

    ifThenElse x a b = if x then a else b
