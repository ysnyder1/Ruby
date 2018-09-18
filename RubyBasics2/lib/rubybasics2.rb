# Strings and Regular Expressions

# Part I
def hello(name)
  return "Hello, " + name
end

# Part II
def starts_with_consonant? s
  if /^[^\W_AEIOUaeiou]/ =~ s
    return true
  end
  return false
end

# Part III
def binary_multiple_of_4? s
  if /^[01]*[^1]$/  =~ s
    return true
  end 
  return false
end
