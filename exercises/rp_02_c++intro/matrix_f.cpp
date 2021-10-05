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

  MatrixF& operator +=(const MatrixF& other) {
    for (int i=0; i<rows; ++i) {
        for(int j=0; j<cols ; ++j){
            v[i][j]= v[i][j]+other.v[i][j];
        }
    }
  }

  MatrixF& operator -=(const MatrixF& other) {
    for (int i=0; i<rows; ++i) {
        for(int j=0; j<cols ; ++j){
            v[i][j]= v[i][j]-other.v[i][j];
        }
    }
  }

  MatrixF& operator *(const int scalar) {
    for (int i=0; i<rows; ++i) {
        for(int j=0; j<cols ; ++j){
            v[i][j]= v[i][j]* scalar;
        }
    }
  }

  MatrixF& operator *=(const float* vec) {
    /*for (int i=0; i<rows; ++i) {
        for(int j=0; j<cols ; ++j){
            v[i][j]= v[i][j]* scalar;
        }
    }*/
    float* out = new float[rows];
    for (int i = 0; i < rows; i++ )
    {
        out[i] = 0;
        for (int j = 0; j < cols; j++ ){
            out[i] += v[i][j] * vec[j];
        }
    }
    v = new float* [1];
    for(int i = 0; i < rows; ++i){
        v[i] = new float[cols];
    }

    for(int i=0; i < cols; ++i){
        v[0][i] = out[i];
    }
  }

  MatrixF& operator *=(const MatrixF& other){
      if(cols != other.rows){
        cout << "Matrix  multiplaction Not possible for the given matrices";
    } else {
        //define order of the resultant matrix 
        int res[rows][other.cols];
     
        //Multiply the elements of A and B
        for(int i=0; i<rows; i++){
            for(int j=0; j<other.cols; j++){
                int sum =0;
                for(int k=0; k<other.rows; k++){
                    sum += (v[i][k] * other.v[k][j]);
                }
                res[i][j] = sum;
            }
        }
        
        //output the resultant matrix
        /*cout << "Resultant Matrix: \n";
        for(int i=0; i<rows; i++){
            for(int j=0; j<other.cols; j++){
                cout << res[i][j] << "\t";
            }
            cout << "\n";
        }*/

        v=new float* [rows];
        for(int i = 0; i < rows; ++i){
            v[i] = new float[other.cols];
        }
        for (int i=0; i<rows; ++i){
            for (int j=0; j<other.cols; j++){
                v[i][j]=res[i][j];
            }
        }  
    }
  }
};

int main(){


    float vec[] = {1,2};
    MatrixF m(2,2);
    m.set(0,0,1);
    m.set(0,1,2);
    m.set(1,0,3);
    m.set(1,1,4);

    //cout << m.get(0,0) << " " << m.get(0,1) << endl;
    //cout << m.get(1,0) << " " << m.get(1,1) << endl;
    //cout << m.get(0,0) << " " << m.get(0,1) << endl;
    //cout << m.get(1,0) << " " << m.get(1,1) << endl;
    //cout << endl;
    MatrixF m2 = m;
    m*=m2;
    /*cout << m2.get(0,0) << " " << m2.get(0,1) << endl;
    cout << m2.get(1,0) << " " << m2.get(1,1) << endl;

    cout << endl;
    m*5;*/
    cout << m.get(0,0) << " " << m.get(0,1) << endl;
    cout << m.get(1,0) << " " << m.get(1,1) << endl;
    return 0;
}