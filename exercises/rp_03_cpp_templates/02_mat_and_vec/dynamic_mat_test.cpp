#include <iostream>
#include "mat_f.h"
using namespace std;


/*
  Profile the same matrix expression
  X=C*(A*B+v*v.transpose())
  With A=3*2, b=2*3, C=3*3, v=3*1
  executing the calculation 1000000 times, with and without optimizations in the
  static and dynamic cases
*/
int main() {

  // TODO: fill here the stuff required for exercise 1
  MatF A(3,2);
  A.randFill();
  MatF B(2,3);
  B.randFill();
  MatF C(3,3);
  C.randFill();
  MatF v(3,1);
  v.randFill();


  MatF X(3,3);
  X.fill(0.f);
  for(int i=0;i<1000000;i++){
    X=C*(A*B+v*v.transpose());
  }
  cout << X << endl;
}
