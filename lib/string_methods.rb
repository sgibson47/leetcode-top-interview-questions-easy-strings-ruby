def reverse_array(s)
  #s.reverse!
  # without reverse!
  return s if s.length <=1
  output =[]
  i = s.length-1
  while i >= 0
    output.push(s[i])
    i -=1
  end
  output
end

def reverse(s)
  #s.chars.reverse!.join('')
  #without reverse!

  return s if s.length <=1
  output =[]
  array = s.chars
  i = s.length-1
  while i >= 0
    output.push(array[i])
    i -=1
  end
  output.join('')
end