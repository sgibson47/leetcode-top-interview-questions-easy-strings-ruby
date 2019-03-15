def reverse_array(s)
  #s.reverse!
  
  # without reverse!
  # return s if s.length <=1
  # output =[]
  # i = s.length-1
  # while i >= 0
  #   output.push(s[i])
  #   i -=1
  # end
  # output

  # but chaning the array in place
  return s if s.length <=1
  i = s.length-1
  output = []
  while i >= 0
    output.push(s.pop)
    i -=1
  end
  
  output.map {|elem| s.push(elem)}
  s

  # or 
    #swap(s,0,s.length-1)
end

def swap(s, l, r)
  return s if l>=r
  temp = s[l]
  s[l] = s[r]
  s[r] = temp
  swap s,l+1,r-1
end

def reverse(s)
  #s.chars.reverse!.join('')
  #without reverse!

  return s if s.length <=1
  output =[]
  array = s.chars
  i = s.length
  while i >= 0
    output.push(array[i])
    i -=1
  end
  output.join('')
end