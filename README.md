# devtest

Time box this exercise to 30 minutes.

- Complete the match method in the ParenthesesMatcher class. The match method takes in a string, and the index of an opening parentheses. The method needs to return the index of the matching parentehses. If the given index is not to an open parentheses, or there is no matching parentheses, return -1. See examples below.
- Run 'rspec test.rb' to ensure the tests pass
- Submit a pull request when you are done.

Example: 

> ParenthesesMatcher.match("(())", 1) => 2

The given index is for the second parentheses. The matching is the closing parentheses at index 2.


> ParenthesesMatcher.match("(())", 0) => 3

The given index is for the first parentheses. The matching is the last closing parentheses at index 3.


> ParenthesesMatcher.match("asdf", 0) => -1

The given index is not an opening parentheses. Return -1.


> ParenthesesMatcher.match("(()", 0) => -1

The given index does not have a matching parentheses. Return -1.
