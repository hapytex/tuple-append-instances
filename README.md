# tuple-append-instances
[![Build Status of the package by GitHub actions](https://github.com/hapytex/tuple-append-instances/actions/workflows/build-ci.yml/badge.svg)](https://github.com/hapytex/tuple-append-instances/actions/workflows/build-ci.yml)
[![Hackage version badge](https://img.shields.io/hackage/v/tuple-append-instances.svg)](https://hackage.haskell.org/package/tuple-append-instances)

## Usage

The package defines instances for the datatypes of the [`bytestring`](https://hackage.haskell.org/package/bytestring), [`dlist`](https://hackage.haskell.org/package/dlist), [`text`](https://hackage.haskell.org/package/text) and [`vector`](https://hackage.haskell.org/package/vector) packages. In the future, more instances might be defined.

## Package structure

The package defines modules that start with `Data.Tuple.Append.Instances.…`. For each package `𝑿`, it will define two modules `Data.Tuple.Append.Instances.𝑿` and `Data.Tuple.Append.Instances.𝑿.Safe`. Only if there is no way to define instances for data types that are then safe, the `Data.Tuple.Append.Instances.𝑿.Safe` module is missing. The `Data.Tuple.Append.Instances.𝑿` module will re-export the typeclass instances of the `Data.Tuple.Append.Instances.𝑿.Safe` module, so it will always contain a superset of typeclass instances.

The `Data.Tuple.Append.Instances.Safe` module will re-export all instances of the `Data.Tuple.Append.Instances.𝑿.Safe` modules and is thus considered safe as well, whereas `Data.Tuple.Append.Instances` re-exports *all* typeclass instances, and thus is unsafe.

## `tuple-append-instances` is not *safe* Haskell

The `Data.Tuple.Append.Instances.Safe` module is safe, and will re-export all typeclass instances that can be defined safely, the `Data.Tuple.Append.Instances` module also re-exports typeclass instances of data types defined in unsafe modules, so this module is unsafe.

## Contribute

You can contribute by making a pull request on the [*GitHub
repository*](https://github.com/hapytex/tuple-append-instances).

You can contact the package maintainer by sending a mail to
[`hapytexeu+gh@gmail.com`](mailto:hapytexeu+gh@gmail.com).

