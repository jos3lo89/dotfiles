return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.inlay_hints = { enabled = false }

    if not opts.servers then
      opts.servers = {}
    end

    opts.servers.gopls = {
      settings = {
        gopls = {
          analyses = {
            unusedparams = true,
          },
          staticcheck = true,
          usePlaceholders = false,
          completeUnimported = true,
          gofumpt = true,
          semanticTokens = false,
        },
      },
    }
    return opts
  end,
}
