

#http://blog.hendrikvolkmer.de/2011/02/25/moving-from-wordpress-on-a-vps-to-jekyll-and-amazon-s3/
task :default => :deploy

desc "Deploy to S3"
task :deploy do
  sh "jekyll"
  sh "s3cmd sync _site/* s3://www.heathanderson.net"
end


#https://github.com/imathis/octopress/blob/master/Rakefile   
# usage rake rake new_post['My New Post'] or rake new_post (defaults to "new-post")
desc "Start a new post"
task :new_post, :title do |t, args|
 args.with_defaults(:title => 'My New Post')
 title = args.title
 filename = "_posts/#{Time.now.strftime('%Y-%m-%d')}-#{title.downcase.gsub(/&/,'and').gsub(/[,'":\?!\(\)\[\]]/,'').gsub(/[\W\.]/, '-').gsub(/-+$/,'')}.html"
 puts "Creating new post: #{filename}"
 open(filename, 'w') do |post|
   system "mkdir -p _posts";
   post.puts "---"
   post.puts "layout: post"
   post.puts "title: \"#{title.gsub(/&/,'&amp;')}\""
   post.puts "date: #{Time.now.strftime('%Y-%m-%d %H:%M')}"
   post.puts "published: false"
   post.puts "---"
 end
end