# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

---

## [Unreleased]

### Planned
- CSVLint plugin user language definition
- Compare plugin support
- Additional language screenshots

---

## [2.0.0] — 2026-05-20 · Dark+ Modern rebrand

Complete overhaul. The theme was rebuilt from scratch to match the **Dark+** / **Dark Modern** color palette introduced in recent versions of VS Code. The old VS2019-style theme remains available on the [`master` branch](https://github.com/helldio/npp-Dark-Modern/tree/master).

### Added
- New theme file: `Dark+ Modern.xml` replacing the old `VS2019-Dark.xml`
- `install.cmd` script for one-click installation to `%AppData%\Notepad++\themes`
- Syntax highlighting for 90+ languages, including:
  ActionScript, Ada, ASM, ASN.1, ASP, AutoIt, AVS, BaanC, Bash, Batch,
  BlitzBasic, C, Caml, CMake, COBOL, CoffeeScript, C++, C#, Csound, CSS,
  D, Diff, Erlang, F# *(requires the F# plugin)*, Forth, Fortran, FreeBasic,
  GDScript, Go, Haskell, Hollywood, HTML, INI/Properties, Inno Setup, Java,
  JavaScript, JSON, KiXtart, LaTeX, Lisp, Lua, Makefile, Markdown, MATLAB,
  MMIXAL, MSSQL, NFO, Nim, NNCrontab, NSIS, Objective-C, OScript, Pascal,
  Perl, PHP, PostScript, PowerShell, PureBasic, Python, R, Raku, RC, Rebol,
  Registry, Ruby, Rust, SAS, Scheme, Smalltalk, Spice, SQL, Swift, Tcl,
  TeX/LaTeX, TOML, TypeScript, VB, Verilog, VHDL, Visual Prolog, XML, YAML
- Markdown (dark) user language definition (`plugins/markdown-dark.xml`)
- Notice in README pointing existing users to the legacy `master` branch
- Screenshots index page (`screenshots/README.md`) with per-language previews
- Sample source files for all 16 screenshotted languages (`screenshots/samples/`)

### Changed
- Full color palette recalibrated to VSCode Dark+ / Dark Modern
- `install.bat` replaced by `install.cmd` with improved error handling and directory creation

### Removed
- Old `VS2019-Dark.xml` theme file (moved to `master` branch)
- Outdated screenshots

---

## [1.x] — 2019–2024 · VS2019 Dark era

Original VS2019-style dark theme for Notepad++, inspired by
[cydh/VS2015-Dark-Npp](https://github.com/cydh/VS2015-Dark-Npp) and
[SeanCline/Npp-VS2012-Dark](https://github.com/SeanCline/Npp-VS2012-Dark).

### Notable changes in this period
- **2024-04-11** — Updated PowerShell and JSON screenshots; added `install.bat`
- **2023-10-12** — Fix cursor color next to highlighted bracket pair ([#6](../../issues/6), PR [#7](../../pull/7) by @cbenard)
- **2022-05-04** — Screenshots refresh; README updates
- **2022-04-06** — Fix BOOLEAN/NULL color in JSON ([#4](../../pull/4) by @CennoxX)
- **2019-12-06** — Initial public release
