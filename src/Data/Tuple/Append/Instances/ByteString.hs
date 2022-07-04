{-# LANGUAGE CPP, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -Wall -fno-warn-orphans -Werror #-}

{-|
Module      : Data.Tuple.Append.Instances.ByteString
Description : A module that contains typeclasses instances for the bytestring package.
Maintainer  : hapytexeu+gh@gmail.com
Stability   : experimental
Portability : POSIX

A module that contains typeclasses instances for the 'Data.ByteString.ByteString', lazy 'Data.ByteString.Lazy.ByteString', and 'ShortByteString' data types.
-}

module Data.Tuple.Append.Instances.ByteString () where

import Data.ByteString.Short(ShortByteString)
#if MIN_VERSION_bytestring(0,11,3)
import qualified Data.ByteString.Short as BS(append, cons, snoc)
#else
import Data.ByteString.Short.Internal(fromShort, toShort)
#endif
import Data.Function(on)
import Data.Tuple.Append.Class(TupleAddL((<++)), TupleAddR((++>)), TupleAppend((+++)))
import Data.Tuple.Append.Instances.ByteString.Safe()
import Data.Word(Word8)

instance TupleAddL Word8 ShortByteString ShortByteString where
#if MIN_VERSION_bytestring(0,11,3)
  (<++) = BS.cons
#else
  (<++) c = toShort . (c <++) . fromShort
#endif

instance TupleAddR ShortByteString Word8 ShortByteString where
#if MIN_VERSION_bytestring(0,11,3)
  (++>) = BS.snoc
#else
  (++>) vs x = toShort (fromShort vs ++> x)
#endif

instance TupleAppend ShortByteString ShortByteString ShortByteString where
#if MIN_VERSION_bytestring(0,11,3)
  (+++) = BS.append
#else
  (+++) us = toShort . ((+++) `on` fromShort) us
#endif
