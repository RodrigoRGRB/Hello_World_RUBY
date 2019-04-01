class Computer
 	@@users = {}
  def initialize(username,password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end
  
  def create(filename)
  	time = Time.now
    @files[filename] = time
    puts "Criado o arquivo #{filename} por #{@username} as #{time}"
  end
  
  def Computer.get_users
  	@@users
  end
  
  def files
    @files
  end
end

my_computer = Computer.new("Rodrigo",12345)
my_computer.create("ruby.txt")
my_computer.create("pokemon.txt")

cema = Computer.new("Iracema",321)

Computer.get_users.each{|u,p| puts u}

puts my_computer.files.each{|f,t| puts f}
