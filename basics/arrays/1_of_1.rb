# Description: Given a string, determine if all characters are unique (no duplicates).
# expect(unique_characters?("abcdefg")).to be true
# expect(unique_characters?("hello")).to be false
def one_of_one(string)
  unique_elements = string.downcase.split(//)
  unique_elements.uniq.size == unique_elements.size
end
p one_of_one("abcdefg")
p one_of_one("hello")

