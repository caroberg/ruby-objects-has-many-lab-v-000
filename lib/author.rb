class Author
  attr_accessor :title

  @@post_count = 0

  def initialize(title)
    @title = title
    @posts = []
  end

  def add_post(title)
    self.posts << title
    post.author = self
    @@post_count +=1
  end

  def add_post_by_title(title)
    song = Post.new(title)
    self.posts << title
    post.author = self
    @@post_count +=1
  end

  def posts
    @posts
  end

  def self.post_count
    @@post_count
  end
end
