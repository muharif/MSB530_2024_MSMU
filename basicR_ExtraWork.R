## This is the extra/make-up work that you can do (optional) to complement your previous submission
## If you are ok with your previous submission, you don't have to do this, as it will not add more points (max 5 points)
## But in any case, I still suggest you to attempt this to try. Because practice makes perfect, right? :)

## Question 1
# Create a function to count the number of sentences in a given paragraph
# hint: split the string (think about the right separator and how to express them, sub-hint: you may need an "escape character" backslash or charclass) 
# hint 2: unlist or get the first list of list, loop, counter
# Refer the exercises that twe did together in the class e.g. Question 5

count_sentences_in_paragraph <- function(paragraph){
  #WRITE YOUR CODE HERE

  return(number_of_sentences)
}

count_sentences_in_paragraph('I live in Maryland. I like it here. It is very green.') == 3
count_sentences_in_paragraph('We will have more programming session. It will be fun.') == 2

## Question 2
# Create a function to check whether someone can legally purchase alcoholic beverages in Maryland based on age
# (legal age in MD is 21)
# the output should say "This person is/is not allowed to purchase alcoholic beverages"

legal_alcohol <- function(age){
  #WRITE YOUR CODE HERE
  
  return(result)
}

legal_alcohol(22) == "This person is allowed to purchase alcoholic beverages"
legal_alcohol(18) == "This person is not allowed to purchase alcoholic beverages"
legal_alcohol(21) == "This person is allowed to purchase alcoholic beverages"

## Question 3
# Create a function to find the position of a letter in the alphabet
# hint 1: use variable predefined "letters" and "LETTERS" to check if the input is upper or lower case (if .. else ..)
#hint 2: use "%in%" to check whether the input is in "letters" or "LETTERS"
#hint 3 (option 1): use for loop and counter to find the position.
#hint 3 (option 2): use "which" function, e.g. which(letters == 'a') or which(LETTERS == 'A')
# Refer to previous exercises, e.g. Question 8 for how to use %in%

#you can use letters and LETTERS variables inside the function, you don't need to redefine it again
letters # this predefined variable "letters" is a vector with all lowercase letters in order (try to execute it and see)
LETTERS # this predefined variable "LETTERS" is a vector with all UPPERCASE letters in order (try to execute it and see)

index_in_alphabets <- function(letter){
  #WRITE YOUR CODE HERE
  
  return(index)
}

index_in_alphabets('Z') == 26
index_in_alphabets('j') == 10
index_in_alphabets('E') == 5
index_in_alphabets('m') == 13

## Question 4
# Create a function to convert miles to kilometers
# hint: 1mi = 1.609 km

miles_to_km <- function(miles){
  #WRITE YOUR CODE HERE
  
  return(km)
}

miles_to_km(1) == 1.609
miles_to_km(10) == 16.09
miles_to_km(20) == 32.18

## Question 5
# Create a function to convert kilometers to miles AND feet
# hint 1: 1mi = 1.609 km, 1km = 3280.84 ft 
# hint 1: use integral division operator ("%/%") by 1.609 to get the closest round (integer) miles
# hint 2: use modulo operator ("%%") by 1.609 to get the remainder then multiply it by 3280.84 to get the feet
# hint 3: combine the numbers and units using paste

km_to_miles_and_ft <- function(km){
  #WRITE YOUR CODE HERE

  
  return(result)
}

km_to_miles_and_ft(1.609) == "1 miles and 0 feet"
km_to_miles_and_ft(1) == "0 miles and 3290.84 feet"
km_to_miles_and_ft(100) == "62 miles and 796.383280000003 feet"

