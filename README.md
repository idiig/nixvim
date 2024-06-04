# Nixvim template

This template gives you a good starting point for configuring nixvim standalone.

## Configuring

To start configuring, just add or modify the nix files in `./config`.
If you add a new configuration file, remember to add it to the
[`config/default.nix`](./config/default.nix) file

## Testing your new configuration

To test your configuration simply run the following command

```
nix run .
```

### TODO

- In literate-programming environments, such as `.ipynb`, `.qmd`, `.rmd`, enable keymap regarding terminals.
  - otter completion
  - language specific terminals
  - zotero telescope add zotero extension
- telescope add zotero extension
- line wrap config
- Keep line at center even if at the last line
