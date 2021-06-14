require "json"
require "file_utils"

unless File.exists?("./src/configs/commands.json")
  puts "commands.json doesn't exist"
  exit(1)
end

unless Dir.exists?("./public/static/images/commands")
  puts "public/static/images/commands/ are missing"
  exit(1)
end

commands = JSON.parse(File.read("./src/configs/commands.json")).as_h

FileUtils.rm_rf("./src/data/commands/") if Dir.exists?("./src/data/commands/")

total = 0
commands.each do |category, v|
  v.as_a.each do |x|
    name = x.as_h["name"].to_s
    desc = x.as_h["description"].to_s
    # command_name = name.split(" ")[-1]
    next unless File.exists?("./public/static/images/commands/#{category}/#{name}.png")
    markdown = <<-MARKDOWN
    #{desc}
    
    # Example Image

    ![an image showcasing the command in use](/static/images/commands/#{category}/#{name.gsub(" ", "%20")}.png)
    MARKDOWN
    Dir.mkdir_p("./src/data/commands/#{category}/") unless Dir.exists?("./src/data/commands/#{category}/")
    File.write("./src/data/commands/#{category}/#{name}.md", markdown)
    total = total.succ
  end
end

puts "Done!"
puts "Created #{total} markdown files!"
