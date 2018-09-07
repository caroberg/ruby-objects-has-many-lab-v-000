class Post
  attr_accessor :post, :author

  @@all = []

  def initialize(post, author=nil)
    @post = post
    @author = author
    @@all << self
  end

  def author_name
    if self.author
      self.author.post
    else
      nil
    end
  end

  def self.all
    @@all
  end
end
