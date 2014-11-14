stop_words= %w(the a by on for of are with just but and to the my I has some in)
lines = File.readlines("text.txt")
line_count = lines.size
text= lines.join

#Count the characters
total_characters = text.length
total_characters_no_spaces = text.gsub(/\s+/, '').length

#Count the words, sentences, and paragraphs
scan_word_count = text.scan(/\w+/).length
split_word_count = text.split.count
sentence_count = text.split(/\.|\?|!/).length
paragraph_count = text.split(/\n\n/).length

#Make a list of words and keywords
words = text.scan(/\w+/)
keywords = words.select { |word| !stop_words.include?(word) }

#Summarize text by cherry picking choice sentences
sentences = text.gsub(/\s+/, " ").strip.split(/\.|\?|!/)
sorted_sentences = sentences.sort_by { |sentence| sentence.length }
one_third = sorted_sentences.count / 3
ideal_sentences = sorted_sentences.slice(one_third, one_third + 1)
ideal_sentences = ideal_sentences.select { |sentence| sentence =~ /is|are/ }


#Yield analysis
p "#{line_count} lines"
p"#{total_characters} characters"
p "#{total_characters_no_spaces} characters (excluding spaces)"
p "#{scan_word_count} = scan word count"
p "#{split_word_count} = split word count"
p "#{sentence_count} sentences"
p "#{paragraph_count} paragraphs"
p "#{sentence_count/paragraph_count} sentecnes per paragraph (on average)"
p "#{scan_word_count/sentence_count} words per sentence (on average)"
p "#{((keywords.length.to_f/scan_word_count.to_f) * 100).to_i}% of the words in the text are keywords"
puts "Summary: \n\n" + ideal_sentences.join(". ")

puts "-- End of Analysis"
