#include <fstream>
#include <vector>
#include <iostream>
#include <cassert>
#include <algorithm>

using namespace std;

using IntVector=std::vector<int>;

int main(int argc, char** argv) {
  ifstream is("../../test_data/int_test_data.txt");
  if ( !is.is_open() )
    {
        cout<<"Could not open file!"<<'\n';
    }
  IntVector values;
  int a;
  while (is) {
    is >> a;
    values.push_back(a);
  }
  
  std::sort(values.begin(), values.end());
  for(int val : values){
    cout << "Sorted Vector: " << val << endl;
  }
}
