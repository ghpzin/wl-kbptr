{
  stdenv,
  cairo,
  meson,
  ninja,
  pkg-config,
  wayland,
  libxkbcommon,
  wayland-protocols,
}:
let
  pname = "wl-kbptr";
in
stdenv.mkDerivation {
  name = pname;
  src = ./.;
  nativeBuildInputs = [
    pkg-config
    meson
    ninja
    wayland-protocols
  ];
  buildInputs = [
    cairo
    libxkbcommon
    wayland
  ];
}
