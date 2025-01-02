require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>r", vim.lsp.buf.rename)
map("n", "<space>e", function()
    vim.diagnostic.open_float(0, { scope = "line" })
end)

map("n", "<space>qf", function()
    vim.lsp.buf.code_action({
        filter = function(a)
            return a.isPreferred
        end,
        apply = true,
    })
end)
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
