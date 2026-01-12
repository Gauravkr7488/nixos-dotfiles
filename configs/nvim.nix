{
        programs.nvf = {
                enable = true;
                settings = {
                        vim = {
                                theme = {
                                        enable = true;
                                        name = "gruvbox";
                                        style = "dark";
                                };
                                options = {
                                        number = true;
                                        relativenumber = true;
                                        clipboard = "unnamedplus";
                                };
                                lsp.enable = true;
                                visuals.nvim-cursorline = {
                                        enable = true;
                                        setupOpts = {
                                                cursorline = {
                                                        enable = true;
                                                        number = true;
                                                        timeout = 100;
                                                };
                                        };
                                };
                                autocomplete.nvim-cmp.enable = true;
                                languages = {
                                        nix = {
                                                enable = true;
                                                lsp = {
                                                        enable = true;
                                                        servers = ["nil"];
                                                };
                                        };
                                };
                                autopairs.nvim-autopairs.enable = true;

                                snippets.luasnip = {
                                        enable = true;
                                        providers = ["friendly-snippets"];
                                };
                        };


                };
        };
}
