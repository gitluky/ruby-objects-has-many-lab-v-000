class Author

  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(title)
    self.posts << title
    title.author = self
    self.class.post_count+=1
  end

  def add_post_by_title(title)
    new_title = Post.new(title)
    add_post(new_title)
  end

  def self.post_count
    @@post_count
  end


end
