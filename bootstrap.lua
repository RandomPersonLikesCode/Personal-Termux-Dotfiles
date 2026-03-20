#!/data/data/com.termux/files/usr/bin/env lua

local home_dir = os.getenv("HOME")
local symlink_command = "ln -sfnT "

local target_names = {
  home_dir .. "/.dotfiles/.termux ",
  home_dir .. "/.dotfiles/.bash ",
  home_dir .. "/.dotfiles/.emacs.d ",

  home_dir .. "/.dotfiles/.bashrc ",
  home_dir .. "/.dotfiles/.profile ",
  home_dir .. "/.dotfiles/.hushlogin ",
}

local symlink_names = {
  home_dir .. "/.termux",
  home_dir .. "/.bash",
  home_dir .. "/.emacs.d",

  home_dir .. "/.bashrc",
  home_dir .. "/.profile",
  home_dir .. "/.hushlogin",
}

local function set_symlink(target_name, symlink_name)
  os.execute(symlink_command .. target_name .. symlink_name)
end

if #symlink_names == #target_names then
  for i = 1, #target_names do
    set_symlink(target_names[i], symlink_names[i])
  end
else
  print("Source and target counts are not the same, exiting to avoid error")
  os.exit(1)
end
