{
  services.power-profiles-daemon.enable = false;
  services.tlp = {
    enable = true;
    settings = {
      TLP_DEFAULT_MODE = "BAT";
      TLP_PERSISTENT_DEFAULT = 0;
      CPU_SCALING_MIN_FREQ_ON_AC = 400000;
      CPU_SCALING_MAX_FREQ_ON_AC = 4100000;
      CPU_SCALING_MIN_FREQ_ON_BAT = 400000;
      CPU_SCALING_MAX_FREQ_ON_BAT = 2100000;
      CPU_ENERGY_PERF_POLICY_ON_AC = "balance_performance";
      CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
      CPU_BOOST_ON_AC = 1;
      CPU_BOOST_ON_BAT = 0;
      RADEON_DPM_PERF_LEVEL_ON_AC = "auto";
      RADEON_DPM_PERF_LEVEL_ON_BAT = "low";
      AMDGPU_ABM_LEVEL_ON_AC = 0;
      AMDGPU_ABM_LEVEL_ON_BAT = 1;
      RESTORE_DEVICE_STATE_ON_STARTUP = 1;
      RUNTIME_PM_DRIVER_DENYLIST = "mei_me nouveau radeon";
    };
  };
}
