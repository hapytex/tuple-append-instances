{-# LANGUAGE CPP, FlexibleInstances, MultiParamTypeClasses, Safe #-}
{-# OPTIONS_GHC -Wall -fno-warn-orphans -Werror #-}

{-|
Module      : Data.Tuple.Append.Instances.ByteString.Safe
Description : A module that contains typeclasses instances for /safe/ modules of the bytestring package.
Maintainer  : hapytexeu+gh@gmail.com
Stability   : experimental
Portability : POSIX

A module that contains typeclasses instances for the 'ByteString', and lazy 'BL.ByteString' data types.
-}

module Data.Tuple.Append.Instances.ByteString.Safe () where

import Data.ByteString(ByteString, append, cons, snoc)
import qualified Data.ByteString.Lazy as BL(ByteString, append, cons, snoc)
import Data.Tuple.Append.Class(TupleAddL((<++)), TupleAddR((++>)), TupleAppend((+++)))
import Data.Word(Word8)

instance TupleAddL Word8 ByteString ByteString where
  (<++) = cons

instance TupleAddR ByteString Word8 ByteString where
  (++>) = snoc

instance TupleAppend ByteString ByteString ByteString where
  (+++) = append

instance TupleAddL Word8 BL.ByteString BL.ByteString where
  (<++) = BL.cons

instance TupleAddR BL.ByteString Word8 BL.ByteString where
  (++>) = BL.snoc

instance TupleAppend BL.ByteString BL.ByteString BL.ByteString where
  (+++) = BL.append
