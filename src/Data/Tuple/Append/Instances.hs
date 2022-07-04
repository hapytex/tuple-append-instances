{-# LANGUAGE FlexibleInstances, MultiParamTypeClasses #-}

{-|
Module      : Data.Tuple.Append.Instances
Description : A module that contains typeclasses instances for the @bytestring@, @dlist@, @text@ and @vector@ packages.
Maintainer  : hapytexeu+gh@gmail.com
Stability   : experimental
Portability : POSIX

A module that contains typeclasses instances for the @bytestring@, @dlist@, @text@ and @vector@ packages.
-}

module Data.Tuple.Append.Instances () where

import Data.Tuple.Append.Instances.ByteString()
import Data.Tuple.Append.Instances.DList()
import Data.Tuple.Append.Instances.Text()
import Data.Tuple.Append.Instances.Vector()
