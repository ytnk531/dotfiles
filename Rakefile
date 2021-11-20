
require 'rake'

def each_dotfiles
  Dir.children('home').each do |dotfile|
    yield dotfile
  end
end

def link(file, dotfile_dir, backup_dir)
  dest = File.join(home, file)
  return if File.symlink?(dest)

  src  = File.join(dots, file)
  if File.exists?(dest)
    puts "Moving existing #{file} to #{backup}"
    system "mv #{dest} #{backup}"
  end
  puts "Linking #{file}"
  system "ln -s #{src} #{dest}"
end

desc "Install dot files as symbolic links"
task :install do
  home = Dir.home
  backup_dir = File.join(home, ".backup-dotfiles")
  Dir.mkdir(backup_dir) unless File.directory?(backup_dir)
  dotfile_dir = File.join(Dir.pwd, 'home')
  each_dotfiles do |file|
    link(file, dotfile_dir, backup_dir)
  end
end
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)" 
# bin
# curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
# ./nvim.appimage 

