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

  VecF& operator +=(const VecF& other) {
    for (int i=0; i<size; ++i) {
      v[i]= v[i]+other.v[i];
    }
  }

  VecF& operator -=(const VecF& other) {
    for (int i=0; i<size; ++i) {
      v[i]= v[i]-other.v[i];
    }
  }

  VecF& operator *(int scalar) {
    for (int i=0; i<size; ++i) {
      v[i]= v[i]*scalar;
    }
  }

  int operator *(const VecF& other) {
    int prod = 0;
    for (int i=0; i<size; ++i) {
      prod+= v[i]*other.v[i];
    }
    cout << "RISULTATO: " << prod << endl;
  }
};

void printArray(VecF v);

int main() {
  VecF v5(5);
  v5.set(0,0.1);
  cout << "V5 before: ";
  printArray(v5);
  v5.set(1,0.2);
  cout << "V5 after: ";
  printArray(v5);

  VecF v7(v5); //(copy ctor)
  cout << "V7 : ";
  printArray(v7);

  VecF v8(5);
  //VecF v8=v5;  //(copy ctor)
  cout << "V8 : ";
  printArray(v8);

  v8=v7;       // op=   
  cout << "V8 after equal operator: ";
  printArray(v8);
  VecF v1(5);
  VecF v2(5);
  VecF v3(5);
  v1.set(0, 1);
  v1.set(1, 2);
  v1.set(2, 3);
  v2.set(0, 1);
  v2.set(1, 2);
  v2.set(2, 5);
  v2.set(4, 4);
  v3.set(0, 2);
  v3.set(1, 2);
  v3.set(2, 3);
  printArray(v1);
  printArray(v2);
  printArray(v3);
  v1+=v2;
  printArray(v1);

  printArray(v2);
  printArray(v3);
  v2-=v3;
  printArray(v2);
  v2*2;
  printArray(v2);

  v1*v2;
  printArray(v1);
  printArray(v2);
  return 0;
}

void printArray(VecF v){
  int size = v.size;
  cout << "[";
  for(int i=0; i<size;i++){
     cout << v.get(i);
     if(i!=size-1) {
       cout << " , ";
      }  
  }
  cout << "]\n";
}
