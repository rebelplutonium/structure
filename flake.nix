{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs" ;
    flake-utils.url = "github:numtide/flake-utils";
  } ;
  outputs = { self , nixpkgs , flake-utils } : flake-utils.lib.eachDefaultSystem ( system : let pkgs = nixpkgs.legacyPackages.${ system } ; in {
    lib = {
      nix-tools = {
        to-upper-case = builtins.replaceStrings [
	  "a"
	  "b"
	  "c"
	  "d"
	  "e"
	  "f"
	  "g"
	  "h"
	  "i"
	  "j"
	  "k"
	  "l"
	  "m"
	  "n"
	  "o"
	  "p"
	  "q"
	  "r"
	  "s"
	  "t"
	  "u"
	  "v"
	  "w"
	  "x"
	  "y"
	  "z"
	] [
	  "A"
	  "B"
	  "C"
	  "D"
	  "E"
	  "F"
	  "G"
	  "H"
	  "I"
	  "J"
	  "K"
	  "L"
	  "M"
	  "N"
	  "O"
	  "P"
	  "Q"
	  "R"
	  "S"
	  "T"
	  "U"
	  "V"
	  "W"
	  "X"
	  "Y"
	  "Z"
	] ;
      } ;
      bash-scripting = {
        dollar = expression : builtins.concatStringsSep "" [ "$" "{" ( builtins.toString expression ) "}" ] ;
      } ;
    } ;
  } ) ;
}
