#pragma once
#include <iostream>
using namespace std;

template<typename T>
struct Node{
    struct Node<T>* left;
    struct Node<T>* right;
    T value;
    public:

        Node();
        Node(T value);

        void setLeft(Node<T>* n);

        void setRight(Node<T>* n);

        Node<T>* getLeft();

        Node<T>* getRight();

        void setValue(T v);

        T getValue();

        void insert(T v);

        bool exists(T v);

        void remove(T v);
};
