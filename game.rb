pages_with_questions = {}
lines_grabbed = ""
plines = 0 
key = ""
File.open("story.txt", "r") do |infile|
	while (line = infile.gets)
		if line.index("~p")
			key=line
			lines_grabbed = ""
		else
			lines_grabbed += line
			end
			pages_with_questions[key] = lines_grabbed.chomp 
		end
	end
	#loop start until = (variable)
	p1 = pages_with_questions.select do |key,value| 
		key.index("~p1")
	end
	p1.each do |k,v|
		puts v
	end

	puts "Please Choose 1-3"
	choice = gets.to_i
	uc = choice + 1
until choice == 1..3
	puts "Wrong Number! please try again!"
	choice = gets.to_i
	uc = choice + 1
end


	result = pages_with_questions.select do |key,value|
		key.index("~p#{uc}")
	end
	result.each do |a,b|
		puts b
	end
	File.open("story.txt", "r+") do |file|
  while line = file.gets
  end
  output = File.open( "second.txt", "w" )
  output << file.gets
  output.close      
end

	#puts restart 
	#gets 
=begin 
	puts "Would you like to restart the game"
	restart = gets.chomp
	if restart == "yes" && true
=end 

	




