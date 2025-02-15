{ stdenv, lib, fetchFromGitHub }:

stdenv.mkDerivation rec {
  name = "tailscale-gnome-qs";
  version = "v1";
  phases = [ "unpackPhase" "installPhase" ];

  src = fetchFromGitHub {
    owner = "replikas";
    repo = "tailscale-gnome-qs";
    rev = "4c72bab14501b524af085d0e90af8ea8eea452ad";
    sha256 = "sha256-nmnWJMU/BeBmwg0qdw7NsRFIEzihdL20tlsXlzsB9Ko=";
  };

  installPhase = ''
    mkdir -p $out/share/gnome-shell/extensions/tailscale@joaophi.github.com/
    cp -R ./tailscale@joaophi.github.com $out/share/gnome-shell/extensions/.
  '';
}
