# Structure

## Description

This project includes useful tools and utilities for nix development.
It can be used as a resource for nix flakes.

## Usage

I recommend that you add the following line to the `inputs` attribute of your flake:
```
structure-utils.url = "github:rebelplutonium/structure/085edb20ed2ea98530830
```
and then reference it in the outputs attribute like
```
outputs = { self , nixpkgs , flake-utils , structure-utils } : flake-utils.lib.eachDefaultSystem ( system : let
```
and later like
```
  bash-scripting = structure-utils.lib.${ system }.bash-scripting ;
  nix-tools = structure-utils.lib.${ system }.nix-tools ;
```.
Then you can use the tools and utilities as you see fit.