def leap_years(start_year, end_year)
  (start_year..end_year).each { |year|
    if (year%4 == 0 && year%100 != 0) || (year%4 == 0 && year%100 == 0 && year%400 == 0)
      puts year
      end
  }
end
