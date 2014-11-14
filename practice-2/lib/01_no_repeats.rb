def repeats?(year)
  if year.to_s.split("") == year.to_s.split("").uniq
    true
    else
      false
      end
end



def no_repeats(year_start, year_end)

  years=[]

  (year_start..year_end).select {  |year| 
    if repeats?(year)
      years << year
    end
  }
  p years
end
