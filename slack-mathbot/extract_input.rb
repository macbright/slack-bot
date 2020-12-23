class Methods
  def self.extract_input(input)
    regx = /\A[-+]?\d+\z/
    result = []
    n = ''
    for i in 0...input.length do 
      if regx.match(input[i]) != nil
        n += input[i]
      else
        result << n if n != ''
        result << input[i]
        n = ''
      end
    end
    result << n
    result 
  end
end
