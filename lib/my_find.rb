require 'pry'

def my_find(collection)
  i = 0

  while i < collection.length
    return collection[i] if yield(collection[i])
    i += 1
  end
end


array = [19, 18, 17]

puts my_find(array) {|num| num == 18}
