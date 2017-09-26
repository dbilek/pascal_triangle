module MainHelpers
  def pluralize(number,string)
    string = string + "s" if number > 1
    string  
  end
end
