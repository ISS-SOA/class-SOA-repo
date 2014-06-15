# Code courtesy of: http://blog.migrantstudios.com/2013/06/24/uptimetry-2-0-advanced-url-monitoring-with-nokogiri-and-httparty/

# read URL from keyboard (console application only)
require 'highline/import'
url = ask("Enter URL: ") {|q| q.echo=true }

# import fetching and parsing libraries
require 'nokogiri'
require 'httparty'

# Read URL from Web
getHtml = HTTParty.get(url)

# Parse HTML structure
parseHtml = Nokogiri::HTML(getHtml)

# Search for all tags containing "href" attributes (i.e., links) in HTML
paths = parseHtml.xpath("//*/@href")

# Get just the value of the href paths (i.e., URL string)
pathValues = paths.map {|path| path.value}

# Only select paths that follow hypertext protocol
selectedPaths = pathValues.select {|e| e[0..3]=='http'}

# Only select http paths that do not match the host of the entered URL
outsidePaths = selectedPaths.select {|e| e.match(url).nil?}

# Print out all URLs pointing to outside resources
outsidePaths.each {|p| puts p}
