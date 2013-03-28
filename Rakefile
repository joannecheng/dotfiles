require 'rake'

desc "install the dot files into user's home directory"
task :install do
  replace_all = false
  puts "file #{Dir['*']}" 
  Dir['*'].each do |file|
    next if %w[Rakefile README LICENSE id_dsa.pub].include? file
    
    if File.exist?(File.join(ENV['HOME'], ".#{file}"))
      if replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file}"
        end
      end
    else
      link_file(file)
    end
  end

  # Download .profile gist from github
  puts "linking .profile from dropbox"
  system %Q{ln -s "$HOME/Dropbox/.profile" "$HOME/.profile"}
end

def replace_file(file)
  system %Q{rm -rf "$HOME/.#{file}"}
  link_file(file)
end

def link_file(file)
  puts "linking ~/.#{file}"
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end
