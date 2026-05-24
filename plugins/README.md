# Plugins & UDL

This directory contains supplemental theme files that extend the **Dark+ Modern** theme to languages whose lexers are **not built into Notepad++** itself — whether provided by a plugin or defined as a User Defined Language (UDL).

## Why a separate folder?

Notepad++ ships with a built-in set of language lexers, all styled by a single theme `.xml` file.  
Some languages, however, require extra setup — either through a **third-party plugin** or a **UDL** — to be recognized by Notepad++. Those languages need their own companion style files, installed independently from the main theme.

## Included files

### Plugin style files

These files style languages whose lexers come from a Notepad++ plugin.

| File | Plugin | Language(s) |
|---|---|---|
| `CSVLint.xml` | [CSVLint](https://github.com/BdR76/CSVLint) | CSV / TSV |

**Installation:** Copy the file into the plugin's own style/config directory. Refer to each plugin's documentation for the exact destination path.

---

### User Defined Languages (UDL)

UDL files define a custom lexer directly inside Notepad++, with no plugin required. They are installed to:

```
%AppData%\Notepad++\userDefineLangs\
```

| File | Language |
|---|---|
| `markdown-dark.xml` | Markdown |

**Installation:** Copy the file to `%AppData%\Notepad++\userDefineLangs\`, then restart Notepad++. Markdown files (`.md`) will be highlighted automatically.

---

## Required plugin for F# syntax highlighting

> **⚠️ F# requires a plugin.**

Notepad++ does not include a built-in lexer for **F#**. To get F# syntax highlighting with this theme you must install the **[F# interactive](https://github.com/rdipardo/nppFSIPlugin)** plugin (also available via the **Notepad++ Plugin Admin**).

Once the plugin is installed, F# files (`.fs`, `.fsi`, `.fsx`) will be highlighted using the colors already defined in `Dark+ Modern.xml` — no extra file from this folder is needed.
