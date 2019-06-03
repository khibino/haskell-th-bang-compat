{-# LANGUAGE CPP #-}

-- |
-- Module      : Language.Haskell.TH.Compat.Bang
-- Copyright   : 2019 Kei Hibino
-- License     : BSD3
--
-- Maintainer  : ex8k.hibino@gmail.com
-- Stability   : experimental
-- Portability : unknown
--
-- This module provides compatibility definitions of
-- bang-type template for before temaplate-haskell-2.10
module Language.Haskell.TH.Compat.Bang (
  -- * Compat type constructors
  Bang, BangQ,
  BangType, BangTypeQ,
  VarBangType, VarBangTypeQ,

  -- * Compat functions
  bangType, varBangType,
  ) where

#if MIN_VERSION_template_haskell(2,11,0)
import Language.Haskell.TH.Compat.Bang.Current
#else
import Language.Haskell.TH.Compat.Bang.V210
#endif
