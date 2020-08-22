def welcome
  puts "Please enter a command:" 
  gets.strip
end


def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end


def list(songs) 
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end


def play(songs)
  message = "Invalid input, please try again"
  
  puts "Please enter a song name or number:"
  selected_song = gets.strip
  
  songs.each_with_index do |song, index|
    index += 1
    if selected_song == song || 
      selected_song == index.to_s
      message = "Playing #{song}"
    end
  end
  puts message
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  exit = false
  
  until exit == true
  command = welcome
  
    case command
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
      exit = true
    else
      puts "#{command} is not a valid command."
    end
  end
end


