{-# LANGUAGE FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -Wall -fno-warn-orphans -Werror #-}

module Data.Tuple.Append.Instances.Text () where

import Data.Text(Text, append, cons, snoc)
import Data.Text.Internal.Fusion.Types(Stream)
import qualified Data.Text.Internal.Fusion.Common as TIF(append, cons, snoc)
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

instance TupleAddL Char (Stream Char) (Stream Char) where
  (<++) = TIF.cons

instance TupleAddR (Stream Char) Char (Stream Char) where
  (++>) = TIF.snoc

instance TupleAppend (Stream Char) (Stream Char) (Stream Char) where
  (+++) = TIF.append
