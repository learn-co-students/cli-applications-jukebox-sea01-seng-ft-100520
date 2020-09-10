require 'pry'
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
    puts "Please enter a song name or number:"
    ans = gets.chomp
    puts "Invalid input, please try again" unless songs.any?(ans)
    if ans.length == 1
        ans = ans.to_i
        puts "Playing #{songs[ans - 1]}"
    else        
        songs.each do |song|
            puts "Playing #{song}." if song == ans
        end
    end
end
def exit_jukebox
    puts "Goodbye"
end
def run(songs)
    user_input = ''
    loop do
        puts "Please enter a command:"
        user_input = gets.chomp
        case user_input
        when 'help'
            help
        when 'play'
            play(songs)
        when 'list'
            list(songs)
        when 'exit'
            exit_jukebox
            break
        end

    end
end