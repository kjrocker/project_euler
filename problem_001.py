# Find the sum of all multiples of 3 and 5 below 1000
# Solved in: Python

def three_or_five_below(num):
    threes = range(3,num,3)
    fives = range(5,num,5)
    full_set = list(set(threes) | set(fives))
    return sum(full_set)

print three_or_five_below(1000)
