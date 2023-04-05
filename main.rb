def character(x)
  arraySymbols=['.-','-...','-.-.','-..','.','..-.','--.','....','..',
  '.---','-.-.','.-..','--','-.','---','.--.','--.-','.-.','...','-','..-',
  '...-','.--','-..-','-.--','--..']
  arrayLetters=['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
  counter=0
  arraySymbols.each { |n|
    
    if(n===x)
      return arrayLetters[counter]
    end
    counter = counter + 1    
    }
end

def word(x)
  arr = x.split
  result = ''
  arr.each{
    |letter|
    result += character(letter);
  }
  return result
end

def phrase(x)
  arrWords = x.split('   ', -1)
  result = ''
  arrWords.each{
    |element|
    result += word(element) + " ";
  }
  return result
end
