{
  perSystem =
    { inputs', ... }:
    {
      devShells = { inherit (inputs'.zmk.devShells) default; };
    };
}
