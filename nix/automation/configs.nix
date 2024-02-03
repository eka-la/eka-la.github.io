let
  inherit (inputs) nixpkgs;
  inherit (inputs.std.data) configs;
  inherit (inputs.std.lib.dev) mkNixago;
in {
  treefmt = (mkNixago configs.treefmt) {};
  editorconfig = (mkNixago configs.editorconfig) {};
  conform = (mkNixago configs.conform) {};
  lefthook = (mkNixago configs.lefthook) {};

  cog = (mkNixago configs.cog) {
    data.changelog = {
      remote = "github.com";
      repository = "eka-la";
      owner = "eka-la.github.io";
    };
  };

  githubsettings = (mkNixago configs.githubsettings) {
    data = {
      repository = {
        name = "eka-la.github.io";
        description = "WIP";
        topics = "nix, reloaded";
        default_branch = "main";
        allow_squash_merge = true;
        allow_merge_commit = false;
        allow_rebase_merge = true;
        delete_branch_on_merge = true;
      };
      milestones = [
        {
          title = "Brainstorm";
          description = ":dart:";
          state = "open";
        }
      ];
    };
  };
}
