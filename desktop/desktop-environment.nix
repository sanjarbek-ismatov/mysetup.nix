{ config, pkgs, ... }:
{
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Enable CUPS to print documents.
  services.printing.enable = false;
  services.xserver.excludePackages = [ pkgs.xterm ];
  environment.gnome.excludePackages = [
    pkgs.gnome-tour
    pkgs.epiphany
    pkgs.simple-scan
    pkgs.gnome-maps
    pkgs.totem
    pkgs.evince
  ];
}
