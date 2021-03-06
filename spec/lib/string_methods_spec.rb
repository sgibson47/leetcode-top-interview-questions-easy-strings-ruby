require 'spec_helper'
require '/Users/samanthagibson/Development/code/leetcode-top-interview-questions-easy-strings-ruby/lib/string_methods.rb'

describe "#reverse_array" do 
  describe "Example 1" do
    it "returns reversed string" do 
      string = ["h","e","l","l","o"]
      expect(reverse_array(string)).to eq(["o","l","l","e","h"])
    end
  end
  describe "Example 2" do
    it "returns reversed string" do 
      string = ["H","a","n","n","a","h"]
      expect(reverse_array(string)).to eq(["h","a","n","n","a","H"])
    end
  end
end

describe "#reverse" do 
  describe "Example 1" do
    it "returns reversed string" do 
      string = "hello"
      expect(reverse(string)).to eq("olleh")
    end
  end
  describe "Example 2" do
    it "returns reversed string" do 
      string = "Hannah"
      expect(reverse(string)).to eq("hannaH")
    end
  end
end

describe "#reverse_integer" do 
  describe "Example 1" do
    it "returns reversed integer" do 
      num = 123
      expect(reverse_integer(num)).to eq(321)
    end
  end

  describe "Example 2" do
    it "returns reversed integer" do 
      num = -123
      expect(reverse_integer(num)).to eq(-321)
    end
  end

  describe "Example 3" do
    it "returns reversed integer" do 
      num = 120
      expect(reverse_integer(num)).to eq(21)
    end
  end

  describe "Example 4" do
    it "returns reversed integer" do 
      num = 1534236469
      expect(reverse_integer(num)).to eq(0)
    end
  end

  describe "Example 5" do
    it "returns reversed integer" do 
      num = -2147483648
      expect(reverse_integer(num)).to eq(0)
    end
  end

end

describe "#first_uniq_char" do 
  describe "Example 1" do
    it "returns the index of the first non-repeating character" do 
      s = "leetcode"
      expect(first_uniq_char(s)).to eq(0)
    end
  end

  describe "Example 2" do
    it "returns the index of the first non-repeating character" do 
      s = "loveleetcode"
      expect(first_uniq_char(s)).to eq(2)
    end
  end

  describe "Example 3" do
    it "returns the index of the first non-repeating character" do 
      s = "aaaaaaaaa"
      expect(first_uniq_char(s)).to eq(-1)
    end
  end
end



describe "#is_anagram" do 
  describe "Example 1" do
    it "returns whether t is an anagram of s" do 
      s = "anagram"
      t = "nagaram"
      expect(is_anagram(s, t)).to eq(true)
    end
  end

  describe "Example 2" do
    it "returns whether t is an anagram of s" do 
      s = "rat"
      t = "car"
      expect(is_anagram(s, t)).to eq(false)
    end
  end

  describe "Example 3" do
    it "returns whether t is an anagram of s" do 
      s = "ab"
      t = "a"
      expect(is_anagram(s, t)).to eq(false)
    end
  end
end


describe "#is_palindrome" do 
  describe "Example 1" do
    it "returns whether s is a palindrome" do 
      s = "A man, a plan, a canal: Panama"
      expect(is_palindrome(s)).to eq(true)
    end
  end

  describe "Example 2" do
    it "returns whether t is an anagram of s" do 
      s = "race a car"
      expect(is_palindrome(s)).to eq(false)
    end
  end

  describe "Example 3" do
    it "returns whether t is an anagram of s" do 
      s = ""
      expect(is_palindrome(s)).to eq(true)
    end
  end
end

