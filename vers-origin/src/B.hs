module B where

import {-# SOURCE #-} A

import Lens.Micro.Platform

data B = B (AS ())

f :: B
f = B $ i .= 18
