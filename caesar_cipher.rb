class Crypto
  def initialize(string, shift)
    @string = string
    @shift = shift
  end

  def encode
    # Split the string into an array of characters
    # chars returns an array of characters
    # map returns a new array with the results of running the block once for every element
    @string.chars.map do |char|
      # Check if the character is a lowercase letter
      if char =~ /[a-z]/
        # 97 is the ASCII value for 'a'
        # ord returns the ASCII value of a character
        # chr returns the character of an ASCII value
        ((char.ord - 97 + @shift) % 26 + 97).chr
      # Check if the character is an uppercase letter
      elsif char =~ /[A-Z]/
        # 65 is the ASCII value for 'A'
        ((char.ord - 65 + @shift) % 26 + 65).chr
      else
        # If the character is not a letter, return it
        char
      end
      # Join the array of characters into a string
    end.join
  end

  def decode
    @string.chars.map do |char|
      if char =~ /[a-z]/
        ((char.ord - 97 - @shift) % 26 + 97).chr
      elsif char =~ /[A-Z]/
        ((char.ord - 65 - @shift) % 26 + 65).chr
      else
        char
      end
    end.join
  end
end
