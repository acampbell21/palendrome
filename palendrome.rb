require 'pry'

@reversed = []
def menu
  puts 'Press 1 to start the palendrome'
  puts 'Press 2 to exit'
  @choice = gets.chomp.to_i
  menu_options
end



def menu_options
  case @choice
  when 1
    palendrome
  when 2
    puts 'You are leaving'
    exit
  when 3
    reverse
  else
    puts 'Enter a valid input'
    menu
  end
end

def reverse_string(string)
  split_string = string.split("")
  @reversed = []
  string.size.times { @reversed << split_string.pop }
  @reversed.join
end

def palendrome
  puts 'Check to see if a word is spelt the same forwards and backwards'
  first_word = gets.chomp
  @reversed << first_word.to_s
  puts reverse_string(first_word)
  puts 'type QUIT to exit or 1 to keep going'
  @choice = gets.chomp.to_i
  case @choice
    when 1
      palendrome
    when 'QUIT'
      exit
    else
      puts 'Enter a valid input'
      menu
  end
end






menu
