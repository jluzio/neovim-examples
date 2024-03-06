if string.match(os.getenv('SHELL'), 'bash%.exe$') then
  vim.o.shellcmdflag = '-c'
  --os.setenv("TMP", "/tmp")
end
