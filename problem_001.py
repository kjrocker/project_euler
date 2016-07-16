# Find the sum of all multiples of 3 and 5 below 1000
# Solved in: Python

import unittest

def three_or_five_below(num):
    threes = range(3,num,3)
    fives = range(5,num,5)
    full_set = list(set(threes) | set(fives))
    return sum(full_set)

class MyTest(unittest.TestCase):
    def test(self):
        self.assertEqual(three_or_five_below(10), 23)
        self.assertEqual(three_or_five_below(1000), 233168)

if __name__ == '__main__':
    unittest.main()
    #print three_or_five_below(1000)
