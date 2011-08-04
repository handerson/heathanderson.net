#http://blog.hendrikvolkmer.de/2011/02/25/moving-from-wordpress-on-a-vps-to-jekyll-and-amazon-s3/
task :default => :deploy

desc "Deploy to S3"
task :deploy do
  sh "jekyll"
  sh "s3cmd sync _site/* s3://www.heathanderson.net"
end