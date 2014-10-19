require 'yaml'

# WordContent - to be mixed into any class with contents containing words
module WordContent
  def words
    @content.split
  end

  def word_count
    words.size
  end
end

# Module for all document related classes
module Document
  # Base class from which all other document classes inherit
  class BaseDocument
    attr_accessor :title, :type, :author
  end

  # Document - Stores the title, author, and contents of a document
  class BasicDocument < BaseDocument
    include WordContent

    def initialize(title, type, author)
      @title = title
      @type = type
      @author = author
    end
  end

  # ContentDocument - Reads document from file immediately
  class ContentDocument < BaseDocument
    include WordContent

    def initialize(path)
      doc_yaml = YAML::load(File.read(path))
      @title = doc_yaml['title']
      @type = doc_yaml['type']
      @author = doc_yaml['author']
      @content = doc_yaml['content']
    end
  end

  # LazyDocument - Loads up information about a document only when needed
  class LazyContentDocument < BaseDocument
    include WordContent

    def initialize(path)
      @path = path
      @document_read = false
    end

    def read_document
      return if @document_read

      doc_yaml = YAML::load(File.read(@path))
      @title = doc_yaml['title']
      @type = doc_yaml['type']
      @author = doc_yaml['author']
      @content = doc_yaml['content']

      @document_read = true
    end

    def title
      read_document
      @title
    end

    def type
      read_document
      @type
    end

    def author
      read_document
      @author
    end

    def content
      read_document
      @content
    end
  end
end
