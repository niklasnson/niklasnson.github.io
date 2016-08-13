---
layout: post
title: a simple calculator in c++
categories: [programming, example]
tags: [c++]
---

A simple calculator in c++. The result must be initialized with 0 to silent the
-Werror switch in the compiler. When we go into the switch state this will be uninititalized when
we hit 'default'.

{% highlight cpp %}
  #include <iostream>
  using namespace std;

  class Solution{
  public:
    Solution(){}
    void a_simple_calculator() {
      float a, b, result{0};
      char op;
      cout << "help: 10+10 or 20-10 or 5*5" << endl;
      cin >> a >> op >> b;
      switch (op)
      {
        case '+':
                result = a + b;
                break;
        case '-':
                result = a - b;
                break;
        case '*':
                result = a * b;
                break;
        case '/':
                result = a / b;
                break;
        default:
                cout << "Not possible to compute!" << endl;
      }
      cout << result << endl;
    }
  };

  int main() {
    Solution sol;
    sol.a_simple_calculator();
  }
{% endhighlight %}
