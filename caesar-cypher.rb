# def convert_to_cypher(string)
def convert_to_cypher(string, increment)
  # putting increment in mod26 (num of letters in alphabet)
  increment %= 26
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
      character
    end
    character_ascii.chr
  end
  mapped_string_array.join("")
end