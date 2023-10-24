{ pkgs }: {
  deps = [
    pkgs.postgresql
  ];
  env = {
    PYTHON_LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
      pkgs.postgresql
    ];
  };
}