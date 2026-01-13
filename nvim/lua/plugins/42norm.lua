return {
  "MoulatiMehdi/42norm.nvim",
  ft = { "c", "cpp", "h" }, -- optional but recommended
  config = function()
    local norm = require("42norm")

    norm.setup({
      header_on_save = false,
      format_on_save = true,
      liner_on_change = true,
    })

    -- Keymaps
    vim.keymap.set("n", "<F5>", function()
      norm.check_norms()
    end, { desc = "Update 42norms diagnostics", silent = true })

    vim.keymap.set("n", "<C-f>", function()
      norm.format()
    end, { desc = "Format buffer on 42norms", silent = true })

    vim.keymap.set("n", "<F1>", function()
      norm.stdheader()
    end, { desc = "Insert 42 header", silent = true })

    -- Commands
    vim.api.nvim_create_user_command("Norminette", function()
      norm.check_norms()
    end, {})

    vim.api.nvim_create_user_command("Format", function()
      norm.format()
    end, {})

    vim.api.nvim_create_user_command("Stdheader", function()
      norm.stdheader()
    end, {})
  end,
}

