{-# LANGUAGE FlexibleInstances, MultiParamTypeClasses, Safe #-}
{-# OPTIONS_GHC -Wall -fno-warn-orphans -Werror #-}

{-|
Module      : Data.Tuple.Append.Instances.DList
Description : A module that contains typeclasses instances for the dlist package.
Maintainer  : hapytexeu+gh@gmail.com
Stability   : experimental
Portability : POSIX

A module that contains typeclasses instances for the 'DList', and 'DNonEmpty' data types.
-}

module Data.Tuple.Append.Instances.DList () where

import Data.DList(DList, append, cons, snoc)
import Data.DList.DNonEmpty(DNonEmpty)
import qualified Data.DList.DNonEmpty as DN(append, cons, snoc)
import Data.Tuple.Append.Class(TupleAddL((<++)), TupleAddR((++>)), TupleAppend((+++)))

instance TupleAddL a (DList a) (DList a) where
  (<++) = cons

instance TupleAddR (DList a) a (DList a) where
  (++>) = snoc

instance TupleAppend (DList a) (DList a) (DList a) where
  (+++) = append

instance TupleAddL a (DNonEmpty a) (DNonEmpty a) where
  (<++) = DN.cons

instance TupleAddR (DNonEmpty a) a (DNonEmpty a) where
  (++>) = DN.snoc

instance TupleAppend (DNonEmpty a) (DNonEmpty a) (DNonEmpty a) where
  (+++) = DN.append
