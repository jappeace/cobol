{ pkgs ? import ./pin.nix }:
pkgs.mkShell{
    buildInputs = [
        pkgs.gnu-cobol
        pkgs.libagar
    ];
}

