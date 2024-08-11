
{

programs.zsh = {
  enable = true;
  syntaxHighlighting.enable = true;
  autosuggestion.enable = true;
  enableCompletion = true;

  shellAliases = {
    nixtest = "sudo nixos-rebuild test";
    nixbuild= "sudo nixos-rebuild switch";
    };

  oh-my-zsh = {
    enable = true;
    theme = "awesomepanda";
    plugins = [ "git" ];
    };
  initExtra = "swww-daemon &\nswww img ~/Downloads/AWDVAWK.jpg &";
  };
}
