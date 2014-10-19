
class BasicDocument
  def title
    @title
  end

  def author
    @author
  end

  def type
    @type
  end

  def title=(new_title)
    @title = new_title
  end

  def author=(new_author)
    @author = new_author
  end

  def type=(new_type)
    @type = new_type
  end

  def initialize(title, author, type)
    @title = title
    @author = author
    @content = content
  end
end
