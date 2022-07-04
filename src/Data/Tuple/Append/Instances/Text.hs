{-# LANGUAGE FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -Wall -fno-warn-orphans -Werror #-}

{-|
Module      : Data.Tuple.Append.Instances.Text
Description : A module that contains typeclasses instances for the text package.
Maintainer  : hapytexeu+gh@gmail.com
Stability   : experimental
Portability : POSIX

A module that contains typeclasses instances for the 'Data.Text.Text', lazy 'Data.Text.Lazy.Text', and 'Stream' data types.
-}

module Data.Tuple.Append.Instances.Text () where

import Data.Text.Internal.Fusion.Types(Stream)
import qualified Data.Text.Internal.Fusion.Common as TIF(append, cons, snoc)
import Data.Tuple.Append.Class(TupleAddL((<++)), TupleAddR((++>)), TupleAppend((+++)))
import Data.Tuple.Append.Instances.Text.Safe()

instance TupleAddL Char (Stream Char) (Stream Char) where
  (<++) = TIF.cons

instance TupleAddR (Stream Char) Char (Stream Char) where
  (++>) = TIF.snoc

instance TupleAppend (Stream Char) (Stream Char) (Stream Char) where
  (+++) = TIF.append
