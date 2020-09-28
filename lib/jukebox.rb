require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(array)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  
  if user_input.to_i <= array.length && user_input.to_i >= 1
    puts "Playing #{array[user_input.to_i - 1]}"
  elsif array.find {|song| song == user_input}
    puts "Playing #{user_input}"
  else
    puts "Invalid input, please try again"
  end
end

def list(array)
  array.each_with_index {|song, i| puts "#{i + 1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  puts "Please enter a command:"
  command = gets.strip
  
  until command == 'exit' do
    if command == 'help'
      help
    elsif command == 'list'
      list(array)
    elsif command == 'play'
      play(array)
    elsif command == 'exit'
      break
    else
      puts "I'm sorry, I did not understand that."
    end
    puts "Please enter a command:"
    command = gets.strip
  end
  exit_jukebox
end
