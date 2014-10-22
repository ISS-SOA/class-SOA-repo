# sample HTML text to be searched
html = "Stuff before\n<!--REPLACE start\nThis is the text\nto be"\
       " \nreplaced\nend REPLACE-->\nMore stuff after"
puts html
puts

# regex example to get text within head and tail markers
extract = html.gsub(/(.*REPLACE)(.*)(REPLACE.*)/m, '\2')
puts extract
puts

# regex example that substitutes text within given markers
# also demonstrates Ruby string interpoloation in regex
token = 'REPLACE'
head = "(.*#{token})"
tail = "(#{token}.*$)"
body = "(.*)"

content = ' this is the new text!'
newhtml = html.gsub(/#{head}#{body}#{tail}/m, "\\1\n#{content}\n\\3")
puts newhtml
