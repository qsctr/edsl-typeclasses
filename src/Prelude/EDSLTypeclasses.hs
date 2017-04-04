module Prelude.EDSLTypeclasses
    ( module Prelude
    , module Prelude.EDSLTypeclasses.BoolC
    , module Prelude.EDSLTypeclasses.OrderingC
    , module Prelude.EDSLTypeclasses.Eq
    , module Prelude.EDSLTypeclasses.Ord
    ) where

import Prelude hiding ((&&), (||), not, otherwise, Eq (..), Ord (..))

import Prelude.EDSLTypeclasses.BoolC
import Prelude.EDSLTypeclasses.OrderingC

import Prelude.EDSLTypeclasses.Eq
import Prelude.EDSLTypeclasses.Ord
