{ ... }:

{
  programs.nixvim = {
    colorschemes = {
      onedark = {
        enable = true;

	settings = {
	  style = "darker";

	  code_style = {
	    functions = "bold";
	    keywords = "bold";
	  };
	};
      };
    };
  };
}
