---
layout: post
title: Solving the fizzbuzz problem in c++
categories: [programming, tips and tricks, solutions]
tags: [c++]
---

Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.  


{% highlight cpp %}
#include <iostream>
#include <string>

using namespace std;

class Solution {
public:
  void fizz_buzz()
  {
    for (int i = 1; i <= 100; i++)
    {
      string output;
      if (i % 3 == 0)
        output += "fizz";
      if (i % 5 == 0)
        output += "buzz";

      if (!output.empty())
        cout << output << endl;
      else
        cout << i << endl;
    }
  }
};

int main()
{
  Solution sol;
  sol.fizz_buzz();
  return 0;
}
{% endhighlight %}

But we could make a more compact code using the (conditional) ternary operator. The basic operations of this is:
(condition) ? (if_true) : (if_false)

{% highlight cpp %}
#include <iostream>
#include <string>

using namespace std;

class Solution {
public:
  void fizz_buzz_ternary()
  {
    for (int i = 1; i <= 100; i++)
    {
      string output;
      output += (i % 3 == 0) ? "fizz" : "";
      output += (i % 5 == 0) ? "buzz" : "";
      cout << (output.empty() ? to_string(i) : output) << endl;
    }
  }
};

int main()
{
  Solution sol;
  sol.fizz_buzz_ternary();
  return 0;
}
{% endhighlight %}
