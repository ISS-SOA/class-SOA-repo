require './documents_mixin.rb'

def summary(doc)
  info = "#{doc.title} is a #{doc.type} by #{doc.author}"
  if doc.instance_of? Document::BasicDocument
    return info
  else
    return info + " (#{doc.word_count} words)"
  end
end

class Bookstore
  attr_reader :docs

  def initialize(dir_path)
    @docs = []
    Dir.glob("#{dir_path}/*.yml") do |filename|
      @docs << Document::LazyContentDocument.new(filename)
    end
  end
end
