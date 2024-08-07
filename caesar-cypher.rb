# def convert_to_cypher(string)
def convert_to_cypher(string, increment)
  # putting increment in mod26 (num of letters in alphabet)
  increment = increment % 26
  # break string into array of individual characters
  string_array = string.split("")
  # iterate over string array & store result in variable
  mapped_string_array = string_array.map do |character|
    # store char's ASCII value in variable
    character_ascii = character.ord
    # check if character is a uppercase letter with ASCII value
    if character_ascii >= 65 && character_ascii <= 90
      # get ASCII down to 0-26 for easier handling
      lowered_character_ascii = character_ascii - 65
      # increment
      lowered_character_ascii = (lowered_character_ascii + increment) % 26
      # update character ASCII
      character_ascii = lowered_character_ascii + 65
    # check if character is a lowercase letter with ASCII value
    elsif character_ascii >= 97 && character_ascii <= 122
      # get ASCII down to 0-26 for easier handling
      lowered_character_ascii = character_ascii - 97
      # increment
      lowered_character_ascii = (lowered_character_ascii + increment) % 26
      # update character ASCII
      character_ascii = lowered_character_ascii + 97
    # if character is not a letter
    else
      # return unchanged character
      character
    end
    # convert updated ASCII value back to character 
    character_ascii.chr
  end
  # join string array back together into a string for readability after changes
  mapped_string_array.join("")
end

# interactive user input
puts "Welcome to this caesar cypher encoder! Type in the text you would like to encode:"
string = gets
puts "By how many letters do you want to offset the text? Type in the integer here:"
increment = gets.to_i
# output of cypher
puts "The encoded text reads: #{convert_to_cypher(string, increment)}"