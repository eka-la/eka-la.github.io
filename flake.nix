{
  inputs.std.url = "github:divnix/std";
  inputs.nixpkgs.follows = "std/nixpkgs";
  inputs.std.inputs.devshell.url = "github:numtide/devshell";
  inputs.std.inputs.nixago.url = "github:nix-community/nixago";
  outputs = inputs @ {std, ...}:
    std.growOn {
      inherit inputs;
      nixpkgsConfig.allowUnfree = true;
      systems = ["x86_64-linux"];
      cellsFrom = ./nix;
      cellBlocks = with std.blockTypes; [
        (nixago "configs")
        (installables "packages")
        (devshells "devshells")
      ];
    };
}
