#pragma once
#include "eigen_01_point_loading.h"
#include <Eigen/Core>
#include <Eigen/Eigenvalues>

using namespace std;
template <typename Iterator_>
int computeMeanAndCovariance(Eigen::Matrix<typename Iterator_::value_type::Scalar, Iterator_::value_type::RowsAtCompileTime, 1>& mean,
                             Eigen::Matrix<typename Iterator_::value_type::Scalar, Iterator_::value_type::RowsAtCompileTime, Iterator_::value_type::RowsAtCompileTime>& cov,
                             Iterator_ begin,
                             Iterator_ end) {
  using Scalar=typename Iterator_::value_type::Scalar;
  mean.setZero();
  cov.setZero();

  // TODO:
  // fill mean and covariance according to the formulas
  Iterator_ start = begin;
  int count = 0;
  for(start;start != end;start++){
    mean+=(*start);
    count++;
  }
  mean = mean/count;
  start = begin;
  count = 0;
  for(start;start != end;start++){
    
    cov+=((*start-mean)*((*start-mean).transpose()));
    count++;
  }
  cov = cov/(count-1);
  return 0;
}

// this invokes the Eigen functions to compute the eigenvalues of
// a symmetric matrix. We extract the largest EigenVector of the covariance
// which denotes the direction of highest variation.
template <typename SquareMatrixType_>
Eigen::Matrix<typename SquareMatrixType_::Scalar, SquareMatrixType_::RowsAtCompileTime, 1>
largestEigenVector(const SquareMatrixType_& m) {
  Eigen::SelfAdjointEigenSolver<SquareMatrixType_> es;
  es.compute(m);
  return es.eigenvectors().col(SquareMatrixType_::RowsAtCompileTime-1);
}
