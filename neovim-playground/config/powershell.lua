-- Check if 'pwsh' is executable, set 'shell' accordingly
vim.o.shell = vim.fn.executable("pwsh") == 1 and "pwsh" or "powershell"

-- Set 'shellcmdflag' with required options
vim.o.shellcmdflag = '-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues[\'Out-File:Encoding\']=\'utf8\';'


-- Set 'shellredir' and 'shellpipe'
vim.o.shellredir = '2>&1 | %{ "$_" } | Out-File %s; exit $LastExitCode'
vim.o.shellpipe = '2>&1 | %{ "$_" } | Tee-Object %s; exit $LastExitCode'

-- Disable shell quoting
vim.o.shellquote = ""
vim.o.shellxquote = ""
