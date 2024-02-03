{
  inputs.std.url = "github:divnix/std";
  inputs.nixpkgs.follows = "std/nixpkgs";
  inputs.std.inputs.devshell.url = "github:numtide/devshell";
  outputs = inputs @ {std, ...}:
    std.growOn {
      inherit inputs;
      nixpkgsConfig.allowUnfree = true;
      systems = ["x86_64-linux"];
      cellsFrom = ./nix;
      cellBlocks = with std.blockTypes; [
        (installables "packages")
        (devshells "devshells")
      ];
    };
}
