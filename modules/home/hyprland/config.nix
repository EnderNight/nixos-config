{ ... }:

{
  wayland.windowManager.hyprland = {
    settings = 
    let
      mainMod = "SUPER";
      uwsm = argv: "uwsm app -- ${argv}";
    in
    {
      monitor = "desc:BOE 0x0BCA, preferred, auto, 1.333333";

      xwayland = {
        force_zero_scaling = true;
      };

      misc = {
        disable_hyprland_logo = true;
	disable_splash_rendering = true;
	force_default_wallpaper = 0;
      };

      gestures = {
        workspace_swipe = true;
      };

      bind = [
	"${mainMod}, Return, exec, ${uwsm "kitty"}"
	"${mainMod}, F, exec, ${uwsm "firefox"}"
	"${mainMod}, C, killactive,"
	"${mainMod}, M, exit,"

	"${mainMod}, left, movefocus, l"
	"${mainMod}, right, movefocus, r"
	"${mainMod}, up, movefocus, u"
	"${mainMod}, down, movefocus, d"
      ]
      ++
      builtins.concatLists (builtins.genList (i:
        let
	  num = toString (i + 1);
	in
        [
          "${mainMod}, ${num}, workspace, ${num}"
          "${mainMod} SHIFT, ${num}, movetoworkspace, ${num}"
        ]
	)
	9);

      bindm = [
        "${mainMod}, mouse:272, movewindow"
        "${mainMod}, mouse:273, resizewindow"
      ];
    };
  };
}
