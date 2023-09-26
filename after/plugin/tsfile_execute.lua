local M = {}

M.run_ts_file = function()
    -- Get the current file's path
    local file_path = vim.fn.expand('%:p')

    -- Compile the TypeScript file to JavaScript
    vim.cmd('!tsc ' .. file_path)

    -- Generate the path for the compiled JavaScript file
    local js_path = vim.fn.expand('%:p:r') .. '.js'

    -- Execute the JavaScript file using Node.js
    vim.cmd('!node ' .. js_path)

    -- Optionally: Remove the generated JavaScript file after execution
    -- os.remove(js_path)
end

return M
