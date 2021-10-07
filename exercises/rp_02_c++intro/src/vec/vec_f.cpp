#include <iostream>
using namespace std;
struct VecF {
  int size; 
  float* v;

  float get(int i) { 
    return v[i];
  }

  void  set(int i,float f) {
    v[i]=f;
  }

  VecF() { 
    size=0; v=nullptr;
  }

  VecF(int size){
    this->size=size; 
    v=new float[size];
  }

  VecF(const VecF& other) {
    if (! other.size) return;
    size=other.size; v=new float[size];
    for (int i=0; i<size; ++i)
      v[i]=other.v[i];
  }
  ~VecF() {
    if (size) {
      delete [] v;
    }
  }


  VecF& operator =(const VecF& other) {
    if (size) {
      delete[] v;
    }

    size=0; 
    v=0;

    if (! other.size) {
      return *this;
    }

    size=other.size; 
    v=new float[size];

    for (int i=0; i<size; ++i) {
      v[i]=other.v[i];
    }
  }

  VecF operator +(const VecF& other) {
    VecF returned(*this);
    if(size==other.size){
      for (int i=0; i<size; ++i) {
        returned.v[i]= v[i]+other.v[i];
      }
    }
    else{
      cout << "Sizes are different" << endl;
    }
    return returned;
  }

  VecF operator -(const VecF& other) {
    VecF returned(*this);
    if(size==other.size){
      for (int i=0; i<size; ++i) {
        returned.v[i]= v[i]-other.v[i];
      }
    }
    else{
      cout << "Sizes are different" << endl;
    }
    return returned;
  }

  VecF operator *(int scalar) {
    VecF returned(*this);
    for (int i=0; i<size; ++i) {
      returned.v[i]= v[i]*scalar;
    }
    return returned;
  }

  int operator *(const VecF& other) {
    int prod = 0;
    for (int i=0; i<size; ++i) {
      prod+= v[i]*other.v[i];
    }
    return prod;
  }

  friend ostream& operator<<(ostream& os, const VecF& vec)
  {
    int size = vec.size;
    os << "[";
    for(int i=0; i<size;i++){
      os << vec.v[i];
      if(i!=size-1) {
        os << " , ";
        }  
    }
    os << "]";
    return os;
  }
};

void printArray(VecF v);

int main() {
  VecF v1(3);
  VecF v2(3);
  VecF v3(3);
  v1.set(0,1);
  v2.set(0,2);
  cout << "V1: " << v1 << endl;
  cout << "V2: " << v2 << endl;
  v3=v1+v2;
  cout << "V1+V2: " << v3 << endl;
  v3=v1-v2;
  cout << "V1-V2: " << v3 << endl;
  v3=v1*5;
  cout << "V1*5: " << v3 << endl;
  int a = v1*v2;
  cout << "V1*V2: " << a << endl;
  return 0;
}
