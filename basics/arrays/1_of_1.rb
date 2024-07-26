# Description: Given a string, determine if all characters are unique (no duplicates).

def one_of_one(string)

  unique_string = {}
  result = []

    string.each do |element|
      unique_string[element] = true
    end
  unique_string.each_key do |key|
    result << key
  end
  result.inspect
end

p one_of_one("abcdefg").inspect