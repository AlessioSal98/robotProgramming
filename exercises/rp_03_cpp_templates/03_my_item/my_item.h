#pragma once
#include <iostream>
#include <string>

using namespace std;
struct MyItem {

    float f;
    double d;
    string s;
    //default ctor
    MyItem();

    MyItem(float f,double d,string s);

    // copy ctor
    MyItem(const MyItem& other);

    //dtor
    ~MyItem();  

    bool operator<(const MyItem& i) const;
    bool operator>(const MyItem& i) const;
    bool operator==(const MyItem& i) const;
};

std::ostream& operator << (std::ostream& os, const MyItem& i);
