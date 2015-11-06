def say_what? message
  print message
  STDIN.gets.chomp
end

def sluggize str
  str.downcase.gsub(/[^a-z0-9]+/, '-').gsub(/^-|-$/, '');
end

desc "Publish blog to gh-pages"
task :publish do
  system "git add . --all"
  message = "Site updated at #{Time.now.utc}"
  system "git commit -m #{message.inspect}"
  system "git push origin master"
end

desc "Create a new post"
task :new do
  title     = say_what?('Title of post: ')
  filename  = "_posts/#{Time.now.strftime('%Y-%m-%d')}-#{sluggize title}.md"

  if File.exist? filename
    puts "Can't create new post: \e[33m#{filename}\e[0m"
    puts "  \e[31m- Path already exists.\e[0m"
    exit 1
  end

  File.open(filename, "w") do | post |
    post.puts "---"
    post.puts "layout: post"
    post.puts "title: #{title}"
    post.puts "date: #{Time.now.strftime('%Y-%m-%d')} #{Time.now.strftime('%T')}"
    #post.puts "categories: programming, network"
    #post.puts "tags: [c++, ruby, python, git]"
    post.puts "---"
    post.puts ""
    post.puts "Once upon a time..."
    post.puts ""
    post.puts ""
    post.puts ""
    post.puts "{% highlight ruby %}"
    post.puts "def print_hi(name)"
    post.puts "  puts Hi, tom"
    post.puts "end"
    post.puts "{% endhighlight %}"
    post.puts "You’ll find this post in your `_posts` directory"
  end
  puts "A new post was created for at:"
  puts "  \e[32m#{filename}\e[0m"
end
