class Dictionary
  attr_accessor :entries

  def initialize
    @d = {}
  end

  def entries
    @d.each { |entry| puts entry}
  end

  def add (entries ={})
    if entries.is_a?(String)
      @d = @d.merge({entries => nil})
    else
      @d = @d.merge(entries)
    end
  end

  def keywords
    @d.keys.sort
  end

  def include?(keyword)
    @d.keys.include?(keyword)
  end

  def find(keyword)
    keys_with_prefix = []
    @d.keys.each{ |key|
      key.include?(keyword) ? keys_with_prefix << key : nil
    }

    if @d.keys.include?(keyword)
      return {keyword => @d[keyword]}

    elsif !keys_with_prefix.empty?
    @d.select { |word, definition|
      keys_with_prefix.include?(word)
    }
    else
      {}
    end
  end

  def printable
    new_string = ''
    @d.keys.sort.each { |word|
      new_string += %Q{[#{word}] "#{@d[word]}"\n}
    }
    new_string[0..-2]
  end
end
