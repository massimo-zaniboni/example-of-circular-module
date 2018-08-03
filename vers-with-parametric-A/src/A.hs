{-# Language TemplateHaskell #-}

module A where

import Lens.Micro.TH
import Lens.Micro.Platform
import Control.Monad.State

data A b = A { _i :: Int, _b :: b }

type AS b a = State (A b) a

makeLenses ''A
