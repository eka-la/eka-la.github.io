let
  inherit (inputs.nixpkgs) pkgs;
  inherit (inputs.std) std;
  inherit (inputs.std.lib) dev;
  inherit (cell) configs;
in {
  default = dev.mkShell {
    name = "eka.la";
    imports = [std.devshellProfiles.default];
    commands = [
      {package = pkgs.nodejs_20;}
      {package = pkgs.nodePackages_latest.node2nix;}
      {package = pkgs.nodePackages_latest.svgo;}
      {package = pkgs.nodePackages_latest.pnpm;}
      {package = pkgs.pngcrush;}
      {package = pkgs.libwebp;}
      {package = pkgs.netlify-cli;}
    ];
    nixago = [
      configs.conform
      configs.treefmt
      configs.editorconfig
      configs.githubsettings
      configs.lefthook
      configs.cog
    ];
  };
}
