#include <iostream>
using namespace std;

struct MatrixF {
  int rows;
  int cols; 
  float** v;

  float get(int i, int j) { 
    return v[i][j];
  }

  void  set(int i,int j, float f) {
    v[i][j]=f;
  }

  MatrixF() { 
    rows=0; 
    cols=0;
    v =new float* [0];
  }

  MatrixF(int rows,const int cols){
    this->rows=rows; 
    this->cols=cols;
    v=new float* [rows];
    for(int i = 0; i < rows; ++i){
        v[i] = new float[cols];
    }
  }

  MatrixF(const MatrixF& other) {
    if (! other.cols && ! other.rows) {
        return;
    }

    cols=other.cols; 
    rows = other.rows;
    v=new float* [rows];
    for(int i = 0; i < rows; ++i){
        v[i] = new float[cols];
    }
    for (int i=0; i<rows; ++i){
        for (int j=0; j<cols; j++){
            v[i][j]=other.v[i][j];
        }
    }  
  }
  ~MatrixF() {
    if (rows && cols) {
      delete [] v;
    }
  }

  MatrixF operator +(const MatrixF& other) {
    MatrixF returned(*this);
    for(int i=0; i<rows; i++) {
        for(int j=0; j<cols ; j++){
            returned.v[i][j]= v[i][j]+other.v[i][j];
        }
    }
    return returned;
  }

  MatrixF operator -(const MatrixF& other) {
    MatrixF returned(*this);
    for(int i=0; i<rows; i++) {
        for(int j=0; j<cols ; j++){
            returned.v[i][j]= v[i][j]-other.v[i][j];
        }
    }
    return returned;
  }

  MatrixF operator *(const int scalar) {
    MatrixF returned(*this);
    for(int i=0; i<rows; i++) {
        for(int j=0; j<cols ; j++){
            returned.v[i][j]= v[i][j]+scalar;
        }
    }
    return returned;
  }

  float* operator *(const float* vec) {
    float* out = new float[rows];
    for (int i = 0; i < rows; i++ )
    {
        out[i] = 0;
        for (int j = 0; j < cols; j++ ){
            out[i] += v[i][j] * vec[j];
        }
    }
    return out;
  }

  MatrixF operator *(const MatrixF& other){
    if(cols != other.rows){
        cout << "Matrix  multiplaction Not possible for the given matrices";
    } else {
        //define order of the resultant matrix 
        MatrixF returned(rows,other.cols);
     
        //Multiply the elements of A and B
        for(int i=0; i<rows; i++){
            for(int j=0; j<other.cols; j++){
                int sum =0;
                for(int k=0; k<other.rows; k++){
                    sum += (v[i][k] * other.v[k][j]);
                }
                returned.v[i][j] = sum;
            }
        }
        return returned;
    }
  }

  friend ostream& operator<<(ostream& os, const MatrixF& other)
  {
    int r = other.rows;
    int c = other.cols;
    os << "\n";
    for(int i=0; i<r;i++){
        os << "[";
        for(int j=0; j<c;j++){
            os << other.v[i][j];
            if(j<c-1) os << ",";
        }
        os << "]\n";
    }
    return os;
  }
};

int main(){


    float vec[] = {1,2};
    MatrixF m1(2,2);
    m1.set(0,0,1);
    m1.set(0,1,2);
    m1.set(1,0,3);
    m1.set(1,1,4);
    MatrixF m2(2,2);
    m2.set(0,0,5);
    m2.set(0,1,6);
    m2.set(1,0,7);
    m2.set(1,1,8);
    //MatrixF m3(2,2);
    cout << "TEST: " << m1 << m2;
    MatrixF m3 = m1+m2;
    cout << endl << "M1+M2:" << m1+m2;
    cout << endl << "M1-M2:" << m1-m2;
    cout << endl << "M1*5:" << m1*5;
    float* res = m1*vec;
    cout << res[0] << " " << res[1] << endl;
    cout << endl << "M1*M2:" << m1*m2;
    //cout << m1.cols << endl;
    //cout << m1;
    //cout << "M1+M2: " << m3;
    return 0;
}