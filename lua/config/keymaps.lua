-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
--

function reset_hl()
  local hl_groups = vim.api.nvim_get_hl(0, {})

  for key, hl_group in pairs(hl_groups) do
    if hl_group.italic then
      vim.api.nvim_set_hl(0, key, vim.tbl_extend("force", hl_group, { italic = false }))
    end
  end
end

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
  ["<C-\\>"] = { "<cmd> NvimTmuxNavigateLastActive<CR>", "Tmux last active" },

  ["<leader>e"] = { "<cmd> NvimTreeFindFileToggle <CR>", "Toggle nvimtree" },
  ["<S-e>"] = { "<cmd> NvimTreeFindFile <CR>", "Find file in tree" },
}

for key, val in pairs(mappings) do
  -- Movement mapping: val[2]
  vim.api.nvim_set_keymap("n", key, val[1], { noremap = true, silent = true, desc = val[2] })
end

vim.keymap.set("n", "<leader>rh", reset_hl, { desc = "Reset hightlight groups" })

-- Terminal fixes
vim.keymap.del("n", "<c-/>")
vim.keymap.del("n", "<c-_>")

vim.keymap.set("n", "<c-/>", function()
  LazyVim.terminal()
end, { desc = "Terminal (cwd)" })
vim.keymap.set("n", "<c-_>", function()
  LazyVim.terminal()
end, { desc = "Terminal (cwd)" })

-- LSP
vim.keymap.set("n", "gr", "<CMD>Trouble lsp_references<CR>", { desc = "Trouble LSP references" })
vim.keymap.set("n", "gd", "<CMD>Lspsaga goto_definition<CR>", { desc = "Lspsaga go to definition" })
vim.keymap.set("n", "K", "<CMD>Lspsaga hover_doc<CR>", { desc = "Lspsaga hover_doc" })
vim.keymap.set("n", "<leader>ci", "<CMD>Lspsaga finder<CR>", { desc = "Lspsaga finder (Code info)" })
vim.keymap.set("n", "]d", "<CMD>Lspsaga diagnostic_jump_next<CR>", { desc = "Lspsaga diags next" })
vim.keymap.set("n", "[d", "<CMD>Lspsaga diagnostic_jump_prev<CR>", { desc = "Lspsaga diags prev" })

-- Buffers
vim.keymap.set("n", "<leader><leader>]", "<CMD>BufferLineMoveNext<CR>")
vim.keymap.set("n", "<leader><leader>[", "<CMD>BufferLineMovePrev<CR>")
vim.keymap.set("n", "<leader><leader>l", "<CMD>BufferLineMoveNext<CR>")
vim.keymap.set("n", "<leader><leader>h", "<CMD>BufferLineMovePrev<CR>")
-- vim.keymap.set("n", "<S-Space>l", "<cmd>BufferLineMoveNext<cr>", { desc = "Next buffer to the right" })
vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })

vim.keymap.set("n", "<leader>x", delete_buffer, { desc = "Close buffer" })
vim.keymap.set("n", "<leader>gn", "<cmd>Neogit<CR>", { desc = "Open Neogit" })
vim.keymap.set("n", "<leader>gb", "<cmd>BlameToggle<CR>", { desc = "Git blame" })
vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<CR>", { desc = "Open Git Diffview" })
vim.keymap.set("n", "<leader>uu", vim.cmd.UndotreeToggle)

vim.keymap.set("i", "<C-h>", "<LEFT>", { desc = "Move left in insert mode" })
vim.keymap.set("i", "<C-l>", "<RIGHT>", { desc = "Move right in insert mode" })

vim.keymap.set("n", "<leader>hh", require("harpoon.ui").toggle_quick_menu, { desc = "Toggle Harpoon menu" })
vim.keymap.set("n", "<leader>ht", require("harpoon.mark").toggle_file, { desc = "Harpoon toggle file" })

vim.keymap.set("n", "<leader>tl", require("neotest").run.run_last, { desc = "Run last test" })

-- Update dependency on the line
vim.keymap.set({ "n" }, "<LEADER>nu", require("package-info").update, { silent = true, noremap = true })
