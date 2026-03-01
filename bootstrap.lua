#!/data/data/com.termux/files/usr/bin/env lua

local home_dir = os.getenv("HOME")
local symlink_command = "ln -sfnT "

local target_names = {
  home_dir .. "/.dotfiles/.termux ",
  home_dir .. "/.dotfiles/.bash ",

  home_dir .. "/.dotfiles/.hushlogin ",
  home_dir .. "/.dotfiles/.clang-format ",
  home_dir .. "/.dotfiles/.bashrc ",
}

local symlink_names = {
  home_dir .. "/.termux",
  home_dir .. "/.bash",

  home_dir .. "/.hushlogin",
  home_dir .. "/.clang-format",
  home_dir .. "/.bashrc",
}

function set_symlink(target_name, symlink_name)
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
