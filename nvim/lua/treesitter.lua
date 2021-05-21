return require('nvim-treesitter.configs').setup {
  ensure_installed = { json, typescript, javascript, nix, lua },
  highlight = {
    enable = true,
  },
  indentation = {
    enable = true;
  },
}

