#include <iostream>
#include "static_mat.h"
#include <unistd.h>
using namespace rp;
using namespace std;

/*
  Profile the same matrix expression
  X=C*(A*B+v*v.transpose())
  With A=3*2, b=2*3, C=3*3, v=3*1
  executing the calculation 1000000 times, with and without optimizations in the
  static and dynamic cases
*/

using Vec3f=Vec_<float, 3>;
using Mat3f=Mat_<float, 3,3>;
using Mat3_4f=Mat_<float, 3,4>;

int main() {

  // TODO FILL_HERE_THE_STUFF_FOR_EXERCISE_1
  Mat_<float, 3,3> A;
  randFill(A);
  cout << "A: " << A << endl;
  Mat_ <float, 3,2> B;
  randFill(B);
  cout << "B: " << B << endl;
  Mat_ <float, 2,3> C;
  randFill(C);
  cout << "C: " << C << endl;
  Mat_ <float, 3,1> v;
  randFill(v);
  cout << "v: " << v << endl;

  Mat_<float, 3,3> X;
  for (int i=0; i<100000000; ++i) {
    X=A*(B*C+v*v.transpose());
  }
  cout << X;
}
