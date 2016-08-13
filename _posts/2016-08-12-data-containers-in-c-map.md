---
layout: post
title: Data containers in c++ - Map
categories: [programming, tips and tricks]
tags: [c++, datacontainers, map]
---

#Map

{% highlight cpp %}
std::map<int, char> data_cf{
  { 1, 'A' },
  { 2, 'B' }
};
{% endhighlight %}

###Iterators:

{% highlight cpp %}
  for (std::map<int,char>::iterator it=data_cf.begin(); it != data_cf.end(); ++it)
    cout << it -> first << " " << it -> second << endl;
{% endhighlight %}

{% highlight cpp %}
  for (auto item : data_cf)
    cout << item.first << " " <<  item.second << endl;
{% endhighlight %}

###Finding elements:

This way we will find element on the key value:
{% highlight cpp %}
  auto it = data_cf.find (3);
  if (it != data_cf.end())
    cout << it->first << endl;
{% endhighlight %}

This way we can search on keys: 
{% highlight cpp %}
{% endhighlight %}


{% highlight ruby %}
# include <iostream>
int main()
{
std:: cout << 'My first C++ program' << std::endl;
return 0;
}
{% endhighlight %}


You’ll find this post in your `_posts` directory
