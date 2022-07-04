{-# LANGUAGE FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC -Wall -fno-warn-orphans -Werror #-}

{-|
Module      : Data.Tuple.Append.Instances.Text
Description : A module that contains typeclasses instances for the vector package.
Maintainer  : hapytexeu+gh@gmail.com
Stability   : experimental
Portability : POSIX

A module that contains typeclasses instances for the 'Vector', 'VP.Vector', 'VS.Vector', 'VU.Vector', 'Bundle', 'VFBM.Bundle', and 'Stream' data types.
-}

module Data.Tuple.Append.Instances.Vector () where

import Prelude hiding ((++))

import Data.Tuple.Append.Class(TupleAddL((<++)), TupleAddR((++>)), TupleAppend((+++)))
import Data.Vector(Vector, (++), cons, snoc)
import Data.Vector.Fusion.Bundle(Bundle)
import qualified Data.Vector.Fusion.Bundle as VFB((++), cons, snoc)
import qualified Data.Vector.Fusion.Bundle.Monadic as VFBM(Bundle, (++), cons, snoc)
import Data.Vector.Fusion.Stream.Monadic(Stream)
import qualified Data.Vector.Fusion.Stream.Monadic as VFSM((++), cons, snoc)
import Data.Vector.Primitive(Prim)
import qualified Data.Vector.Primitive as VP(Vector, (++), cons, snoc)
import Data.Vector.Storable(Storable)
import qualified Data.Vector.Storable as VS(Vector, (++), cons, snoc)
import Data.Vector.Unboxed(Unbox)
import qualified Data.Vector.Unboxed as VU(Vector, (++), cons, snoc)

instance TupleAddL a (Vector a) (Vector a) where
  (<++) = cons

instance TupleAddR (Vector a) a (Vector a) where
  (++>) = snoc

instance TupleAppend (Vector a) (Vector a) (Vector a) where
  (+++) = (++)

instance TupleAddL a (Bundle v a) (Bundle v a) where
  (<++) = VFB.cons

instance TupleAddR (Bundle v a) a (Bundle v a) where
  (++>) = VFB.snoc

instance TupleAppend (Bundle v a) (Bundle v a) (Bundle v a) where
  (+++) = (VFB.++)

instance Monad m => TupleAddL a (VFBM.Bundle m v a) (VFBM.Bundle m v a) where
  (<++) = VFBM.cons

instance Monad m => TupleAddR (VFBM.Bundle m v a) a (VFBM.Bundle m v a) where
  (++>) = VFBM.snoc

instance Monad m => TupleAppend (VFBM.Bundle m v a) (VFBM.Bundle m v a) (VFBM.Bundle m v a) where
  (+++) = (VFBM.++)

instance Monad m => TupleAddL a (Stream m a) (Stream m a) where
  (<++) = VFSM.cons

instance Monad m => TupleAddR (Stream m a) a (Stream m a) where
  (++>) = VFSM.snoc

instance Monad m => TupleAppend (Stream m a) (Stream m a) (Stream m a) where
  (+++) = (VFSM.++)

instance Prim a => TupleAddL a (VP.Vector a) (VP.Vector a) where
  (<++) = VP.cons

instance Prim a => TupleAddR (VP.Vector a) a (VP.Vector a) where
  (++>) = VP.snoc

instance Prim a => TupleAppend (VP.Vector a) (VP.Vector a) (VP.Vector a) where
  (+++) = (VP.++)

instance Storable a => TupleAddL a (VS.Vector a) (VS.Vector a) where
  (<++) = VS.cons

instance Storable a => TupleAddR (VS.Vector a) a (VS.Vector a) where
  (++>) = VS.snoc

instance Storable a => TupleAppend (VS.Vector a) (VS.Vector a) (VS.Vector a) where
  (+++) = (VS.++)

instance Unbox a => TupleAddL a (VU.Vector a) (VU.Vector a) where
  (<++) = VU.cons

instance Unbox a => TupleAddR (VU.Vector a) a (VU.Vector a) where
  (++>) = VU.snoc

instance Unbox a => TupleAppend (VU.Vector a) (VU.Vector a) (VU.Vector a) where
  (+++) = (VU.++)
