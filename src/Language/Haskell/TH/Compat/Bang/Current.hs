module Language.Haskell.TH.Compat.Bang.Current (
  Bang, BangQ,
  BangType, BangTypeQ,
  VarBangType, VarBangTypeQ,

  bangType, varBangType,
  ) where

import Language.Haskell.TH.Syntax
  (Bang, BangType, VarBangType,)
import Language.Haskell.TH.Lib (BangQ)
import Language.Haskell.TH
  (BangTypeQ, bangType, VarBangTypeQ, varBangType,)
