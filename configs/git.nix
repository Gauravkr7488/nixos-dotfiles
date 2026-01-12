{ config, pkgs, ...}: 
{
        programs.git = {
                enable = true;
                userName = "gaurav";
                userEmail = "gauravkr748800@gamil.com";
                extraConfig = {
                        init.defaultBranch = "main";
                };
        };
}
