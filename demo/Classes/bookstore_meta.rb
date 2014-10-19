require './documents_mixin_inherit.rb'

module Document
  class BaseDocument
    def summary
      "#{self.title} is a #{self.type} by #{self.author}"
    end
  end
end

module WordContent
  def summary
    info + " (#{word_count} words)"
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
