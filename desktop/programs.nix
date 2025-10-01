{ config, pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  programs.firefox.enable = true;
  programs.fish.enable = true;
  environment.systemPackages = with pkgs; [
    neovim
    libva-utils
    vscode
    planify
    adw-gtk3
    rustup
    gnome-tweaks
    nodejs_24
    deno
    htop
    btop-rocm
    amdgpu_top
    nvtopPackages.amd
    powertop
    fastfetch
    prettierd
    showtime
    gnome-extension-manager
    gh
    git
    github-desktop
    obsidian
    fira-code
    nerd-fonts.fira-code
    clang
    clang-tools
    nixfmt-rfc-style
    nil
    papers
    resources
    authenticator
    blanket
    dialect
    eyedropper
    fragments
    keypunch
    share-preview
    wike
    wordbook
  ];
}
