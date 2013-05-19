

# based on http://blog.hendrikvolkmer.de/2011/02/25/moving-from-wordpress-on-a-vps-to-jekyll-and-amazon-s3/
task :default => :deploy

desc "Deploy to S3"
task :deploy do
  sh "jekyll build"
  sh "s3cmd sync --reduced-redundancy --exclude 'images/*' _site/* s3://www.heathanderson.net"
  sh "s3cmd sync --reduced-redundancy --add-header 'Expires: Thu, 6 Feb 2020 00:00:00 GMT' _site/images/* s3://www.heathanderson.net/images/"
end


# adapted from https://github.com/imathis/octopress/blob/master/Rakefile   
# usage rake new_post['My New Post'] or rake new_post (defaults to "My New Post")
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
   post.puts "date: #{Time.now.strftime('%Y-%m-%d')}"
   post.puts "published: false"
   post.puts "---"
 end
end