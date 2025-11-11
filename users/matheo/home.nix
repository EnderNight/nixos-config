{
  pkgs,
  inputs,
  ...
}:

let
  dotfiles = builtins.path {
    path = ../../dotfiles;
    name = "dotfiles";
  };
in
{
  imports = [
    inputs.caelestia-shell.homeManagerModules.default
  ];

  home.stateVersion = "25.05";

  home.username = "matheo";
  home.homeDirectory = "/home/matheo";

  programs.home-manager.enable = true;

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    extraPackages = with pkgs; [
      libgcc
    ];
  };

  programs.vscode.enable = true;

  programs.bash = {
    enable = true;
    initExtra = ''
      if [[ $(${pkgs.procps}/bin/ps --no-header --pid=$PPID --format=comm) != "fish" && -z ''${BASH_EXECUTION_STRING} ]]
      then
        shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=""
        exec ${pkgs.fish}/bin/fish $LOGIN_OPTION
      fi
    '';
  };
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting
    '';
  };
  programs.starship = {
    enable = true;
    enableTransience = true;
  };
  programs.zoxide.enable = true;
  programs.eza = {
    enable = true;
    colors = "always";
    icons = "always";
    extraOptions = [
      "--hyperlink"
      "--group-directories-first"
      "--smart-group"
      "--header"
    ];
  };
  programs.bat.enable = true;
  programs.yazi.enable = true;

  programs.kitty = {
    enable = true;
    themeFile = "OneDark-Pro";
    font.name = "FiraCode Nerd Font";
  };

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  programs.firefox.enable = true;

  programs.obs-studio.enable = true;

  programs.git = {
    enable = true;
    settings = {
      init = {
        defaultBranch = "main";
      };
      user = {
        name = "Ender";
        email = "ndxendernight@gmail.com";
      };
    };
  };

  programs.caelestia = {
    enable = true;
    systemd.enable = false;

    cli.enable = true;
  };

  programs.distrobox.enable = true;

  home.packages = with pkgs; [
    gcc
    patchelf
    clang-tools
    lua
    luarocks
    lua-language-server
    stylua

    fastfetch
    btop

    brightnessctl
    playerctl

    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    nerd-fonts.fira-code

    nwg-look

    hyprpaper
    hyprpicker
    hyprpolkitagent
    hyprsysteminfo
    wl-clipboard
    cliphist
    inotify-tools
    app2unit
    trash-cli
    jq
    adw-gtk3
    papirus-icon-theme
    kdePackages.qt6ct
    nerd-fonts.jetbrains-mono
    libnotify

    ffmpeg
    p7zip
    poppler
    ripgrep
    fzf
    fd
    resvg
    imagemagick

    kdePackages.qtsvg
    kdePackages.qtimageformats
    kdePackages.qtmultimedia
    kdePackages.qt5compat

    discord
    google-chrome
    libreoffice-fresh
    evince
    file-roller
    loupe
    nautilus
    papers
    vlc

    prismlauncher
    ftb-app

    zip
    unzip

    nil

    inputs.pyback.packages.${stdenv.hostPlatform.system}.default
  ];

  home.pointerCursor = {
    enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Ice";
    size = 24;

    hyprcursor.enable = true;
  };

  fonts.fontconfig.enable = true;

  xdg = {
    enable = true;
    userDirs = {
      enable = true;
      createDirectories = true;
    };

    mimeApps = {
      enable = true;
      defaultApplicationPackages = with pkgs; [
        neovim
        firefox
        loupe
        evince
        libreoffice-fresh
        file-roller
        papers
        vlc
      ];
    };

    configFile = {
      "caelestia" = {
        source = "${dotfiles}/caelestia";
        recursive = true;
      };

      "hypr" = {
        source = "${dotfiles}/hypr";
        recursive = true;
      };

      "starship.toml".source = "${dotfiles}/starship.toml";

      "fish/conf.d" = {
        source = "${dotfiles}/fish/conf.d";
        recursive = true;
      };
      "fish/functions" = {
        source = "${dotfiles}/fish/functions";
        recursive = true;
      };
    };
  };
}
