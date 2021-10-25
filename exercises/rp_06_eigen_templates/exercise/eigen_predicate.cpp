#include "eigen_01_point_loading.h"
#include <iostream>
#include <fstream>

using namespace std;
using namespace std;

template <typename VectorType_>
struct PlaneSidePredicate_ {
  EIGEN_MAKE_ALIGNED_OPERATOR_NEW;
  using VectorType = VectorType_;
  VectorType _m; // store m;
  VectorType _n; // store n;
  PlaneSidePredicate_(const VectorType& m_,
                      const VectorType& n_){
    // TODO: hmmmm
    _m = m_;
    _n = n_;
  }
  
  inline bool operator()(const VectorType& p) const {
    //TODO: fillme
    using ScalarType = typename VectorType::Scalar;

    return ((p-_m).transpose()*_n) > ScalarType(0);
  }
};

template <typename IteratorType_, typename PredicateType_>
IteratorType_ split(IteratorType_ begin,
                    IteratorType_ end,
                    PredicateType_ predicate) {
  using ValueType    = typename IteratorType_::value_type;
  auto lower=begin;
  auto upper=std::make_reverse_iterator(end); 
  while (lower!=upper.base()) {
    ValueType& v_lower=*lower;
    ValueType& v_upper=*upper;
    if ( predicate(v_lower) ){
      ++lower;
    } else {
      std::swap(v_lower,v_upper);
      ++upper;
    }
  }
  return upper.base();
}


int main(int argc, char** argv) {
  /*if (argc<2)
    return -1;*/

  //std::ifstream is(argv[1]);
  std::ifstream is ("../../test_data/points_3d.dat");
  Vector3fVector points;
  Vector3f m;
  m.setZero();
  Vector3f n;
  n<<0,0,1; // split along z; //n<<1,0,0 split along x; // n<<0,1,0 split along y
  
  int num_points = loadPoints(points, is);
  cerr << "I read " << num_points << " from the stream " << endl;
  cout << "m: " << m << endl;
  cout << "n: " << n << endl;
  /*for(int i = 0;i<points.size(); i++){
    cout << "Point " << i << endl;
    cout << points.at(i) << endl;
  }*/

  cout << "Splitting..." << endl;
  split(points.begin(), points.end(), PlaneSidePredicate_<Vector3f>(m, n));
  savePoints(cerr, points);

  return 0;
}

