movies = {
  pokemon: 4,
  digimon: 2,
  }

puts "Escolha o que tu quer fdp"
choice = gets.chomp

case choice
  when "add"
  	puts "Nome do filme"
  	title = gets.chomp
  	puts "avaliao"
  	rating = gets.chomp
  	movies[title.to_sym] = rating.to_i
  	if movies[title.to_sym]
      puts "ok"
      puts movies
    else 
      puts "no"
    end
  when "update"
  	puts "Nome do filme para atualizar"
  	title = gets.chomp
  	if movies[title.to_sym]
      puts "Novo rating"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts movies
    else 
      puts "error"
    end
  when "display"
  	movies.each {|movie, rating| puts "#{movie}: #{rating}"}
  when "delete"
  	puts "Qual o filme cuzao"
  	movie = gets.chomp
  	if movies[movie.to_sym]
      movies.delete(movie.to_sym)
      puts "Filme do/a #{movie} deletado com sucesso"
    else
      puts "Not found"
    end
	else
  	puts "Error!"
end
