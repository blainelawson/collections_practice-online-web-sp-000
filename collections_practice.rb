require "pry"

def sort_array_asc(int_array)

  int_array = int_array.sort
end

def sort_array_desc(int_array)
  int_array = int_array.sort {|a,b| b <=> a}
end

def sort_array_char_count(str_array)
  str_array = str_array.sort {|a,b| a.length <=> b.length}
end

def swap_elements(array)
  placeholder = array[1]
  array[1] = array[2]
  array[2] = placeholder
  array
end

def swap_elements_from_to(array, index, destination_index)
  placeholder = array[destination_index]
  array[destination_index] = array[index]
  array[index] = placeholder
  array
end

def reverse_array(int_array)
  int_array = int_array.reverse
end

def kesha_maker(array)
  array.collect do |word|
    word = word.split("")
    word[2] = "$"
    word = word.join("")
  end
end

def find_a(array)
  array.collect do |word|
    word.start_with?("a") ? word : nil
  end.compact
end

def sum_array(array)
  sum = 0
  array.each {|num| sum += num}
  sum
end

def add_s(array)
  index_count = 0

  array.collect do |word|
    index_count += 1
    index_count != 2 ? word = "#{word}s" : word
  end
end
