{-# Language TemplateHaskell #-}

module A where

import {-# SOURCE #-} B

import Lens.Micro.TH
import Lens.Micro.Platform
import Control.Monad.State

-- data A = A Int B

data A = A { _i :: Int,
             _b :: B }
type AS a = State A a

makeLenses ''A

