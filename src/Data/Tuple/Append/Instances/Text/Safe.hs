{-# LANGUAGE FlexibleInstances, MultiParamTypeClasses, Safe #-}
{-# OPTIONS_GHC -Wall -fno-warn-orphans -Werror #-}

{-|
Module      : Data.Tuple.Append.Instances.Text.Safe
Description : A module that contains typeclasses instances for the safe modules of the text package.
Maintainer  : hapytexeu+gh@gmail.com
Stability   : experimental
Portability : POSIX

A module that contains typeclasses instances for the 'Text' and lazy 'TL.Text' data types.
-}

module Data.Tuple.Append.Instances.Text.Safe () where

import Data.Text(Text, append, cons, snoc)
import qualified Data.Text.Lazy as TL(Text, append, cons, snoc)
import Data.Tuple.Append.Class(TupleAddL((<++)), TupleAddR((++>)), TupleAppend((+++)))

instance TupleAddL Char Text Text where
  (<++) = cons

instance TupleAddR Text Char Text where
  (++>) = snoc

instance TupleAppend Text Text Text where
  (+++) = append

instance TupleAddL Char TL.Text TL.Text where
  (<++) = TL.cons

instance TupleAddR TL.Text Char TL.Text where
  (++>) = TL.snoc

instance TupleAppend TL.Text TL.Text TL.Text where
  (+++) = TL.append
