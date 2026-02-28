#!/data/data/com.termux/files/usr/bin/env lua

local home_dir = os.getenv("HOME")
local symlink_command = "ln -sfnT "

local target_names = {
  home_dir .. "/.dotfiles/.termux ",
  home_dir .. "/.dotfiles/.zsh ",
  home_dir .. "/.dotfiles/.config/fastfetch ",

  home_dir .. "/.dotfiles/.zshrc ",
  home_dir .. "/.dotfiles/.hushlogin ",
  home_dir .. "/.dotfiles/.clang-format ",
  home_dir .. "/.dotfiles/.stylua.toml ",
  home_dir .. "/.dotfiles/.config/starship.toml ",
}

local symlink_names = {
  home_dir .. "/.termux",
  home_dir .. "/.zsh",
  home_dir .. "/.config/fastfetch",

  home_dir .. "/.zshrc",
  home_dir .. "/.hushlogin",
  home_dir .. "/.clang-format",
  home_dir .. "/.stylua.toml",
  home_dir .. "/.config/starship.toml",
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
