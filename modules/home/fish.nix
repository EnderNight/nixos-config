{ pkgs, ... }:

{
  programs.fish = {
    enable = true;
  };

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

  home.sessionVariables = {
    fish_greeting = "";
    fish_color_autosuggestion = "brblack";
    fish_color_cancel = "\x2d\x2dreverse";
    fish_color_command = "00ff00";
    fish_color_comment = "red";
    fish_color_cwd = "green";
    fish_color_cwd_root = "red";
    fish_color_end = "green";
    fish_color_error = "brred";
    fish_color_escape = "brcyan";
    fish_color_history_current = "\x2d\x2dbold";
    fish_color_host = "normal";
    fish_color_host_remote = "\x1d";
    fish_color_keyword = "\x1d";
    fish_color_normal = "normal";
    fish_color_operator = "brcyan";
    fish_color_option = "\x1d";
    fish_color_param = "cyan";
    fish_color_quote = "yellow";
    fish_color_redirection = "cyan\x1e\x2d\x2dbold";
    fish_color_search_match = "bryellow\x1e\x2d\x2dbackground\x3dbrblack";
    fish_color_selection = "white\x1e\x2d\x2dbold\x1e\x2d\x2dbackground\x3dbrblack";
    fish_color_status = "red";
    fish_color_user = "brgreen";
    fish_color_valid_path = "\x2d\x2dunderline";
    fish_pager_color_background = "\x1d";
    fish_pager_color_completion = "normal";
    fish_pager_color_description = "yellow\x1e\x2d\x2ditalics";
    fish_pager_color_prefix = "normal\x1e\x2d\x2dbold\x1e\x2d\x2dunderline";
    fish_pager_color_progress = "brwhite\x1e\x2d\x2dbackground\x3dcyan";
    fish_pager_color_secondary_background = "\x1d";
    fish_pager_color_secondary_completion = "\x1d";
    fish_pager_color_secondary_description = "\x1d";
    fish_pager_color_secondary_prefix = "\x1d";
    fish_pager_color_selected_background = "\x2d\x2dreverse";
    fish_pager_color_selected_completion = "\x1d";
    fish_pager_color_selected_description = "\x1d";
    fish_pager_color_selected_prefix = "\x1d";
  };

  programs.starship = {
    enableFishIntegration = true;
    enableTransience = true;
  };
}
