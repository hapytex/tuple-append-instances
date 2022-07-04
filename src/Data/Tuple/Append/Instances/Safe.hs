{-# LANGUAGE FlexibleInstances, MultiParamTypeClasses, Safe #-}

{-|
Module      : Data.Tuple.Append.Instances
Description : A module that contains typeclasses instances for the safe modules of the @bytestring@, @dlist@ and @text@ packages.
Maintainer  : hapytexeu+gh@gmail.com
Stability   : experimental
Portability : POSIX

A module that contains safe typeclasses instances for the @bytestring@, @dlist@ and @text@ packages.
-}

module Data.Tuple.Append.Instances.Safe () where

import Data.Tuple.Append.Instances.ByteString.Safe()
import Data.Tuple.Append.Instances.DList.Safe()
import Data.Tuple.Append.Instances.Text.Safe()
