
# sample HTML text to be searched
html = "<!--TOCENIZERGEM\nThis is the text\nto be \nreplaced\nTOCENIZERGEM-->"
puts html
puts

# regex example to get text within head and tail markers
extract = html.gsub(/(.*TOCENIZERGEM\N*\n)(.*)(\n\N*TOCENIZERGEM.*)/m, '\2')
puts extract
puts

# regex example that substitutes text within head and tail markers
token = 'TOCENIZERGEM'
head = "(.*#{token}\N*\n)"
tail = "(\n\N*#{token}.*)"

content = 'this is the new body content!'
newhtml = html.gsub(/#{head}(.*)#{tail}/m, "\\1#{content}\\3")
puts newhtml
