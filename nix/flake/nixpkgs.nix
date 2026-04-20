{ self, inputs, ... }:
let
  config = {
    allowAliases = false;
  };

  overlays = [
    (final: prev: { inherit self; })
    inputs.zmk.overlays.default
  ];
in
{
  perSystem =
    { system, ... }:
    {
      _module.args.pkgs = import inputs.nixpkgs { inherit system config overlays; };
    };
}
