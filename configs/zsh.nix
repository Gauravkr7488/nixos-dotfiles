{
        programs.zsh = {
                enable = true;

                enableCompletion = true;
                autosuggestion.enable = true;
                syntaxHighlighting.enable = true;
                shellAliases = {
                        ".." = "cd ..";
                };
                oh-my-zsh = {
                        enable = true;
                        plugins = ["git" "sudo" ];
                        theme = "agnoster";
                };
        };
}
