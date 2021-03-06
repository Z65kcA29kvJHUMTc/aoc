{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/refs/tags/21.11.tar.gz") {} }:
  with pkgs;
  pkgs.mkShell {
   nativeBuildInputs = [
      cargo
      cargo-edit
      libiconv
      openssl
      pkg-config
      rust-analyzer
      rustc
      rustfmt
      # darwin.apple_sdk.frameworks.Security
    ];
}