add_executable(my_item_test
my_item_test.cpp)

add_library(my_library
  my_item.cpp
  binary_tree_template.cpp)

  target_link_libraries(my_item_test
  my_library)