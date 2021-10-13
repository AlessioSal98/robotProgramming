#include "my_item.h"
#include <iostream>

using namespace std;

//default ctor
MyItem::MyItem():
    f(1),
    d(1),
    s("1"){
  
}

// ctor with dim
MyItem::MyItem(float f,double d,string s):
  f(f),
  d(d),
  s(s){
}

// copy ctor
MyItem::MyItem(const MyItem& other)
{
  f = other.f;
  d = other.d;
  s = other.s;
}

//dtor
MyItem::~MyItem() {
}

bool MyItem::operator <(const MyItem& i) const{
    bool result = false;
    if((f<i.f) || (f==i.f && d<i.d) || (f==i.f && d==i.d && s<i.s)){
        result = true;
    }
    return result;
}

bool MyItem::operator >(const MyItem& i) const{
    bool result = false;
    if((f>i.f) || (f==i.f && d>i.d) || (f==i.f && d==i.d && s>i.s)){
        result = true;
    }
    return result;
}

bool MyItem::operator ==(const MyItem& i) const{
    bool result = false;
    if(f==i.f && d==i.d && s==i.s){
        result = true;
    }
    return result;
}


ostream& operator << (ostream& os, const MyItem& i) {
  os << endl << "f: " << i.f << endl << "d: " << i.d << endl << "s: " << i.s << endl;
  return os;
}

