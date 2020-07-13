for num in reversed (range(1,101)):
  if num % 3 == 0 and num % 5 == 0:
    print('Testing')
  elif num % 3 == 0 and num % 5 > 0:
    print('Software')
  elif num % 3 > 0 and num % 5 == 0:
    print('Agile')
  else:
    print(num) 
