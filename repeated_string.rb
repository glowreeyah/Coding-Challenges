def repeatedString(s, n)
  # string - s
  # count characters 'a' in string - c
  # n number of letters
  # number of times - t = n/length(s)
  # rest of characters in n-charactered string - remainder = n % length(s)
  # total number of 'a' = c * t + r
  
  counter = s.count('a')
  times = n / s.length
  remainder = n % s.length
  
  totalCount = times * counter + s.slice(0, remainder).count('a')
  
  end