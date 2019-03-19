require 'pry'

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

def reverse_integer(x)
  # Assume we are dealing with an environment 
  # which could only store integers within 
  # the 32-bit signed integer range
  # if the answer overflows, return 0
  # −2,147,483,648 to 2,147,483,647

  arr = x.to_s.split('')
  if arr[0] == "-"
    arr.shift
    arr.reverse!
    arr.unshift("-")
    rev_num = arr.join('').to_i
    # binding.pry
    return rev_num unless -2147483648 > rev_num
  else
    arr.reverse!
    rev_num = arr.join('').to_i
    return rev_num unless rev_num > 2147483647
  end
  0
end

def first_uniq_char(s)
  # accurate, but too slow:
  # array = s.chars
  # i = 0
  # while i <= s.length-1
  #   copy = array.slice(0,i).concat(array.slice(i+1, array.length))
  #   if !copy.include?(array[i])
  #     return i 
  #   end
  #   i +=1
  # end
  # -1

  # fast enough to pass all leetcode tests
  # Runtime: 232 ms
  # Memory Usage: 10.4 MB
  dict = Hash.new(0)

  j = 0

  s.each_char do |char|
    dict[char] +=1
  end

  s.each_char do |char|
    if dict[char] ==1
      return j
    end
    j+=1
  end

  -1
end

def is_anagram(s, t)
  return false if s.length != t.length
  
  s_dict = Hash.new(0)
  t_dict = Hash.new(0)

  s.each_char {|char| s_dict[char] +=1 }
  t.each_char {|char| t_dict[char] +=1 }

  # t_dict.each {|key, value| s_dict[key] == value ? (next) : (return false) 
  # true

  s_dict == t_dict ? (return true) : (return false)

end

def is_palindrome(s)
  # Runtime: 72 ms
  # Memory Usage: 10.2 MB
  # return true if s == ""
  # new_s = s.gsub(/[^A-Za-z0-9]/, '').downcase
  # i = 0 
  # while i < (new_s.length/2)
  #   if new_s[i] != new_s[new_s.length - 1 - i]
  #     return false 
  #   end
  #   i += 1
  # end
  # true

  # Runtime: 48 ms
  # Memory Usage: 10.7 MB
  return true if s == ""
  new_s = s.downcase.gsub(/[^[:word:]\s]/, '').delete(" ")
  new_s == new_s.reverse ? true : false
end

def my_atoi(str)
  # if the answer overflows, return max or min
  # −2,147,483,648 to 2,147,483,647 

  str.strip!
  if str[0].to_i == 0 && str[0] != "-" && str[0] != "+" && str[0] != "0"
    return 0
  elsif str[0].to_i == 0 && str[0] == "-"
    num = str.gsub(/[^0-9]"-"\w*/, '').to_i
    return -2147483648 if -2147483648 > num
    return num
  elsif str[0].to_i == 0 && str[0] == "+"
    str[0] = ""
    num = str.gsub(/[^0-9]\w*/, '').to_i
    return 2147483647 if num > 2147483647
    return num
  else
    num = str.gsub(/[^0-9]\w*/, '').to_i
    return 2147483647 if num > 2147483647
    return num
  end

end

def str_str(haystack, needle)
  # return 0 if needle ==""
  # return -1 unless haystack.include?(needle)

  # haystack.index(needle)


  return 0 if needle.empty?
  
  # instantiate a counter that will keeep track of
  # the index of haystack at which we'll begin comparing
  # haystack & needle
  start = 0
  
  # only perform comparison when remainder of haystack 
  # could possibly hold needle
  # i.e. when there are as may character left in haystack
  # after start as there are in needle
  while start + needle.length-1 <= haystack.length-1
    # compare a substring of haystack from index start
    # to index of start + highest index of needle 
    # with needle
    if haystack[start..start + needle.length - 1] == needle
      # if the substring & needle match
      # return start
      return start
    end
    
    # increment start to examine a new substring of haystack
    start += 1
  end
  
  # if earlier returns aren't triggered, needle isn't in haystack
  return -1
end

def count_and_say(n)
    
end

def say(last)
  i = 0 
  j = 1
  result = ""
  while i <= last.length - 1
    if i == last.length - 1
      result += (j.to_s + last[i])
    elsif last[i] != last[i+1]
      result += (j.to_s + last[i])
      j = 0
    end
    j += 1
    i += 1
  end
  result
end
