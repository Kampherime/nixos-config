{ pkgs, ... }:

{

programs.zsh = {
  enable = true;
  syntaxHighlighting.enable = true;
  oh-my-zsh = {
    enable = true;
    theme = "superjarin";
    plugins = [ "git" "vi-mode" ];
    };
  };
}
