{
    description = "Maxima dev shell";
    inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    outputs = { self, nixpkgs, ... }:
    let system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
    in {
        packages.${system}.maxima = pkgs.maxima;

        devShells.${system}.default = pkgs.mkShell {
            packages = [
                pkgs.maxima
            ];
        };
    };
}

