local v = vim.api

function _G.run()
    local currentBuf = v.nvim_get_current_buf()
    local fileType = v.nvim_buf_get_option(currentBuf, 'filetype')
    local id
    local sources
    if fileType == 'java' then
        sources = getSources()
        id = getIdTerminal()
        v.nvim_chan_send(id, sources[1])
        v.nvim_chan_send(id, sources[2])
        v.nvim_chan_send(id, sources[3])
    else
        print("Java file no found")
    end
end

function getIdTerminal()
    local chanels_inf = v.nvim_list_chans()
    local id
    for _, chan in pairs(chanels_inf) do
        if chan['mode'] == "terminal" then
            id = chan['id']
            break
        end
    end
    if id ~= nil then
        return id
    else
        v.nvim_command('ToggleTerm')
        return getIdTerminal()
    end
end

function getSources()
    local fileNameNoEx = vim.fn.expand('%:t:r')
    local fullPath = "cd " ..  vim.fn.expand('%:p:h') .. "\n"
    local clear = "clear\n"
    local command = "javac -d . -p $PATH_TO_FX --add-modules javafx.controls *.java  && java -p $PATH_TO_FX --add-modules javafx.controls app." .. fileNameNoEx .. "\n"
    local tab = {fullPath,clear, command}
    return tab
end

vim.keymap.set({'n', 'i'}, '<F5>', ':lua run()<CR>')


-- nvim_list_chans()
-- get id from list of dictionary receved from nvim_list_chans() 
-- put extracted id in jobsend() function
