=begin
problem
Write a method that determines the mean (average) of the three scores passed to it,
and returns the letter value associated with that grade.

Numerical Score Letter	Grade
90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'
Tested values are all between 0 and 100.
There is no need to check for negative values or values greater than 100.

Example:
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

dsa
var 'average' equals sum of input nums
divided by count of nums
case statement to return letter grade
next time use a range : )

=end

def get_grade(score1, score2, score3)
  average_score = (score1 + score2 + score3) / 3
  case
  when average_score >= 90 && average_score <= 100 #(90..100).include?(average_score)
    "A"
  when average_score >= 80 && average_score <= 90
    "B"
  when average_score >= 70 && average_score <= 80
    "C"
  when average_score >= 60 && average_score <= 70
    "D"
  when average_score >= 0 && average_score <= 60
    "F"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
