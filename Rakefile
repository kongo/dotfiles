require 'rake'

task :install do
  puts "Beginning installation"
  files_and_destinations.each do |file, dest|
    symlink_with_backup file, File.join(dest, file)
    puts "\n"
  end
  puts "Installation finished"
end

def files_and_destinations
  lines = File.read("README.md").split "\n"
  lines.shift(lines.find_index("What goes where") + 2)
  lines = lines.shift(lines.find_index "").map { |s| s.strip.squeeze(" ").split " "}
  Hash[lines]
end

def symlink_with_backup(source, target)
  backup_item target rescue return

  source, target = File.expand_path(source), File.expand_path(target)

  print "Creating symlink #{source} > #{target} .. "
  begin
    File.symlink source, target
    puts "done".green
  rescue Exception => e
    puts "\nCould not create symlink: #{e.message}".red
  end
end


def backup_item(path)
  path = File.expand_path path
  puts "Checking #{path} .. #{(File.exists?(path) ? 'yes' : 'no').yellow}"
  return unless File.exists? path

  begin
    print "Renaming #{path} > #{path}.bak .. "
    `mv #{path} #{path}.bak`
    puts 'done'.green
  rescue Exception => e
    puts "\nCould not create backup: #{e.message}".red
    raise e
  end
end


# colorization
class String
  {red: 31, green: 32, yellow: 33}.each { |color, code|
    define_method(color) { "\e[#{code}m#{self}\e[0m" }
  }
end
