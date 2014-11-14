text = %q{
  Ruby is a great programmoing language. It is object oriented
  and has many groovy features. Some people don't like it, but that's
  not our problem! It's easy to learn. It's great. To learn more about Ruby,
  visit the officail Ruby Web site today.
}

sentences = text.gsub(/\s+/, " ").strip.split(/\.|\?|!/)
sorted_sentences = sentences.sort_by { |sentence| sentence.length }

one_third = sorted_sentences.count / 3

ideal_sentences = sorted_sentences.slice(one_third, one_third +1)
ideal_sentences = ideal_sentences.select { |sentence| sentence =~ /is|ar/ }

p ideal_sentences.join(". ")
