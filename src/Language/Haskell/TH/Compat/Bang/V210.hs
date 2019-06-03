module Language.Haskell.TH.Compat.Bang.V210 (
  Bang, BangQ,
  BangType, BangTypeQ,
  VarBangType, VarBangTypeQ,

  bangType, varBangType,
  ) where

import Language.Haskell.TH.Syntax
  (Strict, StrictType, VarStrictType)
import Language.Haskell.TH
  (Q, TypeQ, Name, strictType, varStrictType)

type Bang = Strict
type BangQ = Q Bang

type BangType = StrictType
type BangTypeQ = Q BangType

type VarBangType = VarStrictType
type VarBangTypeQ = Q VarBangType

bangType :: BangQ -> TypeQ -> BangTypeQ
bangType = strictType

varBangType :: Name -> BangTypeQ -> VarBangTypeQ
varBangType = varStrictType
