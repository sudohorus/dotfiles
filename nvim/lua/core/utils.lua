local M = {}

function M.has(plugin)
    return require("lazy.core.config").spec.plugins[plugin] ~= nil
end

function M.require(module)
    local ok, result = pcall(require, module)
    if not ok then
        vim.notify("Erro ao carregar módulo: " .. module, vim.log.levels.ERROR)
        return nil
    end
    return result
end

function M.cmd_exists(cmd)
    local ok, _ = pcall(vim.api.nvim_get_commands, {})
    if not ok then return false end
    return vim.fn.exists(":" .. cmd) == 2
end

return M