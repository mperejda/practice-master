class Book
  attr_accessor :title

  def initialize
    @title=nil
  end

  def title
    words = @title.split

    filler_words = %w(and of in of a to the an)

    words = words.each_with_index.map { |word, index|
      filler_words.include?(word) ? (index == 0 ? word = word.capitalize : word) : word = word.capitalize
    }

    @title = words.join(" ")

  end
end
