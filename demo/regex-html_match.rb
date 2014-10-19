
text = "<!--TOCENIZERGEM\nThis is the text\nto be \nreplaced\nTOCENIZERGEM-->"

newtext = text.gsub(/(.*TOCENIZERGEM\N*\n)(.*)(\n\N*TOCENIZERGEM.*)/m, '\2')\

puts newtext
puts


token = 'TOCENIZERGEM'
head = "(.*#{token}\N*\n)"
tail = "(\n\N*#{token}.*)"
content = 'this is the new content!'
newtext = text.gsub(/#{head}(.*)#{tail}/m, "\\1#{content}\\3")

puts newtext
