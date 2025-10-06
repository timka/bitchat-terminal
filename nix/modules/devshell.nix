{ inputs, ... }:
{
  perSystem = { config, self', pkgs, lib, ... }: {
    devShells.default = pkgs.mkShell {
      name = "bitchat-terminal-shell";
      inputsFrom = [
        self'.devShells.rust
      ];
      packages = with pkgs; [
        pkg-config
        dbus.lib
        nixd # Nix language server
      ];
    };
  };
}
