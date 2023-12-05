-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--

function delete_buffer()
  local bd = require("mini.bufremove").delete
  if vim.bo.modified then
    local choice = vim.fn.confirm(("Save changes to %q?"):format(vim.fn.bufname()), "&Yes\n&No\n&Cancel")
    if choice == 1 then -- Yes
      vim.cmd.write()
      bd(0)
    elseif choice == 2 then -- No
      bd(0, true)
    end
  else
    bd(0)
  end
end

local mappings = {
  -- ["<leader>cu"] = { "<cmd> TypescriptRemoveUnused<CR>", "Remove unused TS imports" },
  ["tsi"] = { "<cmd> TypescriptAddMissingImports<CR>", "Add missing TS imports" },

  ["<C-h>"] = { "<cmd> NvimTmuxNavigateLeft<CR>", "Tmux window left" },
  ["<C-l>"] = { "<cmd> NvimTmuxNavigateRight<CR>", "Tmux window right" },
  ["<C-j>"] = { "<cmd> NvimTmuxNavigateDown<CR>", "Tmux window down" },
  ["<C-k>"] = { "<cmd> NvimTmuxNavigateUp<CR>", "Tmux window up" },

  ["<leader>e"] = { "<cmd> NvimTreeFindFileToggle <CR>", "Toggle nvimtree" },
  ["<S-e>"] = { "<cmd> NvimTreeFindFile <CR>", "Find file in tree" },
}

for key, val in pairs(mappings) do
  -- Movement mapping: val[2]
  vim.api.nvim_set_keymap("n", key, val[1], { noremap = true, silent = true, desc = val[2] })
end

-- Buffers
vim.keymap.set("n", "<leader><leader>]", "<CMD>BufferLineMoveNext<CR>")
vim.keymap.set("n", "<leader><leader>[", "<CMD>BufferLineMovePrev<CR>")
vim.keymap.set("n", "<leader><leader>l", "<CMD>BufferLineMoveNext<CR>")
vim.keymap.set("n", "<leader><leader>h", "<CMD>BufferLineMovePrev<CR>")
-- vim.keymap.set("n", "<S-Space>l", "<cmd>BufferLineMoveNext<cr>", { desc = "Next buffer to the right" })
vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
-- vim.keymap.set("n", "<leader>gr", "<cmd>TroubleToggle lsp_references<cr>", { desc = "Go to reference (T)" })

vim.keymap.set("n", "<leader>x", delete_buffer, { desc = "Close buffer" })
vim.keymap.set("n", "<leader>gn", "<cmd>Neogit<CR>", { desc = "Open Neogit" })
vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<CR>", { desc = "Open Git Diffview" })
