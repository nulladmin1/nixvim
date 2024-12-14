# ❄️`NullAdmin1`'s Nixvim Flake ❄️

## Highlights:

<details>
  <summary>Linting with nvim-lint:</summary>
  <br>
  
  | Language           | Tool                           | Nixpkgs               |
  |--------------------|--------------------------------|-----------------------|
  | `Bash`             | `shellcheck`                   | `pkgs.shellcheck`     |
  | `JSON`             | `jsonlint`                     | `jsonlint`            |
  | `C`                | `cpplint`                      | `pkgs.cpplint`        |
  | `C++`              | `cpplint`                      | `pkgs.cpplint`        |
  | `Go`               | `golangcilint`                 | `pkgs.golangci-lint`  |
  | `Lua`              | `selene`                       | `pkgs.selene`         |
  | `Python`           | `ruff`                         | `pkgs.ruff`           |
  | `Javascript`       | `eslint_d`                     | `pkgs.eslint_d`       |
  | `Javascript React` | `eslint_d`                     | `pkgs.eslint_d`       |
  | `Java`             | `checkstyle`                   | `pkgs.checkstyle`     |
  | `Rust`             | `clippy` (with `Rustaceanvim`) | `pkgs.clippy`         |
  | `CMake`            | `cmakelint`                    | `pkgs.cmake-lint`     |
  | `Nix`              | `statix`                       | `pkgs.statix`         |
  </details>

  <details>
  <summary>Formatting with conform.nvim:</summary>
  <br>

| Language           | Tool                            | Nixpkgs                   |
| ------------------ | ------------------------------- | ------------------------- |
| `Bash`             | `shellcheck`                    | `pkgs.shellcheck`         |
| `JSON`             | `prettierd`                     | `pkgs.prettierd`          |
| `C`                | `clang-format`                  | `pkgs.libclang`           |
| `C++`              | `clang-format`                  | `pkgs.libclang`           |
| `Markdown`         | `prettierd`                     | `pkgs.prettierd`          |
| `Go`               | `gofmt`                         | `pkgs.go`                 |
| `Lua`              | `stylua`                        | `pkgs.stylua`             |
| `Python`           | `ruff_format`                   | `pkgs.ruff`               |
| `HTML`             | `prettierd`                     | `pkgs.prettierd`          |
| `CSS`              | `prettierd`                     | `pkgs.prettierd`          |
| `Javascript`       | `prettierd`                     | `pkgs.prettierd`          |
| `Javascript React` | `prettierd`                     | `pkgs.prettierd`          |
| `Typescript`       | `prettierd`                     | `pkgs.prettierd`          |
| `Typescript React` | `prettierd`                     | `pkgs.prettierd`          |
| `Java`             | `google-java-format`            | `pkgs.google-java-format` |
| `Rust`             | `rustfmt` (with `Rustaceanvim`) | `pkgs.rustfmt`            |
| `CMake`            | `cmake_format`                  | `pkgs.cmake-format`       |
| `Nix`              | `alejandra`                     | `pkgs.alejandra`          |

## Configuring

To start configuring, just add or modify the nix files in `./config`.
If you add a new configuration file, remember to add it to the
[`config/default.nix`](./config/default.nix) file

## Testing your new configuration

To test your configuration simply run the following command

```
nix run .
```

## Credits

I mostly pulled a lot of code from these people

- [dc-tec](https://github.com/dc-tec/nixvim)
- [khaneliman](https://github.com/khaneliman/khanelivim)
