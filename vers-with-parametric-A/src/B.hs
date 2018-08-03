module B where

import A

import Lens.Micro.Platform

type AB = A B

data B = B (AS B ())

f :: B
f = B $ i .= 18
