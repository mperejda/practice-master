speech=''
going_to_leave_meter = 0
while speech !='BYE'
  speech = gets.chomp
  if speech == "GOOD BYE"
    going_to_leave_meter +=1
  else
    going_to_leave_meter -= 1
  end
  
  if going_to_leave_meter == 3 
    speech = "BYE" 
  else
    puts "you must try harder to leave"
  end

  if speech == speech.upcase
    puts "NOT SINCE #{rand(1929..1951)}"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end

