def to_morse(word)
  debugger

  map = {"a"=> ".-", "b" => "-...", "c"=> "-.-.", "d"=> "-..", "e"=>".", "f"=> "..-.", "g"=>"--.", "h"=> "....", "i"=>"..", "j"=>".---", "k"=>"-.-",
    "l"=>".-..", "m"=> "--", "n"=> "-.", "o"=>"---", "p"=>".--.", "q"=>"--.-", "r"=>".-.", "s"=> "...", "t"=> "-", "u"=>"..-",
    "v"=>"...-", "w"=> ".--", "x" => "-..-", "y"=> "-.--", "z"=> "--.." }

    letters = word.split("")

    letters = letters.map { |letter| letter = map["#{letter}"] }

    letters = letters.join(" ")
  end

def morse_encode(str)
  debugger

  #to_morse(str)
  if str.include?(" ")
    words = str.split

    words = words.map { |word| word = to_morse(word) }

    words = words.join("  ")
  else
    to_morse(str)
  end
end
