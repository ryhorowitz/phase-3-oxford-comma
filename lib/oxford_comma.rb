require 'pry'
# oxford_comma(["fiddleheads", "okra", "kohlrabi"])
# => "fiddleheads, okra, and kohlrabi"
def oxford_comma(array)
  result = ""
  if array.size == 1 then result << array[0]
  elsif array.size == 2 then result << "#{array[0]} and #{array[1]}" 
  else 
    array.each_with_index do |w, i| 
      last_index = array[i] == array[-1]
      last_index ? 
        result << "and #{w}" 
        : result << w + ', '
      # binding.pry
    end
  end
  result
end

oxford_comma(["fiddleheads", "okra", "kohlrabi"])