#include <iostream>
#include "ad.h"

using namespace std;

float f(const float& x, bool value_false_derivative_true=false) {
  // we cache the constants
  static const DualValuef _5=DualValuef(5);
  static const DualValuef _3=DualValuef(3);
  
  // convert to DualValue the linearization point;
  DualValuef _x(x);

  // if we want to compute the derivative, we need to set
  // to one the x' value on the item
  if (value_false_derivative_true)
    _x.derivative=1.f;
  // here we go with the calculation
  const DualValuef _y=cos(_5*_x)/(sin(exp(_x+_3)));

  // depending on what is asked we return either the value field
  // or the derivative field
  if (value_false_derivative_true) {
    return _y.derivative;
  } else
    return _y.value;
}

float f(const float& x, const float& y, bool derivative=false) {
  // we cache the constants
  DualValuef _2 = DualValuef(2);
  DualValuef _3 = DualValuef(3);
  DualValuef _4 = DualValuef(4);

  DualValuef _x=DualValuef(x);
  DualValuef _y=DualValuef(y);
  
  DualValuef result;

  if(derivative == true){
    result = (sin(_x)*cos(_y)/log(_2+sin(_x)));
  } else{
    DualValuef firstOperand = (cos(_2*_x))/(log(_2+sin(_x)));
    DualValuef secondOperand = (-sin(_3*_x) -sin(_x))/((_4*sin(_x)+8)*(log(sin(_x)+_2))*(log(sin(_x)+_2)));
    result = firstOperand+secondOperand;
  }

  return result;
}

int main() {
  float x=0.5;
  float y=f(x);
  float dy_dx=f(x,true);
  cout << "the value of f in " << x << " is: " << y << "its derivative is: " << dy_dx << endl;
  x=0.5;
  y=0.5;
  for(float i=-1; i<1.1; i=i+0.1){
    float z = f(i,i);
    float dz = f(i,i,true);
    cout << "I value: " << i << endl;
    cout << "Result: " << z << endl;
    cout << "Derivative: " << dz << endl;
    cout << "------------------------------------------" << endl;
  }
  return 0;
}
