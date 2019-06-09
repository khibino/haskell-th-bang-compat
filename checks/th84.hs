{-# LANGUAGE TemplateHaskell #-}

import Language.Haskell.TH

main =
  sequence
  [ (print =<<) . runQ $ (,)
    <$> ((\x y -> x ++ " "++ y) <$> (show <$> u) <*> (show <$> s))
    <*> (show . ppr <$> bang u s)
  | u <- [noSourceUnpackedness, sourceNoUnpack, sourceUnpack]
  , s <- [noSourceStrictness, sourceLazy, sourceStrict]
  ]
