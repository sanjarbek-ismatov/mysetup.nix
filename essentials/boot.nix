{ pkgs, ... }:
{
  boot.kernelParams = [
    "amd_iommu=on"
    "iommu=pt"
  ];
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.editor = false;

  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.consoleMode = "max";
  boot.consoleLogLevel = 3;

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;
}
