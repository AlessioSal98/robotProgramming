#include <iostream>
#include "binary_tree_template.h"
using namespace std;

template<typename T>
Node<T>::Node(){
    this->value = NULL;
    left = NULL;
    right = NULL;
}

template<typename T>
Node<T>::Node(T value){
    this->value = value;
    left = NULL;
    right = NULL;
}

template<typename T>
void Node<T>::setLeft(Node<T>* n){
    this->left = n;
}

template<typename T>
void Node<T>::setRight(Node<T>* n){
    this->right = n;
}

template<typename T>
Node<T>* Node<T>::getLeft(){
    return left;
}

template<typename T>
Node<T>* Node<T>::getRight(){
    return right;
}

template<typename T>
void Node<T>::setValue(T v){
    this->value = v;
}

template<typename T>  
T Node<T>::getValue(){
    return this->value;
}

template<typename T>
void Node<T>::insert(T v){
    if(v > value){
        if(right == NULL){
            right = new Node<T>(v);
        }else{
            right->insert(v);
        }
    }else if(v < value){
        if(left == NULL){
            left = new Node<T>(v);
        }else{
            left->insert(v);
        }
    }
}

template<typename T>
bool Node<T>::exists(T v){
    bool exists = false;
    if(v > value){
        if(right != NULL){
            exists = right->exists(v);
        }
    }else if(v < value){
        if(left != NULL){
            exists = left->exists(v);
        }
    }else{
        exists = true;
    }
    return exists;
}

template<typename T>
void Node<T>::remove(T v){
    if(v > value){
        if(right != NULL){
            if(right->getValue()==v){
                right = NULL;
            }else{
                right->remove(v);
            }
        }
    }else if(v < value){
        if(left != NULL){
            if(left->getValue()==v){
                left = NULL;
            }else{
                left->remove(v);
            }
        }
    }
}
