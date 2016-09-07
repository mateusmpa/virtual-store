class Magazine
  puts "O self aqui é: #{self}"
  puts "O self aqui é do tipo #{self.class}"

  @id = 0

  def self.id
    @id += 1
  end

  def initialize(title)
    @id = self.class.id
    @title = title
  end

  def id
    @id
  end

  def title
    title_upcase = @title.upcase
    "Title: #{title_upcase}"
  end
end
