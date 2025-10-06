{ inputs, ... }:
{
  imports = [
    inputs.rust-flake.flakeModules.default
    inputs.rust-flake.flakeModules.nixpkgs
  ];
  perSystem = { config, self', pkgs, lib, ... }: {
    rust-project.crates."bitchat-terminal".crane.args = {
      buildInputs = lib.optionals pkgs.stdenv.isDarwin (
        with pkgs.darwin.apple_sdk.frameworks; [
          IOKit
        ]
      ) ++ (with pkgs; [
        pkg-config
        dbus        
      ]);
      doCheck = false;
    };
    packages.default = self'.packages.bitchat-terminal;
  };
}