describe "strin to integer #my_atoi" do 
  describe "Example 1" do
    it "returns integer" do 
      s = "42"
      expect(my_atoi(s)).to eq(42)
    end
  end

  describe "Example 2" do
    it "returns integer" do 
      s = "   -42"
      expect(my_atoi(s)).to eq(-42)
    end
  end

  describe "Example 3" do
    it "conversion stops when the next character is not a numerical digit" do 
      s = "4193 with words"
      expect(my_atoi(s)).to eq(4193)
    end
  end

  describe "Example 4" do
    it "first non-whitespace character is non-numerical, return 0" do 
      s = "words and 987"
      expect(my_atoi(s)).to eq(0)
    end
  end

  describe "Example 5" do
    it "'-91283472332' is out of the range, so INT_MIN (−231) is returned" do 
      s = "-91283472332"
      expect(my_atoi(s)).to eq(-2147483648)
    end
  end

  describe "Example 6" do
    it "stops considering integers after a non-numerical character" do 
      s = "3.14159"
      expect(my_atoi(s)).to eq(3)
    end
  end

  describe "Example 7" do
    it "handles +" do 
      s = "+1"
      expect(my_atoi(s)).to eq(1)
    end
  end

  describe "Example 8" do
    it "handles first non space = 0" do 
      s = "  0000000000012345678"
      expect(my_atoi(s)).to eq(12345678)
    end
  end

  describe "Example 9" do
    it "stops considering integers after a space" do 
      s = "   +0 123"
      expect(my_atoi(s)).to eq(0)
    end
  end

end

describe "#str_str" do 
  describe "Example 1" do
    it "returns the first index of the needle in the haystack" do 
      haystack = "hello"
      needle = "ll"
      expect(str_str(haystack, needle)).to eq(2)
    end
  end

  describe "Example 2" do
    it "returns -1 if needle is not in the haystack" do 
      haystack = "aaaaa"
      needle = "bba"
      expect(str_str(haystack, needle)).to eq(-1)
    end
  end

  describe "Example 3" do
    it "returns 0 if needle is an empty string" do 
      haystack = "aaaaa"
      needle = ""
      expect(str_str(haystack, needle)).to eq(0)
    end
  end
end

describe "#count_and_say" do 
  describe "Example 1" do
    it "returns a string of the nth term of the count-and-say sequence" do 
      n = 1
      expect(count_and_say(n)).to eq("1")
    end
  end

  describe "Example 2" do
    it "returns a string of the nth term of the count-and-say sequence" do 
      n = 2
      expect(count_and_say(n)).to eq("11")
    end
  end

  describe "Example 3" do
    it "returns a string of the nth term of the count-and-say sequence" do 
      n = 3
      expect(count_and_say(n)).to eq("21")
    end
  end

  describe "Example 4" do
    it "returns a string of the nth term of the count-and-say sequence" do 
      n = 4
      expect(count_and_say(n)).to eq("1211")
    end
  end

  describe "Example 5" do
    it "returns a string of the nth term of the count-and-say sequence" do 
      n = 5
      expect(count_and_say(n)).to eq("111221")
    end
  end
end

describe "#say" do 
  describe "Example 1" do
    it "returns a string counting & saying its argument" do 
      last  = "1"
      expect(say(last)).to eq("11")
    end
  end

  describe "Example 2" do
    it "returns a string counting & saying its argument" do 
      last  = "11"
      expect(say(last)).to eq("21")
    end
  end

  describe "Example 3" do
    it "returns a string counting & saying its argument" do 
      last  = "21"
      expect(say(last)).to eq("1211")
    end
  end

  describe "Example 4" do
    it "returns a string counting & saying its argument" do 
      last  = "1211"
      expect(say(last)).to eq("111221")
    end
  end
end

describe "#longest_common_prefix" do 
  describe "Example 1" do
    it "returns the longest common prefix string amongst an array of strings" do 
      strs = ["flower","flow","flight"]
      expect(longest_common_prefix(strs)).to eq("fl")
    end
  end

  describe "Example 2" do
    it "returns '' if there is no common prefix" do 
      strs = ["dog","racecar","car"]
      expect(longest_common_prefix(strs)).to eq("")
    end
  end

  describe "Example 3" do
    it "returns '' if sts is empty" do 
      strs = []
      expect(longest_common_prefix(strs)).to eq("")
    end
  end

  describe "Example 4" do
    it "returns '' even if there's a match later in strings" do 
      strs = ["aca","cba"]
      expect(longest_common_prefix(strs)).to eq("")
    end
  end
end