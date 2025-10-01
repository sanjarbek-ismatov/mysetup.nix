{ config, pkgs, ... }:

{
  imports = [
    ./hardware/hardware-configuration.nix
    ./essentials/boot.nix
    ./essentials/sound.nix
    ./essentials/power-management.nix
    ./desktop/programs.nix
    ./desktop/desktop-environment.nix
  ];
  networking.hostName = "nixos";
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Tashkent";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  zramSwap = {
    enable = true;
    memoryPercent = 100;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.sanjarbek = {
    isNormalUser = true;
    description = "Sanjarbek";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };
  users.defaultUserShell = pkgs.fish;
  system.stateVersion = "25.05";
}
