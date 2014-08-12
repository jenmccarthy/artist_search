require './lib/artist'
require'./lib/work'

@current_artist

def main_menu
  loop do
    puts 'Press [a] to add an artist'
    puts 'Press [l] to list the artists in your collection'
    puts 'Press [w] to add a new work to an artist'
    puts 'Press [x] to exit'
    main_choice = gets.chomp
    if main_choice == 'a'
      add_artist
    elsif main_choice == 'l'
      display_artists
    elsif main_choice == 'w'
      add_works
    elsif main_choice == 'x'
      puts "Good-bye!"
      exit
    else
      puts "Sorry, that wasn't a valid option."
    end
  end
end

def add_artist
  puts "Enter an artists name:"
  input_name = gets.chomp
  puts "Enter the style of that artist:"
  artist_style = gets.chomp
  new_artist = Artist.new({'name' => input_name, 'style' => artist_style})
  new_artist.save
  puts "Enter the name of the work of art:"
  work_name = gets.chomp
  puts "Enter the year this work was completed:"
  year = gets.chomp
  new_work = Work.new({'name' => work_name, 'year' => year})
  new_artist.add_work(new_work)
  puts "Artist and work added!\n\n"
  main_menu
end

def display_artists
  puts "The artists in your collection:"
  Artist.all.each_with_index do |artist, index|
    puts (index + 1).to_s + " " + artist.name
  end
  puts "Please choose an artist to view his/her works:"
  choice = gets.chomp.to_i
  works = Artist.all[choice - 1].works
  works.each do |work|
    puts work.name + " " + work.year
  end
end

def add_works
  puts "The artists in your collection:"
  Artist.all.each_with_index do |artist, index|
    puts (index + 1).to_s + " " + artist.name
  end
  puts "Please choose an artist to add a work to:"
  artist_choice = gets.chomp.to_i
  artist = Artist.all[artist_choice -1]
  puts "What is the new work you would like to add:"
  new_work = gets.chomp
  puts "Enter the year this work was completed:"
  year = gets.chomp
  additional_work = Work.new({'name' => new_work, 'year' => year})
  artist.add_work(additional_work)
end

main_menu