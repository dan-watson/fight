require 'nokogiri'

file = File.open('/Users/danwatson/Downloads/file.xml')
xml = Nokogiri::XML(file)

puts xml

xml.xpath("//File").each do |row|
  puts row.content
end
