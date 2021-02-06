# Inside your app, load up the bundled environment: 
require 'rubygems'
require 'bundler/setup'

# Run an executable that comes with a gem in your bundle: 
# ex: $ bundle exec rspec spec/models

#  if you want a way to get a shortcut to gems in your bundle: 
# bundle install --binstubs
# ex: $ bin/rspec spec/models

# require your gems as usual
require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
doc = Nokogiri::HTML(URI.open('https://nokogiri.org/tutorials/installing_nokogiri.html'))

# Search for nodes by css
doc.css('nav ul.menu li a', 'article h2').each do |link|
  puts link.content
end

# Search for nodes by xpath
doc.xpath('//nav//ul//li/a', '//article//h2').each do |link|
  puts link.content
end

# Or mix and match
doc.search('nav ul.menu li a', '//article//h2').each do |link|
  puts link.content
end
