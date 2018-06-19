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
  puts "help : displays this help message"
  puts "list : displays a list of songs you can play"
  puts "play : lets you choose a song to play"
  puts "exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  
  if (1..9).to_a.include?(response.to_i)
    puts "Playing #{songs[response.to_i - 1]}"
    elsif songs.include?(response)
    puts "Playing #{response}"
  else 
    puts "Invalid input, please try again"
  end 
end

def list(songs)
  songs.each_with_index {|item, index|
    puts "#{index+1}. #{item}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(response)
  help 
  puts "Please enter a command:"
  response = gets.strip 
  if response == "list"
    list
  elsif response == "play"
    play
  elsif response == "help"
    help
  else
    exit_jukebox
  end
    
end
