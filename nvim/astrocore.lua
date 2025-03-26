-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        ["<Leader>fw"] = {
          function() require("telescope").extensions.live_grep_args.live_grep_args() end,
          desc = "Live Grep (Args)",
        },
        ["<Leader><Tab>"] = { ":bnext<CR>", desc = "Move next buff" },
        ["<S-Tab>"] = { ":bprev<CR>", desc = "Move prev buff" },
        -- ["<C-I>"] = { "<Cmd>lua vim.cmd('normal! ' .. vim.v.count1 .. '<C-i>')<CR>", desc = "Jump forward in jumplist" },
      },
    },
  },
}
