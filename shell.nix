{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "crypsn";

  buildInputs = [
    pkgs.clang
    pkgs.lldb
    pkgs.gnumake
    pkgs.git
  ];
}