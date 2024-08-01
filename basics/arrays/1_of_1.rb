# Description: Given a string, determine if all characters are unique (no duplicates).
# expect(unique_characters?("abcdefg")).to be true
# expect(unique_characters?("hello")).to be false
def one_of_one(string)
  unique_elements = string.downcase.split(//)
  unique_elements.uniq.size == unique_elements.size
  # compares the size of the generated uniq size string, with original string
  # if size is the same, it returns true - if not the same, returns false

end
p one_of_one("abcdefg")
p one_of_one("hello")

