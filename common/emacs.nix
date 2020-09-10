{ ... } :
let
  conf = import ../system/config.nix {};
  sources = import ../nix/sources.nix;
  pkgs = import sources.nixpkgs-unstable conf;
in
pkgs.emacsWithPackagesFromUsePackage {
  config = "";
  package = pkgs.emacsGit;
  extraEmacsPackages = epkgs: with epkgs; [
    ace-window
    ag
    aggressive-indent
    anzu
    biblio
    bibtex-completion
    bongo
    company
    dante
    diminish
    direnv
    doom-themes
    editorconfig
    elfeed
    elfeed-org
    emacsql
    emacsql-sqlite3
    eslint-fix
    flycheck
    flycheck-rust
    fullframe
    git-link
    git-timemachine
    haskell-mode
    hcl-mode
    helm
    helpful
    ivy
    js2-mode
    json-mode
    ledger-mode
    lsp-mode
    lsp-ui
    magit
    markdown-mode
    move-dup
    nix-mode
    org
    org-randomnote
    org-ref
    org-roam
    org-tree-slide
    pdf-tools
    projectile
    psci
    purescript-mode
    rainbow-delimiters
    rust-mode
    smartparens
    solaire-mode
    spinner
    tide
    toml-mode
    treemacs
    use-package
    vterm
    web-mode
    which-key
    ws-butler
    yaml-mode
    yasnippet
  ];
}
