class Author
  attr_accessor :name

  @@title_count = 0

  def initialize(name)
    @name = name
    @titles = []
  end

  def add_title(title)
    self.titles << title
    title.author = self
    @@title_count +=1
  end

  def add_title_by_name(name)
    title = Post.new(name)
    self.titles << title
    title.author = self
    @@title_count +=1
  end

  def titles
    @titles
  end

  def self.title_count
    @@title_count
  end
end
