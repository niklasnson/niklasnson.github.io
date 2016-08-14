---
layout: post
title: Working with options in c++
categories: [programming, tips and tricks]
tags: [c++]
---

Im currently working with a small application and needed to handle commandline options,
and was looking for a pritty quick and dirty way to handle this.

{% highlight cpp %}
#include <iostream>
#include <vector>
#include <string>

using namespace std;

class Modcom {
public:
  Modcom(int &argc, char **argv);
  ~Modcom();
  const string& get_command(const string &option);
  bool cmd_options_exists(const string &option);
private:
  vector<string> options;
};

Modcom::Modcom(int &argc, char **argv){
  for (int i=1; i < argc; ++i)
  {
    options.push_back(string(argv[i]));
  }
}
Modcom::~Modcom(){}

const string& Modcom::get_command(const string &option) {
  vector<string>::const_iterator it;
  it = find(options.begin(), options.end(), option);
  if (it != options.end() && ++it != options.end()) {
    return *it;
  }
  return "";
}

bool Modcom::cmd_options_exists(const string &option) {
  return find(options.begin(), options.end(), option)
                     != options.end();
}

int main(int argc, char **argv){
  Modcom modcom(argc, argv);
  if (modcom.cmd_options_exists("--help")) {
    cout << "do something cool with this function" << endl;
  }
}
{% endhighlight %}
