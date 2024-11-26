# ❄️`NullAdmin1`'s Nixvim Flake ❄️

## Highlights:
<details>
  <summary>Linting with nvim-lint:</summary>
  <br>
  
  | Language           | Tool           | Nixpkgs              |
  |--------------------|----------------|----------------------|
  | `Bash`             | `shellcheck`   | `pkgs.shellcheck`    |
  | `JSON`             | `jsonlint`     | `jsonlint`           |
  | `Markdown`         | `vale`         | `pkgs.vale`          |
  | `RST`              | `vale`         | `pkgs.vale`          |
  | `Text`             | `vale`         | `pkgs.vale`          |
  | `C`                | `cpplint`      | `pkgs.cpplint`       |
  | `C++`              | `cpplint`      | `pkgs.cpplint`       |
  | `Go`               | `golangcilint` | `pkgs.golangci-lint` |
  | `Lua`              | `selene`       | `pkgs.selene`        |
  | `Python`           | `ruff`         | `pkgs.ruff`          |
  | `Javascript`       | `eslint_d`     | `pkgs.eslint_d`      |
  | `Javascript React` | `eslint_d`     | `pkgs.eslint_d`      |
  | `Java`             | `checkstyle`   | `pkgs.checkstyle`    |
  | `Rust`             | `clippy`       | `pkgs.clippy`        |
  | `CMake`            | `cmakelint`    | `pkgs.cmake-lint`    |
  | `Nix`              | `statix`       | `pkgs.statix`        |
  </details>

  <details>
  <summary>Formatting with conform.nvim:</summary>
  <br>

## Configuring

To start configuring, just add or modify the nix files in `./config`.
If you add a new configuration file, remember to add it to the
[`config/default.nix`](./config/default.nix) file

## Testing your new configuration

To test your configuration simply run the following command

```
nix run .
```
