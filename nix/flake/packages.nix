{ self, lib, ... }:
{
  perSystem =
    {
      pkgs,
      self',
      inputs',
      ...
    }:
    let
      myPackages = lib.packagesFromDirectoryRecursive {
        inherit (pkgs) callPackage;
        directory = "${self}/nix/packages";
      };
    in
    {
      packages = myPackages // {
        inherit (inputs'.zmk.packages) update;
        flash = inputs'.zmk.packages.flash.override { inherit (self'.packages) firmware; };
      };
    };
}
