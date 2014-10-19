require './documents_mixin_inherit.rb'

class Author
  attr_accessor :fname, :mname, :lname

  def initialize(fname, mname, lname)
    @fname = fname
    @mname = mname
    @lname = lname
  end

  def to_s
    [@fname, @mname, @lname].join(' ').gsub(/  /, ' ')
  end
end


title = "About Me"
type = "Webpage"
author = Author.new('Soumya', '', 'Ray')

save_doc = Document::BasicDocument.new(title, type, author)
File.write('./docs/aboutme.yml', save_doc.to_yaml)

load_doc = YAML::load(File.read('./docs/aboutme.yml'))
