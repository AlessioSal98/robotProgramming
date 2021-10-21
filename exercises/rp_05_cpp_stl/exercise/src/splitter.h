#pragma once

template <typename IteratorType_, typename PredicateType_>
IteratorType_ split(IteratorType_ begin, IteratorType_ end, const PredicateType_& predicate) {
  // this represents the type of the element contained
  using ValueType = typename IteratorType_::value_type;
  // this represents the type of the iterator
  using IteratorType = IteratorType;

  // our game is the following
  // we have an iterator in front, which we move forward
  // let's call it "lower"
  IteratorType lower=begin;
  auto lower=std::make_reverse_iterator(end);
  
  while (lower!=upper.base()) {
    ValueType& v_lower=*lower;
    ValueType& v_upper=*upper;
    if ( predicate(v_lower) ){
      // todo anything to write here?
      ++lower;
    } else {
      // todo: anything to write here?
      std::swap(lower,upper);
      ++upper; // incrementing a reverse iterator goes backwards
    }
  }
  return upper.base();

  
}

